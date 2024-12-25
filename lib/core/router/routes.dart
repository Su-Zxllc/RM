import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reaeeman/core/router/app_router.dart';
import 'package:reaeeman/features/center/widget/center_page.dart';
import 'package:reaeeman/features/common/adaptive_root_scaffold.dart';
import 'package:reaeeman/features/config_option/overview/config_options_page.dart';
import 'package:reaeeman/features/config_option/widget/quick_settings_modal.dart';
import 'package:reaeeman/features/geo_asset/overview/geo_assets_overview_page.dart';
import 'package:reaeeman/features/home/widget/home_page.dart';
import 'package:reaeeman/features/intro/widget/intro_page.dart';
import 'package:reaeeman/features/invite/widget/invite_page.dart';
import 'package:reaeeman/features/knowledge/widget/knowledge_page.dart';
import 'package:reaeeman/features/log/overview/logs_overview_page.dart';
import 'package:reaeeman/features/notice/widget/notice_page.dart';
import 'package:reaeeman/features/order/widget/order_page.dart';
import 'package:reaeeman/features/per_app_proxy/overview/per_app_proxy_page.dart';
import 'package:reaeeman/features/profile/add/add_profile_modal.dart';
import 'package:reaeeman/features/profile/details/profile_details_page.dart';
import 'package:reaeeman/features/profile/overview/profiles_overview_page.dart';
import 'package:reaeeman/features/proxy/overview/proxies_overview_list.dart';
import 'package:reaeeman/features/proxy/overview/proxies_overview_page.dart';
import 'package:reaeeman/features/settings/about/about_page.dart';
import 'package:reaeeman/features/settings/overview/settings_overview_page.dart';
import 'package:reaeeman/features/subscribe/crisp_page.dart';
import 'package:reaeeman/features/subscribe/widget/order_page.dart';
import 'package:reaeeman/features/subscribe/widget/subscribe_page.dart';
import 'package:reaeeman/features/login/widget/login_page.dart';
import 'package:reaeeman/utils/utils.dart';

part 'routes.g.dart';

GlobalKey<NavigatorState>? _dynamicRootKey =
    useMobileRouter ? rootNavigatorKey : null;

@TypedShellRoute<MobileWrapperRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(
      path: "/",
      name: HomeRoute.name,
      routes: [
        TypedGoRoute<AddProfileRoute>(
          path: "add",
          name: AddProfileRoute.name,
        ),
        TypedGoRoute<ProfilesOverviewRoute>(
          path: "profiles",
          name: ProfilesOverviewRoute.name,
        ),
        TypedGoRoute<NewProfileRoute>(
          path: "profiles/new",
          name: NewProfileRoute.name,
        ),
        TypedGoRoute<ProfileDetailsRoute>(
          path: "profiles/:id",
          name: ProfileDetailsRoute.name,
        ),
        TypedGoRoute<ConfigOptionsRoute>(
          path: "config-options",
          name: ConfigOptionsRoute.name,
        ),
        TypedGoRoute<QuickSettingsRoute>(
          path: "quick-settings",
          name: QuickSettingsRoute.name,
        ),
        TypedGoRoute<SettingsRoute>(
          path: "settings",
          name: SettingsRoute.name,
          routes: [
            TypedGoRoute<PerAppProxyRoute>(
              path: "per-app-proxy",
              name: PerAppProxyRoute.name,
            ),
            TypedGoRoute<GeoAssetsRoute>(
              path: "routing-assets",
              name: GeoAssetsRoute.name,
            ),
          ],
        ),
        TypedGoRoute<LogsOverviewRoute>(
          path: "logs",
          name: LogsOverviewRoute.name,
        ),
        TypedGoRoute<AboutRoute>(
          path: "about",
          name: AboutRoute.name,
        ),
        TypedGoRoute<LoginRoute>(
          path: "login",
          name: LoginRoute.name,
        ),
        TypedGoRoute<OrderRoute>(
          path: "order",
          name: OrderRoute.name,
        ),
        TypedGoRoute<OrderListRoute>(
          path: "order-list",
          name: OrderListRoute.name,
        ),
        TypedGoRoute<InviteRoute>(
          path: "invite",
          name: InviteRoute.name,
        ),
        TypedGoRoute<NoticeRoute>(
          path: "notice",
          name: NoticeRoute.name,
        ),
        TypedGoRoute<ProxiesListRoute>(
          path: "proxies-list",
          name: ProxiesListRoute.name,
        ),
        TypedGoRoute<CrispRoute>(
          path: "crisp",
          name: CrispRoute.name,
        ),
        TypedGoRoute<KnowledgeRoute>(
          path: "knowledge",
          name: KnowledgeRoute.name,
        ),
        // TypedGoRoute<ProxiesRoute>(
        //   path: "/proxies",
        //   name: ProxiesRoute.name,
        // ),
      ],
    ),
    TypedGoRoute<ProxiesRoute>(
      path: "/proxies",
      name: ProxiesRoute.name,
    ),
    TypedGoRoute<SubscribeRoute>(
      path: "/subscribe",
      name: SubscribeRoute.name,
    ),
    TypedGoRoute<CenterRoute>(
      path: "/center",
      name: CenterRoute.name,
    ),
    // TypedGoRoute<LoginRoute>(
    //   path: "/login",
    //   name: LoginRoute.name,
    // ),
  ],
)
class MobileWrapperRoute extends ShellRouteData {
  const MobileWrapperRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return AdaptiveRootScaffold(navigator);
  }
}

@TypedShellRoute<DesktopWrapperRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(
      path: "/",
      name: HomeRoute.name,
      routes: [
        TypedGoRoute<AddProfileRoute>(
          path: "add",
          name: AddProfileRoute.name,
        ),
        TypedGoRoute<ProfilesOverviewRoute>(
          path: "profiles",
          name: ProfilesOverviewRoute.name,
        ),
        TypedGoRoute<NewProfileRoute>(
          path: "profiles/new",
          name: NewProfileRoute.name,
        ),
        TypedGoRoute<ProfileDetailsRoute>(
          path: "profiles/:id",
          name: ProfileDetailsRoute.name,
        ),
        TypedGoRoute<QuickSettingsRoute>(
          path: "quick-settings",
          name: QuickSettingsRoute.name,
        ),
      ],
    ),
    TypedGoRoute<ProxiesRoute>(
      path: "/proxies",
      name: ProxiesRoute.name,
    ),
    TypedGoRoute<ConfigOptionsRoute>(
      path: "/config-options",
      name: ConfigOptionsRoute.name,
    ),
    TypedGoRoute<SettingsRoute>(
      path: "/settings",
      name: SettingsRoute.name,
      routes: [
        TypedGoRoute<GeoAssetsRoute>(
          path: "routing-assets",
          name: GeoAssetsRoute.name,
        ),
      ],
    ),
    TypedGoRoute<LogsOverviewRoute>(
      path: "/logs",
      name: LogsOverviewRoute.name,
    ),
    TypedGoRoute<AboutRoute>(
      path: "/about",
      name: AboutRoute.name,
    ),
    TypedGoRoute<SubscribeRoute>(
      path: "/subscribe",
      name: SubscribeRoute.name,
    ),
    TypedGoRoute<LoginRoute>(
      path: "/login",
      name: LoginRoute.name,
    ),
    TypedGoRoute<OrderRoute>(
      path: "/order",
      name: OrderRoute.name,
    ),
    TypedGoRoute<CenterRoute>(
      path: "/center",
      name: CenterRoute.name,
    ),
    TypedGoRoute<OrderListRoute>(
      path: "/order-list",
      name: OrderListRoute.name,
    ),
    TypedGoRoute<InviteRoute>(
      path: "/invite",
      name: InviteRoute.name,
    ),
    TypedGoRoute<NoticeRoute>(
      path: "/notice",
      name: NoticeRoute.name,
    ),
    TypedGoRoute<ProxiesListRoute>(
      path: "/proxies-list",
      name: ProxiesListRoute.name,
    ),
    TypedGoRoute<CrispRoute>(
      path: "/crisp",
      name: CrispRoute.name,
    ),
    TypedGoRoute<KnowledgeRoute>(
      path: "/knowledge",
      name: KnowledgeRoute.name,
    ),
  ],
)
class DesktopWrapperRoute extends ShellRouteData {
  const DesktopWrapperRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return AdaptiveRootScaffold(navigator);
  }
}

@TypedGoRoute<IntroRoute>(path: "/intro", name: IntroRoute.name)
class IntroRoute extends GoRouteData {
  const IntroRoute();
  static const name = "Intro";

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      fullscreenDialog: true,
      name: name,
      child: IntroPage(),
    );
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();
  static const name = "Home";

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      name: name,
      child: HomePage(),
    );
  }
}

class SubscribeRoute extends GoRouteData {
  const SubscribeRoute();
  static const name = "Subscribe";

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      name: name,
      child: SubscribePage(),
    );
  }
}

class CenterRoute extends GoRouteData {
  const CenterRoute();
  static const name = "Center";

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      name: name,
      child: CenterPage(),
    );
  }
}

// class LoginRoute extends GoRouteData {
//   const LoginRoute();
//   static const name = "Login";

//   @override
//   Page<void> buildPage(BuildContext context, GoRouterState state) {
//     return const NoTransitionPage(
//       name: name,
//       child: LoginPage(),
//     );
//   }
// }

class LoginRoute extends GoRouteData {
  const LoginRoute();
  static const name = "Login";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return MaterialPage(
        name: name,
        child: const LoginPage(),
        fullscreenDialog: true,
        allowSnapshotting: false,
      );
    }
    return const NoTransitionPage(name: name, child: LoginPage());
  }
}

class OrderRoute extends GoRouteData {
  const OrderRoute();
  static const name = "Order";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return const MaterialPage(
        name: name,
        child: OrderPage(),
      );
    }
    return const NoTransitionPage(name: name, child: OrderPage());
  }
}

class OrderListRoute extends GoRouteData {
  const OrderListRoute();
  static const name = "Order List";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return const MaterialPage(
        name: name,
        child: OrderListPage(),
      );
    }
    return const NoTransitionPage(name: name, child: OrderListPage());
  }
}

class InviteRoute extends GoRouteData {
  const InviteRoute();
  static const name = "Invite";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return const MaterialPage(
        name: name,
        child: InvitePage(),
      );
    }
    return const NoTransitionPage(name: name, child: InvitePage());
  }
}

class NoticeRoute extends GoRouteData {
  const NoticeRoute();
  static const name = "Notice";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return const MaterialPage(
        name: name,
        child: NoticePage(),
      );
    }
    return const NoTransitionPage(name: name, child: NoticePage());
  }
}

class ProxiesListRoute extends GoRouteData {
  const ProxiesListRoute();
  static const name = "Proxies List";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return const MaterialPage(
        name: name,
        child: ProxiesListPage(),
      );
    }
    return const NoTransitionPage(name: name, child: ProxiesListPage());
  }
}

class CrispRoute extends GoRouteData {
  const CrispRoute();
  static const name = "Crisp";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return const MaterialPage(
        name: name,
        child: CrispPage(),
      );
    }
    return const NoTransitionPage(name: name, child: CrispPage());
  }
}

class KnowledgeRoute extends GoRouteData {
  const KnowledgeRoute();
  static const name = "Knowledge";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return const MaterialPage(
        name: name,
        child: KnowledgePage(),
      );
    }
    return const NoTransitionPage(name: name, child: KnowledgePage());
  }
}

class ProxiesRoute extends GoRouteData {
  const ProxiesRoute();
  static const name = "Proxies";

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      name: name,
      child: ProxiesOverviewPage(),
    );
  }
}

class AddProfileRoute extends GoRouteData {
  const AddProfileRoute({this.url});

  final String? url;

  static const name = "Add Profile";

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return BottomSheetPage(
      fixed: true,
      name: name,
      builder: (controller) => AddProfileModal(
        url: url,
        scrollController: controller,
      ),
    );
  }
}

class ProfilesOverviewRoute extends GoRouteData {
  const ProfilesOverviewRoute();
  static const name = "Profiles";

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return BottomSheetPage(
      name: name,
      builder: (controller) =>
          ProfilesOverviewModal(scrollController: controller),
    );
  }
}

class NewProfileRoute extends GoRouteData {
  const NewProfileRoute();
  static const name = "New Profile";

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      fullscreenDialog: true,
      name: name,
      child: ProfileDetailsPage("new"),
    );
  }
}

class ProfileDetailsRoute extends GoRouteData {
  const ProfileDetailsRoute(this.id);
  final String id;
  static const name = "Profile Details";

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      fullscreenDialog: true,
      name: name,
      child: ProfileDetailsPage(id),
    );
  }
}

class LogsOverviewRoute extends GoRouteData {
  const LogsOverviewRoute();
  static const name = "Logs";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return const MaterialPage(
        name: name,
        child: LogsOverviewPage(),
      );
    }
    return const NoTransitionPage(name: name, child: LogsOverviewPage());
  }
}

class QuickSettingsRoute extends GoRouteData {
  const QuickSettingsRoute();
  static const name = "Quick Settings";

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return BottomSheetPage(
      fixed: true,
      name: name,
      builder: (controller) => const QuickSettingsModal(),
    );
  }
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();
  static const name = "Settings";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return const MaterialPage(
        name: name,
        child: SettingsOverviewPage(),
      );
    }
    return const NoTransitionPage(name: name, child: SettingsOverviewPage());
  }
}

class ConfigOptionsRoute extends GoRouteData {
  const ConfigOptionsRoute({this.section});
  final String? section;
  static const name = "Config Options";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return MaterialPage(
        name: name,
        child: ConfigOptionsPage(section: section),
      );
    }
    return NoTransitionPage(
      name: name,
      child: ConfigOptionsPage(section: section),
    );
  }
}

class PerAppProxyRoute extends GoRouteData {
  const PerAppProxyRoute();
  static const name = "Per-app Proxy";

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      fullscreenDialog: true,
      name: name,
      child: PerAppProxyPage(),
    );
  }
}

class GeoAssetsRoute extends GoRouteData {
  const GeoAssetsRoute();
  static const name = "Routing Assets";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return const MaterialPage(
        name: name,
        child: GeoAssetsOverviewPage(),
      );
    }
    return const MaterialPage(
      fullscreenDialog: true,
      name: name,
      child: GeoAssetsOverviewPage(),
    );
  }
}

class AboutRoute extends GoRouteData {
  const AboutRoute();
  static const name = "About";

  static final GlobalKey<NavigatorState>? $parentNavigatorKey = _dynamicRootKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    if (useMobileRouter) {
      return const MaterialPage(
        name: name,
        child: AboutPage(),
      );
    }
    return const NoTransitionPage(name: name, child: AboutPage());
  }
}
