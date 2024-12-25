import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart' as prefs;
import 'package:sp_util/sp_util.dart';

import 'package:reaeeman/core/localization/translations.dart';
import 'package:reaeeman/core/router/router.dart';
import 'package:reaeeman/features/login/widget/forgot_password_page.dart';

bool _debugAccessibility = false;

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(translationsProvider);
    final router = ref.watch(routerProvider);

    final _emailController = useTextEditingController();
    final _passwordController = useTextEditingController();
    final _inviteCodeController = useTextEditingController();
    final _emailCodeController = useTextEditingController();
    final isRegistering = useState<bool>(false);
    final loadingState = useState<bool>(false);
    final _obscurePassword = useState<bool>(true);

    Future<void> _baseUrl() async {
      await SpUtil.getInstance();

      try {
        final baseResponse = await http.get(
          // Uri.parse(
          //     'https://gitcode.net/-/snippets/4804/raw/master/oss/config.json'),
          Uri.parse(
              'https://raw.githubusercontent.com/Su-Zxllc/RM/main/index.json'),
        );

        if (baseResponse.statusCode == 200) {
          final decodedData =
              json.decode(baseResponse.body) as Map<String, dynamic>;

          SpUtil.putObject('baseUrl', decodedData);

          final siteResponse = await http.get(
            Uri.parse('${decodedData['api']}/api/v1/guest/comm/config'),
          );

          if (siteResponse.statusCode == 200) {
            final siteData =
                json.decode(siteResponse.body) as Map<String, dynamic>;

            SpUtil.putObject('siteConfig', siteData['data']);

            return siteData['data'];
          }
        }
      } catch (e) {
        // Handle network request error
      }
    }

    Future<void> _login() async {
      loadingState.value = true;

      await _baseUrl(); // Add this line to fetch baseUrl first

      SpUtil.getInstance();

      final baseUrlObj = SpUtil.getObject('baseUrl');
      if (baseUrlObj == null || baseUrlObj['api'] == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('请先设置服务器地址')),
        );
        loadingState.value = false;
        return;
      }

      final baseUrl = baseUrlObj['api'] as String;

      try {
        final loginResponse = await http.post(
          Uri.parse(baseUrl + '/api/v1/passport/auth/login'),
          body: {
            'email': _emailController.text,
            'password': _passwordController.text,
          },
        );

        if (loginResponse.statusCode == 200) {
          final token =
              json.decode(loginResponse.body)['data']['auth_data'] as String;

          // 使用 SharedPreferences 持久化存储登录状态和 token
          final sharedPrefs = await prefs.SharedPreferences.getInstance();
          await sharedPrefs.setString('token', token);
          await sharedPrefs.setBool('isLoggedIn', true);

          // 同时保持 SpUtil 的存储以保证当前会话的正常运行
          SpUtil.putString("token", token);
          SpUtil.putString("login", "true");

          print(token);

          print(context);

          final userResponse = await http.get(
            Uri.parse(baseUrl + '/api/v1/user/info'),
            headers: {'Authorization': token!},
          );

          if (userResponse.statusCode == 200) {
            final user =
                json.decode(userResponse.body)['data'] as Map<String, dynamic>;

            SpUtil.putObject('user', user);

            print(user);

            GoRouter.of(context).replace('/');
          } else {
            // Handle login failure
          }
        } else {
          // Handle login failure
          final errors = json.decode(loginResponse.body)?['errors'];
          String errorMessage = '${t.error.title}：';

          if (errors != null) {
            if (errors['email'] != null) {
              errorMessage += '\n${t.error.field.email}: ${errors['email']}';
            }
            if (errors['password'] != null) {
              errorMessage +=
                  '\n${t.error.field.password}: ${errors['password']}';
            }
          } else {
            errorMessage = json.decode(loginResponse.body)['message'] as String;
          }

          final snackBar = SnackBar(
            content: Text(errorMessage),
            duration: Duration(seconds: 3),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      } catch (e) {
        // Handle network request error
      }

      loadingState.value = false;
    }

    Future<void> _register() async {
      // SpUtil.getInstance();

      final baseUrlObj = SpUtil.getObject('baseUrl');
      if (baseUrlObj == null || baseUrlObj['api'] == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('请先设置服务器地址')),
        );
        return;
      }

      final baseUrl = baseUrlObj['api'] as String;

      // 检查 email 和 password 是否为空
      if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
        final snackBar = SnackBar(
          content: Text('邮箱和密码不能为空'),
          duration: Duration(seconds: 3),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        return;
      }

      try {
        final registerResponse = await http.post(
          Uri.parse(baseUrl + '/api/v1/passport/auth/register'),
          body: {
            'email': _emailController.text,
            'password': _passwordController.text,
            'invite_code': _inviteCodeController.text,
            'email_code': _emailCodeController.text,
            // 'invite_code': _inviteCodeController.text.isNotEmpty
            //     ? _inviteCodeController.text
            //     : null,
            // 'email_code': _emailCodeController.text.isNotEmpty
            //     ? _emailCodeController.text
            //     : null,
          },
        );

        if (registerResponse.statusCode == 200) {
          final token =
              json.decode(registerResponse.body)['data']['auth_data'] as String;

          SpUtil.putString("token", token);
          SpUtil.putString("login", "true");

          print(token);

          print(context);

          final userResponse = await http.get(
            Uri.parse(baseUrl + '/api/v1/user/info'),
            headers: {'Authorization': token!},
          );

          if (userResponse.statusCode == 200) {
            final user =
                json.decode(userResponse.body)['data'] as Map<String, dynamic>;

            SpUtil.putObject('user', user);

            print(user);

            // 在登录成功后再将 isRegistering 的值设为 false
            isRegistering.value = false;

            GoRouter.of(context).replace('/');
          } else {
            // Handle login failure
          }
        } else {
          // Handle login failure
          final errors = json.decode(registerResponse.body)?['errors'];
          String errorMessage = '${t.error.title}：';

          if (errors != null) {
            if (errors['email'] != null) {
              errorMessage += '\n${t.error.field.email}: ${errors['email']}';
            }
            if (errors['password'] != null) {
              errorMessage +=
                  '\n${t.error.field.password}: ${errors['password']}';
            }
          } else {
            errorMessage =
                json.decode(registerResponse.body)['message'] as String;
          }

          final snackBar = SnackBar(
            content: Text(errorMessage),
            duration: Duration(seconds: 3),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          // final snackBar = SnackBar(
          //   content: Text(
          //       json.decode(registerResponse.body)?['message'] as String ??
          //           '邮箱或密码错误'),
          //   duration: Duration(seconds: 3),
          // );

          // ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      } catch (e) {
        // Handle network request error
      }
    }

    Future<void> _sendEmailVerify() async {
      SpUtil.getInstance();

      final baseUrlObj = SpUtil.getObject('baseUrl');
      if (baseUrlObj == null || baseUrlObj['api'] == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('请先设置服务器地址')),
        );
        return;
      }

      final baseUrl = baseUrlObj['api'] as String;

      try {
        final emailResponse = await http.post(
          Uri.parse(baseUrl + '/api/v1/passport/comm/sendEmailVerify'),
          body: {
            'email': _emailController.text,
          },
        );

        if (emailResponse.statusCode == 200) {
          final snackBar = SnackBar(
            content: Text('发送成功'),
            duration: Duration(seconds: 3),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);

          final email = json.decode(emailResponse.body)['data'] as String;

          // final snackBar = SnackBar(
          //   content: Text('发送成功'),
          //   duration: Duration(seconds: 3),
          // );

          // ScaffoldMessenger.of(context).showSnackBar(snackBar);

          // return;
        } else {}
      } catch (e) {
        // Handle network request error
      }
    }

    final siteConfig = SpUtil.getObject('siteConfig') != null
        ? SpUtil.getObject('siteConfig') as Map<String, dynamic>
        : <String, dynamic>{};

    final colorScheme = Theme.of(context).colorScheme;

    // 禁用返回手势
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 48), // 添加顶部间距
                      // Logo and Title
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/tray_icon.png',
                            width: 80,
                            height: 80,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'ReaeemanVPN',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            isRegistering.value
                                ? t.login.title.register
                                : t.login.title.login,
                            style: TextStyle(
                              fontSize: 16,
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 64), // 增加logo和输入框之间的间距

                      // Form Fields
                      TextField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        decoration: InputDecoration(
                          labelText: t.login.email.label,
                          hintText: t.login.email.hint,
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: colorScheme.outline.withOpacity(0.5),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: colorScheme.primary,
                              width: 2,
                            ),
                          ),
                          filled: true,
                          fillColor:
                              colorScheme.surfaceVariant.withOpacity(0.3),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: _passwordController,
                        obscureText: _obscurePassword.value,
                        keyboardType: TextInputType.visiblePassword,
                        autocorrect: false,
                        decoration: InputDecoration(
                          labelText: t.login.password.label,
                          hintText: isRegistering.value
                              ? t.login.password.hint.register
                              : t.login.password.hint.login,
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword.value
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: colorScheme.onSurfaceVariant,
                            ),
                            onPressed: () => _obscurePassword.value =
                                !_obscurePassword.value,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: colorScheme.outline.withOpacity(0.5),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: colorScheme.primary,
                              width: 2,
                            ),
                          ),
                          filled: true,
                          fillColor:
                              colorScheme.surfaceVariant.withOpacity(0.3),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Registration Fields
                      ValueListenableBuilder<bool>(
                        valueListenable: isRegistering,
                        builder: (context, isRegistering, child) {
                          return AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            child: isRegistering
                                ? Column(
                                    children: [
                                      TextField(
                                        controller: _inviteCodeController,
                                        keyboardType: TextInputType.text,
                                        autocorrect: false,
                                        decoration: InputDecoration(
                                          labelText: t.login.inviteCode.label,
                                          hintText: t.login.inviteCode.hint,
                                          prefixIcon: Icon(
                                              Icons.card_giftcard_outlined),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                              color: colorScheme.outline
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: BorderSide(
                                              color: colorScheme.primary,
                                              width: 2,
                                            ),
                                          ),
                                          filled: true,
                                          fillColor: colorScheme.surfaceVariant
                                              .withOpacity(0.3),
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      FutureBuilder(
                                        future: _baseUrl(),
                                        builder: (BuildContext context,
                                            AsyncSnapshot snapshot) {
                                          if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return const SizedBox(
                                              height: 56,
                                              child: Center(
                                                  child:
                                                      CircularProgressIndicator()),
                                            );
                                          } else if (snapshot.hasError) {
                                            return Text(
                                              'Error: ${snapshot.error}',
                                              style: TextStyle(
                                                  color: colorScheme.error),
                                            );
                                          } else {
                                            return snapshot.data[
                                                        'is_email_verify'] ==
                                                    1
                                                ? TextField(
                                                    controller:
                                                        _emailCodeController,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    autocorrect: false,
                                                    decoration: InputDecoration(
                                                      labelText: t.login
                                                          .emailCode.label,
                                                      hintText: t
                                                          .login.emailCode.hint,
                                                      prefixIcon: Icon(Icons
                                                          .verified_user_outlined),
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        borderSide: BorderSide(
                                                          color: colorScheme
                                                              .outline
                                                              .withOpacity(0.5),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        borderSide: BorderSide(
                                                          color: colorScheme
                                                              .primary,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      filled: true,
                                                      fillColor: colorScheme
                                                          .surfaceVariant
                                                          .withOpacity(0.3),
                                                      suffixIcon: TextButton(
                                                        onPressed: () =>
                                                            _sendEmailVerify(),
                                                        child: Text(t.login
                                                            .emailCode.send),
                                                      ),
                                                    ),
                                                  )
                                                : const SizedBox.shrink();
                                          }
                                        },
                                      ),
                                    ],
                                  )
                                : const SizedBox.shrink(),
                          );
                        },
                      ),

                      const Spacer(),

                      // Login/Register Button
                      ValueListenableBuilder<bool>(
                        valueListenable: isRegistering,
                        builder: (context, isRegistering, child) {
                          return FilledButton(
                            onPressed: loadingState.value
                                ? null
                                : (isRegistering ? _register : _login),
                            style: FilledButton.styleFrom(
                              backgroundColor: colorScheme.primary,
                              minimumSize: const Size(double.infinity, 56),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: ValueListenableBuilder<bool>(
                              valueListenable: loadingState,
                              builder: (context, isLoading, child) {
                                return isLoading
                                    ? SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          color: colorScheme.onPrimary,
                                        ),
                                      )
                                    : Text(
                                        isRegistering
                                            ? t.login.action.register
                                            : t.login.action.login,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      );
                              },
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 16),

                      // 分隔线和社交登录按钮
                      Row(
                        children: [
                          Expanded(
                              child: Divider(
                                  color: colorScheme.outline.withOpacity(0.5))),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              t.login.orLoginWith,
                              style: TextStyle(
                                color: colorScheme.onSurfaceVariant,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Expanded(
                              child: Divider(
                                  color: colorScheme.outline.withOpacity(0.5))),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // 社交登录按钮
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Google登录按钮
                          OutlinedButton.icon(
                            onPressed: () {
                              // TODO: 实现Google登录
                            },
                            icon: Icon(Icons.g_mobiledata, size: 24),
                            label: const Text('Google'),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              side: BorderSide(
                                  color: colorScheme.outline.withOpacity(0.5)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          // Apple登录按钮
                          OutlinedButton.icon(
                            onPressed: () {
                              // TODO: 实现Apple登录
                            },
                            icon: Icon(Icons.apple, size: 24),
                            label: const Text('Apple'),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              side: BorderSide(
                                  color: colorScheme.outline.withOpacity(0.5)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Forgot Password and Switch Login/Register
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: loadingState.value
                                ? null
                                : () {
                                    // Navigate to forgot password page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgotPasswordPage(),
                                      ),
                                    );
                                  },
                            style: TextButton.styleFrom(
                              foregroundColor: colorScheme.primary,
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            child: Text(t.login.action.forgotPassword),
                          ),
                          TextButton(
                            onPressed: loadingState.value
                                ? null
                                : () =>
                                    isRegistering.value = !isRegistering.value,
                            style: TextButton.styleFrom(
                              foregroundColor: colorScheme.primary,
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            child: Text(
                              isRegistering.value
                                  ? t.login.action.switchToLogin
                                  : t.login.action.switchToRegister,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
