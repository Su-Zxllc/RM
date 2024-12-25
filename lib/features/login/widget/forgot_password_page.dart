import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sp_util/sp_util.dart';
import 'package:http/http.dart' as http;
import 'package:reaeeman/core/localization/translations.dart';

class ForgotPasswordPage extends HookConsumerWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _emailController = useTextEditingController();
    final _emailCodeController = useTextEditingController();
    final _newPasswordController = useTextEditingController();
    final loadingState = useState<bool>(false);
    final _obscurePassword = useState<bool>(true);

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
            content: Text('验证码已发送'),
            duration: Duration(seconds: 3),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else {
          final snackBar = SnackBar(
            content: Text(json.decode(emailResponse.body)['message'] as String),
            duration: Duration(seconds: 3),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      } catch (e) {
        final snackBar = SnackBar(
          content: Text('发送失败，请稍后重试'),
          duration: Duration(seconds: 3),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }

    Future<void> _resetPassword() async {
      if (_emailController.text.isEmpty ||
          _emailCodeController.text.isEmpty ||
          _newPasswordController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('请填写所有必填项')),
        );
        return;
      }

      loadingState.value = true;

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
        final response = await http.post(
          Uri.parse(baseUrl + '/api/v1/passport/auth/forget'),
          body: {
            'email': _emailController.text,
            'email_code': _emailCodeController.text,
            'password': _newPasswordController.text,
          },
        );

        if (response.statusCode == 200) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('密码重置成功')),
          );
          Navigator.pop(context); // 返回登录页
        } else {
          final message = json.decode(response.body)['message'] as String;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('重置失败，请稍后重试')),
        );
      }

      loadingState.value = false;
    }

    final colorScheme = Theme.of(context).colorScheme;

    final t = ref.watch(translationsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.forgotPassword.pageTitle),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32),
              Text(
                t.forgotPassword.resetPassword,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                t.forgotPassword.subTitle,
                style: TextStyle(
                  fontSize: 14,
                  color: colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),

              // Email field
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: t.forgotPassword.email.label,
                  hintText: t.forgotPassword.email.hint,
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
                  fillColor: colorScheme.surfaceVariant.withOpacity(0.3),
                ),
              ),
              const SizedBox(height: 16),

              // Verification code field
              TextField(
                controller: _emailCodeController,
                keyboardType: TextInputType.number,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: t.forgotPassword.emailCode.label,
                  hintText: t.forgotPassword.emailCode.hint,
                  prefixIcon: Icon(Icons.verified_user_outlined),
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
                  fillColor: colorScheme.surfaceVariant.withOpacity(0.3),
                  suffixIcon: TextButton(
                    onPressed: () => _sendEmailVerify(),
                    child: Text(t.forgotPassword.emailCode.send),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // New password field
              TextField(
                controller: _newPasswordController,
                obscureText: _obscurePassword.value,
                keyboardType: TextInputType.visiblePassword,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: t.forgotPassword.newPassword.label,
                  hintText: t.forgotPassword.newPassword.hint,
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword.value
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: colorScheme.onSurfaceVariant,
                    ),
                    onPressed: () =>
                        _obscurePassword.value = !_obscurePassword.value,
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
                  fillColor: colorScheme.surfaceVariant.withOpacity(0.3),
                ),
              ),
              const SizedBox(height: 32),

              // Reset button
              FilledButton(
                onPressed: loadingState.value ? null : _resetPassword,
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
                            t.forgotPassword.resetPassword,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
