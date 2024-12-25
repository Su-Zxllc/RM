// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mobileWrapperRoute,
      $desktopWrapperRoute,
      $introRoute,
    ];

RouteBase get $mobileWrapperRoute => ShellRouteData.$route(
      factory: $MobileWrapperRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          name: 'Home',
          factory: $HomeRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'add',
              name: 'Add Profile',
              parentNavigatorKey: AddProfileRoute.$parentNavigatorKey,
              factory: $AddProfileRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'profiles',
              name: 'Profiles',
              parentNavigatorKey: ProfilesOverviewRoute.$parentNavigatorKey,
              factory: $ProfilesOverviewRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'profiles/new',
              name: 'New Profile',
              parentNavigatorKey: NewProfileRoute.$parentNavigatorKey,
              factory: $NewProfileRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'profiles/:id',
              name: 'Profile Details',
              parentNavigatorKey: ProfileDetailsRoute.$parentNavigatorKey,
              factory: $ProfileDetailsRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'config-options',
              name: 'Config Options',
              parentNavigatorKey: ConfigOptionsRoute.$parentNavigatorKey,
              factory: $ConfigOptionsRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'quick-settings',
              name: 'Quick Settings',
              parentNavigatorKey: QuickSettingsRoute.$parentNavigatorKey,
              factory: $QuickSettingsRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'settings',
              name: 'Settings',
              parentNavigatorKey: SettingsRoute.$parentNavigatorKey,
              factory: $SettingsRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'per-app-proxy',
                  name: 'Per-app Proxy',
                  parentNavigatorKey: PerAppProxyRoute.$parentNavigatorKey,
                  factory: $PerAppProxyRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'routing-assets',
                  name: 'Routing Assets',
                  parentNavigatorKey: GeoAssetsRoute.$parentNavigatorKey,
                  factory: $GeoAssetsRouteExtension._fromState,
                ),
              ],
            ),
            GoRouteData.$route(
              path: 'logs',
              name: 'Logs',
              parentNavigatorKey: LogsOverviewRoute.$parentNavigatorKey,
              factory: $LogsOverviewRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'about',
              name: 'About',
              parentNavigatorKey: AboutRoute.$parentNavigatorKey,
              factory: $AboutRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'login',
              name: 'Login',
              parentNavigatorKey: LoginRoute.$parentNavigatorKey,
              factory: $LoginRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'order',
              name: 'Order',
              parentNavigatorKey: OrderRoute.$parentNavigatorKey,
              factory: $OrderRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'order-list',
              name: 'Order List',
              parentNavigatorKey: OrderListRoute.$parentNavigatorKey,
              factory: $OrderListRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'invite',
              name: 'Invite',
              parentNavigatorKey: InviteRoute.$parentNavigatorKey,
              factory: $InviteRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'notice',
              name: 'Notice',
              parentNavigatorKey: NoticeRoute.$parentNavigatorKey,
              factory: $NoticeRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'proxies-list',
              name: 'Proxies List',
              parentNavigatorKey: ProxiesListRoute.$parentNavigatorKey,
              factory: $ProxiesListRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'crisp',
              name: 'Crisp',
              parentNavigatorKey: CrispRoute.$parentNavigatorKey,
              factory: $CrispRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'knowledge',
              name: 'Knowledge',
              parentNavigatorKey: KnowledgeRoute.$parentNavigatorKey,
              factory: $KnowledgeRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/proxies',
          name: 'Proxies',
          factory: $ProxiesRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/subscribe',
          name: 'Subscribe',
          factory: $SubscribeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/center',
          name: 'Center',
          factory: $CenterRouteExtension._fromState,
        ),
        // GoRouteData.$route(
        //   path: '/login',
        //   name: 'Login',
        //   factory: $LoginRouteExtension._fromState,
        // ),
      ],
    );

extension $MobileWrapperRouteExtension on MobileWrapperRoute {
  static MobileWrapperRoute _fromState(GoRouterState state) =>
      const MobileWrapperRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AddProfileRouteExtension on AddProfileRoute {
  static AddProfileRoute _fromState(GoRouterState state) => AddProfileRoute(
        url: state.uri.queryParameters['url'],
      );

  String get location => GoRouteData.$location(
        '/add',
        queryParams: {
          if (url != null) 'url': url,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfilesOverviewRouteExtension on ProfilesOverviewRoute {
  static ProfilesOverviewRoute _fromState(GoRouterState state) =>
      const ProfilesOverviewRoute();

  String get location => GoRouteData.$location(
        '/profiles',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NewProfileRouteExtension on NewProfileRoute {
  static NewProfileRoute _fromState(GoRouterState state) =>
      const NewProfileRoute();

  String get location => GoRouteData.$location(
        '/profiles/new',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileDetailsRouteExtension on ProfileDetailsRoute {
  static ProfileDetailsRoute _fromState(GoRouterState state) =>
      ProfileDetailsRoute(
        state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/profiles/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ConfigOptionsRouteExtension on ConfigOptionsRoute {
  static ConfigOptionsRoute _fromState(GoRouterState state) =>
      ConfigOptionsRoute(
        section: state.uri.queryParameters['section'],
      );

  String get location => GoRouteData.$location(
        '/config-options',
        queryParams: {
          if (section != null) 'section': section,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $QuickSettingsRouteExtension on QuickSettingsRoute {
  static QuickSettingsRoute _fromState(GoRouterState state) =>
      const QuickSettingsRoute();

  String get location => GoRouteData.$location(
        '/quick-settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PerAppProxyRouteExtension on PerAppProxyRoute {
  static PerAppProxyRoute _fromState(GoRouterState state) =>
      const PerAppProxyRoute();

  String get location => GoRouteData.$location(
        '/settings/per-app-proxy',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $GeoAssetsRouteExtension on GeoAssetsRoute {
  static GeoAssetsRoute _fromState(GoRouterState state) =>
      const GeoAssetsRoute();

  String get location => GoRouteData.$location(
        '/settings/routing-assets',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LogsOverviewRouteExtension on LogsOverviewRoute {
  static LogsOverviewRoute _fromState(GoRouterState state) =>
      const LogsOverviewRoute();

  String get location => GoRouteData.$location(
        '/logs',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AboutRouteExtension on AboutRoute {
  static AboutRoute _fromState(GoRouterState state) => const AboutRoute();

  String get location => GoRouteData.$location(
        '/about',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProxiesRouteExtension on ProxiesRoute {
  static ProxiesRoute _fromState(GoRouterState state) => const ProxiesRoute();

  String get location => GoRouteData.$location(
        '/proxies',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// 创建新的路由扩展
extension $SubscribeRouteExtension on SubscribeRoute {
  static SubscribeRoute _fromState(GoRouterState state) =>
      const SubscribeRoute();

  String get location => GoRouteData.$location(
        '/subscribe',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// 创建新的路由扩展
extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OrderRouteExtension on OrderRoute {
  static OrderRoute _fromState(GoRouterState state) => const OrderRoute();

  String get location => GoRouteData.$location(
        '/order',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// 创建新的路由扩展
extension $CenterRouteExtension on CenterRoute {
  static CenterRoute _fromState(GoRouterState state) => const CenterRoute();

  String get location => GoRouteData.$location(
        '/center',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OrderListRouteExtension on OrderListRoute {
  static OrderListRoute _fromState(GoRouterState state) =>
      const OrderListRoute();

  String get location => GoRouteData.$location(
        '/order-list',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $InviteRouteExtension on InviteRoute {
  static InviteRoute _fromState(GoRouterState state) => const InviteRoute();

  String get location => GoRouteData.$location(
        '/invite',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NoticeRouteExtension on NoticeRoute {
  static NoticeRoute _fromState(GoRouterState state) => const NoticeRoute();

  String get location => GoRouteData.$location(
        '/notice',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProxiesListRouteExtension on ProxiesListRoute {
  static ProxiesListRoute _fromState(GoRouterState state) =>
      const ProxiesListRoute();

  String get location => GoRouteData.$location(
        '/proxies-list',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CrispRouteExtension on CrispRoute {
  static CrispRoute _fromState(GoRouterState state) => const CrispRoute();

  String get location => GoRouteData.$location(
        '/crisp',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $KnowledgeRouteExtension on KnowledgeRoute {
  static KnowledgeRoute _fromState(GoRouterState state) =>
      const KnowledgeRoute();

  String get location => GoRouteData.$location(
        '/knowledge',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $desktopWrapperRoute => ShellRouteData.$route(
      factory: $DesktopWrapperRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          name: 'Home',
          factory: $HomeRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'add',
              name: 'Add Profile',
              parentNavigatorKey: AddProfileRoute.$parentNavigatorKey,
              factory: $AddProfileRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'profiles',
              name: 'Profiles',
              parentNavigatorKey: ProfilesOverviewRoute.$parentNavigatorKey,
              factory: $ProfilesOverviewRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'profiles/new',
              name: 'New Profile',
              parentNavigatorKey: NewProfileRoute.$parentNavigatorKey,
              factory: $NewProfileRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'profiles/:id',
              name: 'Profile Details',
              parentNavigatorKey: ProfileDetailsRoute.$parentNavigatorKey,
              factory: $ProfileDetailsRouteExtension._fromState,
            ),
            GoRouteData.$route(
              path: 'quick-settings',
              name: 'Quick Settings',
              parentNavigatorKey: QuickSettingsRoute.$parentNavigatorKey,
              factory: $QuickSettingsRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/proxies',
          name: 'Proxies',
          factory: $ProxiesRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/config-options',
          name: 'Config Options',
          parentNavigatorKey: ConfigOptionsRoute.$parentNavigatorKey,
          factory: $ConfigOptionsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/settings',
          name: 'Settings',
          parentNavigatorKey: SettingsRoute.$parentNavigatorKey,
          factory: $SettingsRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'routing-assets',
              name: 'Routing Assets',
              parentNavigatorKey: GeoAssetsRoute.$parentNavigatorKey,
              factory: $GeoAssetsRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: '/logs',
          name: 'Logs',
          parentNavigatorKey: LogsOverviewRoute.$parentNavigatorKey,
          factory: $LogsOverviewRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/about',
          name: 'About',
          parentNavigatorKey: AboutRoute.$parentNavigatorKey,
          factory: $AboutRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/subscribe',
          name: 'Subscribe',
          factory: $SubscribeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/login',
          name: 'Login',
          parentNavigatorKey: LoginRoute.$parentNavigatorKey,
          factory: $LoginRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/order',
          name: 'Order',
          parentNavigatorKey: OrderRoute.$parentNavigatorKey,
          factory: $OrderRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/center',
          name: 'Center',
          factory: $CenterRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/order-list',
          name: 'Order List',
          parentNavigatorKey: OrderListRoute.$parentNavigatorKey,
          factory: $OrderListRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/invite',
          name: 'Invite',
          parentNavigatorKey: InviteRoute.$parentNavigatorKey,
          factory: $InviteRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/notice',
          name: 'Notice',
          parentNavigatorKey: NoticeRoute.$parentNavigatorKey,
          factory: $NoticeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/proxies-list',
          name: 'Proxies List',
          parentNavigatorKey: ProxiesListRoute.$parentNavigatorKey,
          factory: $ProxiesListRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/crisp',
          name: 'Crisp',
          parentNavigatorKey: CrispRoute.$parentNavigatorKey,
          factory: $CrispRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/knowledge',
          name: 'Knowledge',
          parentNavigatorKey: KnowledgeRoute.$parentNavigatorKey,
          factory: $KnowledgeRouteExtension._fromState,
        ),
      ],
    );

extension $DesktopWrapperRouteExtension on DesktopWrapperRoute {
  static DesktopWrapperRoute _fromState(GoRouterState state) =>
      const DesktopWrapperRoute();
}

RouteBase get $introRoute => GoRouteData.$route(
      path: '/intro',
      name: 'Intro',
      factory: $IntroRouteExtension._fromState,
    );

extension $IntroRouteExtension on IntroRoute {
  static IntroRoute _fromState(GoRouterState state) => const IntroRoute();

  String get location => GoRouteData.$location(
        '/intro',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
