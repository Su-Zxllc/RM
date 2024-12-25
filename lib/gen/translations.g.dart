/// Generated file. Do not edit.
///
/// Original: assets/translations
/// To regenerate, run: `dart run slang`
///
/// Locales: 9
/// Strings: 2757 (306 per locale)
///
/// Built on 2024-12-22 at 15:18 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	es(languageCode: 'es', build: TranslationsEs.build),
	fa(languageCode: 'fa', build: TranslationsFa.build),
	id(languageCode: 'id', build: TranslationsId.build),
	ptBr(languageCode: 'pt', countryCode: 'BR', build: TranslationsPtBr.build),
	ru(languageCode: 'ru', build: TranslationsRu.build),
	tr(languageCode: 'tr', build: TranslationsTr.build),
	zhCn(languageCode: 'zh', countryCode: 'CN', build: TranslationsZhCn.build),
	zhTw(languageCode: 'zh', countryCode: 'TW', build: TranslationsZhTw.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsGeneralEn general = TranslationsGeneralEn._(_root);
	late final TranslationsIntroEn intro = TranslationsIntroEn._(_root);
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
	late final TranslationsStatsEn stats = TranslationsStatsEn._(_root);
	late final TranslationsProfileEn profile = TranslationsProfileEn._(_root);
	late final TranslationsProxiesEn proxies = TranslationsProxiesEn._(_root);
	late final TranslationsLogsEn logs = TranslationsLogsEn._(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn._(_root);
	late final TranslationsAboutEn about = TranslationsAboutEn._(_root);
	late final TranslationsAppUpdateEn appUpdate = TranslationsAppUpdateEn._(_root);
	late final TranslationsTrayEn tray = TranslationsTrayEn._(_root);
	late final TranslationsFailureEn failure = TranslationsFailureEn._(_root);
	late final TranslationsPlayEn play = TranslationsPlayEn._(_root);
	late final TranslationsConnectionEn connection = TranslationsConnectionEn._(_root);
	late final TranslationsConfigEn config = TranslationsConfigEn._(_root);
	late final TranslationsSubscribeEn subscribe = TranslationsSubscribeEn._(_root);
	late final TranslationsCenterEn center = TranslationsCenterEn._(_root);
	late final TranslationsKnowledgeEn knowledge = TranslationsKnowledgeEn._(_root);
	late final TranslationsOrderEn order = TranslationsOrderEn._(_root);
	late final TranslationsInviteEn invite = TranslationsInviteEn._(_root);
	late final TranslationsNoticeEn notice = TranslationsNoticeEn._(_root);
	late final TranslationsLoginEn login = TranslationsLoginEn._(_root);
	late final TranslationsForgotPasswordEn forgotPassword = TranslationsForgotPasswordEn._(_root);
	late final TranslationsUpdateEn update = TranslationsUpdateEn._(_root);
	late final TranslationsErrorEn error = TranslationsErrorEn._(_root);
}

// Path: general
class TranslationsGeneralEn {
	TranslationsGeneralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appTitle => 'Hiddify';
	String get reset => 'Reset';
	late final TranslationsGeneralToggleEn toggle = TranslationsGeneralToggleEn._(_root);
	late final TranslationsGeneralStateEn state = TranslationsGeneralStateEn._(_root);
	String get sort => 'Sort';
	String get sortBy => 'Sort by';
	String get addToClipboard => 'Add To Clipboard';
	String get notSet => 'Not Set';
	String get agree => 'Agree';
	String get decline => 'Decline';
	String get unknown => 'Unknown';
	String get hidden => 'Hidden';
	String get timeout => 'Timeout';
	String get clipboardExportSuccessMsg => 'Added To Clipboard';
	String get showMore => 'Show More';
	String get showLess => 'Show Less';
	String get openAppSettings => 'Open App Settings';
	String get grantPermission => 'Grant Permission';
}

// Path: intro
class TranslationsIntroEn {
	TranslationsIntroEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	TextSpan termsAndPolicyCaution({required InlineSpanBuilder tap}) => TextSpan(children: [
		const TextSpan(text: 'By Continuing You Agree With '),
		tap(_root.about.termsAndConditions),
	]);
	String get start => 'Start';
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Home';
	String get emptyProfilesMsg => 'Begin by Adding a Subscription Profile';
	String get noActiveProfileMsg => 'Choose a Profile';
}

// Path: stats
class TranslationsStatsEn {
	TranslationsStatsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get traffic => 'Traffic';
	String get trafficLive => 'Live Traffic';
	String get trafficTotal => 'Total Traffic';
	String get uplink => 'Uplink';
	String get downlink => 'Downlink';
	String get connection => 'Connection';
	String get speed => 'Speed';
	String get totalTransferred => 'Total Transferred';
}

// Path: profile
class TranslationsProfileEn {
	TranslationsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get overviewPageTitle => 'Profiles';
	String get detailsPageTitle => 'Profile';
	String activeProfileNameSemanticLabel({required Object name}) => 'Active Profile Name: "${name}".';
	String get activeProfileBtnSemanticLabel => 'View All Profiles';
	String nonActiveProfileBtnSemanticLabel({required Object name}) => 'Select "${name}" as Active Profile';
	late final TranslationsProfileSubscriptionEn subscription = TranslationsProfileSubscriptionEn._(_root);
	late final TranslationsProfileSortByEn sortBy = TranslationsProfileSortByEn._(_root);
	late final TranslationsProfileAddEn add = TranslationsProfileAddEn._(_root);
	late final TranslationsProfileUpdateEn update = TranslationsProfileUpdateEn._(_root);
	late final TranslationsProfileShareEn share = TranslationsProfileShareEn._(_root);
	late final TranslationsProfileEditEn edit = TranslationsProfileEditEn._(_root);
	late final TranslationsProfileDeleteEn delete = TranslationsProfileDeleteEn._(_root);
	late final TranslationsProfileSaveEn save = TranslationsProfileSaveEn._(_root);
	late final TranslationsProfileDetailsFormEn detailsForm = TranslationsProfileDetailsFormEn._(_root);
}

// Path: proxies
class TranslationsProxiesEn {
	TranslationsProxiesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Proxies';
	String get title => 'Select Node';
	String get emptyProxiesMsg => 'No Proxies Available';
	String get delayTestTooltip => 'Test Delay';
	String get sortTooltip => 'Sort Proxies';
	String get checkIp => 'Check IP';
	String get unknownIp => 'Unknown IP';
	late final TranslationsProxiesSortOptionsEn sortOptions = TranslationsProxiesSortOptionsEn._(_root);
	String get activeProxySemanticLabel => 'Currently Selected Node';
	late final TranslationsProxiesDelaySemanticsEn delaySemantics = TranslationsProxiesDelaySemanticsEn._(_root);
	late final TranslationsProxiesIpInfoSemanticsEn ipInfoSemantics = TranslationsProxiesIpInfoSemanticsEn._(_root);
}

// Path: logs
class TranslationsLogsEn {
	TranslationsLogsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Logs';
	String get filterHint => 'Filter';
	String get allLevelsFilter => 'All';
	String get shareCoreLogs => 'Share Core Logs';
	String get shareAppLogs => 'Share App Logs';
	String get pauseTooltip => 'Pause';
	String get resumeTooltip => 'Resume';
	String get clearTooltip => 'Clear';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Settings';
	String get requiresRestartMsg => 'For this to take effect restart the app';
	String get experimental => 'Experimental';
	String get experimentalMsg => 'Features with Experimental flag are still in development and might cause issues.';
	String get exportOptions => 'Export Options to Clipboard';
	String get exportAllOptions => 'Export Options to Clipboard (Debug)';
	String get importOptions => 'Import Options From Clipboard';
	String get importOptionsMsg => 'This will rewrite all config options with provided values. Are you sure?';
	late final TranslationsSettingsGeneralEn general = TranslationsSettingsGeneralEn._(_root);
	late final TranslationsSettingsAdvancedEn advanced = TranslationsSettingsAdvancedEn._(_root);
	late final TranslationsSettingsNetworkEn network = TranslationsSettingsNetworkEn._(_root);
	late final TranslationsSettingsGeoAssetsEn geoAssets = TranslationsSettingsGeoAssetsEn._(_root);
}

// Path: about
class TranslationsAboutEn {
	TranslationsAboutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'About';
	String get version => 'Version';
	String get sourceCode => 'Source Code';
	String get telegramChannel => 'Telegram Channel';
	String get checkForUpdate => 'Check For Update';
	String get privacyPolicy => 'Privacy Policy';
	String get termsAndConditions => 'Terms and Conditions';
}

// Path: appUpdate
class TranslationsAppUpdateEn {
	TranslationsAppUpdateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get notAvailableMsg => 'Already Using The Latest Version';
	String get dialogTitle => 'Update Available';
	String get updateMsg => 'A new version of ${_root.general.appTitle} is available. Would you like to update now?';
	String get currentVersionLbl => 'Current Version';
	String get newVersionLbl => 'New Version';
	String get updateNowBtnTxt => 'Update Now';
	String get laterBtnTxt => 'Later';
	String get ignoreBtnTxt => 'Ignore';
}

// Path: tray
class TranslationsTrayEn {
	TranslationsTrayEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get dashboard => 'Dashboard';
	String get quit => 'Quit';
	String get open => 'Open';
	late final TranslationsTrayStatusEn status = TranslationsTrayStatusEn._(_root);
}

// Path: failure
class TranslationsFailureEn {
	TranslationsFailureEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Error';
	late final TranslationsFailureClashEn clash = TranslationsFailureClashEn._(_root);
	late final TranslationsFailureSingboxEn singbox = TranslationsFailureSingboxEn._(_root);
	late final TranslationsFailureConnectivityEn connectivity = TranslationsFailureConnectivityEn._(_root);
	late final TranslationsFailureProfilesEn profiles = TranslationsFailureProfilesEn._(_root);
	late final TranslationsFailureConnectionEn connection = TranslationsFailureConnectionEn._(_root);
	late final TranslationsFailureGeoAssetsEn geoAssets = TranslationsFailureGeoAssetsEn._(_root);
}

// Path: play
class TranslationsPlayEn {
	TranslationsPlayEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Hiddify (Preview)';
	String get short_description => 'Auto, SSH, VLESS, VMess, Trojan, Reality, Sing-Box, Clash, XRay, Shadowsocks';
	String get full_description => 'The key goal of Hiddify is to provide a secure, user-friendly and efficient tunneling client. It enables you to route all traffic or selected app traffic to a remote server of your choose, utilizing VPN-Service permission.\n\nNote: We do not provide any server; users are required to ensure their online activities stay private by using use their own self-hosted server or trusted servers. \n \nWe Support Servers With:\n- Normal V2Ray/XRay Subscription Link\n- Clash Subscription Link\n- Sing-Box Subscription Link\n\nWhat is our unique features?\n - User Friendly\n - Optimized and Fast\n - Automatically select LowestPing \n - Show user usage information\n - Easily import sublink by one click using deeplinking \n - Free and No ADS\n - Easily switch user sublinks\n - More and more\n\nSupport:\n- All Protocols Supported by Sing-Box \n- VLESS + XTLS Reality, Vision\n- VMess\n- Trojan\n- ShoadowSocks\n- Reality\n- WireGuard\n- V2Ray\n- Hysteria2\n- TUICv5\n- SSH\n- ShadowTLS\n\n\nThe source code exist in https://github.com/hiddify/Hiddify-Next\nThe application core is based on open-source Sing-Box.\n\nPermission Description:\n- VPN Service: As the goal of this application is to provide a secure, user-friendly and efficient tunneling client, we need this permission to be able to route the traffic via tunnel to the remote server. \n- QUERY ALL PACKAGES: This permission is used to allow users to include or exclude specific applications for tunneling.\n- RECEIVE BOOT COMPLETED: This permission can be enabled or disabled from app settings to activate this application upon device boot.\n- POST NOTIFICATIONS: This permission is essential as we employ a foreground service to ensure the continuous operation of the VPN service.\n- This application is free from advertisements. The analytics and crash data only occurs with the explicit consent of the user in the first use of application.';
}

// Path: connection
class TranslationsConnectionEn {
	TranslationsConnectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get tapToConnect => 'Tap To Connect';
	String get connecting => 'Connecting';
	String get disconnecting => 'Disconnecting';
	String get connected => 'Connected';
	String get reconnect => 'Reconnect';
	String get connectAnyWay => 'Connect';
	String get experimentalNotice => 'Experimental Features In Use';
	String get experimentalNoticeMsg => 'You\'ve enabled some experimental features which might affect connection quality and cause unexpected errors. You can always change or reset these options from Config options page.';
	String get disableExperimentalNotice => 'Don\'t Show Again';
	String get reconnectMsg => 'Reconnect for Changes to Take Effect';
}

// Path: config
class TranslationsConfigEn {
	TranslationsConfigEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get resetBtn => 'Reset Options';
	String get serviceMode => 'Service Mode';
	String get quickSettings => 'Quick Settings';
	String get setupWarp => 'Setup WARP';
	String get allOptions => 'All Config Options';
	late final TranslationsConfigServiceModesEn serviceModes = TranslationsConfigServiceModesEn._(_root);
	late final TranslationsConfigShortServiceModesEn shortServiceModes = TranslationsConfigShortServiceModesEn._(_root);
	late final TranslationsConfigSectionEn section = TranslationsConfigSectionEn._(_root);
	late final TranslationsConfigWarpConsentEn warpConsent = TranslationsConfigWarpConsentEn._(_root);
	String get generateWarpConfig => 'Generate WARP Config';
	String get missingWarpConfig => 'Missing WARP Config';
	String get warpConfigGenerated => 'WARP Config Generated';
	String get pageTitle => 'Config Options';
	String get logLevel => 'Log Level';
	String get resolveDestination => 'Resolve Destination';
	String get ipv6Mode => 'IPv6 Route';
	late final TranslationsConfigIpv6ModesEn ipv6Modes = TranslationsConfigIpv6ModesEn._(_root);
	String get remoteDnsAddress => 'Remote DNS';
	String get remoteDnsDomainStrategy => 'Remote DNS Domain Strategy';
	String get directDnsAddress => 'Direct DNS';
	String get directDnsDomainStrategy => 'Direct DNS Domain Strategy';
	String get mixedPort => 'Mixed Port';
	String get tproxyPort => 'Transparent Proxy Port';
	String get localDnsPort => 'Local DNS Port';
	String get allowConnectionFromLan => 'Share VPN in Local Network';
	String get tunImplementation => 'TUN Implementation';
	String get mtu => 'MTU';
	String get connectionTestUrl => 'Connection Test URL';
	String get urlTestInterval => 'URL Test Interval';
	String get enableClashApi => 'Enable Clash API';
	String get clashApiPort => 'Clash API Port';
	String get enableTun => 'Enable TUN';
	String get setSystemProxy => 'Set System Proxy';
	String get enableDnsRouting => 'Enable DNS Routing';
	String get enableFakeDns => 'Enable Fake DNS';
	String get bypassLan => 'Bypass Lan';
	String get strictRoute => 'Strict Route';
	String get enableTlsFragment => 'Enable TLS Fragment';
	String get tlsFragmentSize => 'TLS Fragment Size';
	String get tlsFragmentSleep => 'TLS Fragment Sleep';
	String get enableTlsMixedSniCase => 'Enable TLS Mixed SNI Case';
	String get enableTlsPadding => 'Enable TLS Padding';
	String get tlsPaddingSize => 'TLS Padding';
	String get enableMux => 'Enable Mux';
	String get muxProtocol => 'Mux Protocol';
	String get muxMaxStreams => 'Max Concurrent Streams';
	String get enableWarp => 'Enable WARP';
	String get warpDetourMode => 'Detour Mode';
	late final TranslationsConfigWarpDetourModesEn warpDetourModes = TranslationsConfigWarpDetourModesEn._(_root);
	String get warpLicenseKey => 'License Key';
	String get warpCleanIp => 'Clean IP';
	String get warpPort => 'Port';
	String get warpNoise => 'Noise Count';
	String get warpNoiseDelay => 'Noise Delay';
}

// Path: subscribe
class TranslationsSubscribeEn {
	TranslationsSubscribeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Subscribe';
	String get buyNow => 'Buy Now';
	String get createOrder => 'Create Order';
	String get subscribeNow => 'Subscribe Now';
}

// Path: center
class TranslationsCenterEn {
	TranslationsCenterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Profile';
	String get changePassword => 'Change Password';
	String get myOrder => 'My Order';
	String get inviteReward => 'Invite Reward';
	String get logout => 'Logout';
	String get mySubscribe => 'My Subscribe';
	String mySubscribeWithName({required Object name}) => 'My Subscribe: ${name}';
	String get noSubscribe => 'No Subscription';
	String get expired => 'Subscription expired, please renew';
	String remainingDays({required Object days}) => 'Remaining days: ${days}';
	String usedTraffic({required Object used, required Object total}) => 'Used: ${used} / Total: ${total} GB';
	String get oldPassword => 'Old Password';
	String get newPassword => 'New Password';
	String get cancel => 'Cancel';
	String get confirm => 'Confirm';
}

// Path: knowledge
class TranslationsKnowledgeEn {
	TranslationsKnowledgeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Documentation';
	String get noData => 'No Documentation Available';
}

// Path: order
class TranslationsOrderEn {
	TranslationsOrderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Order List';
	String get noOrder => 'No Orders';
	late final TranslationsOrderDetailEn detail = TranslationsOrderDetailEn._(_root);
	late final TranslationsOrderActionEn action = TranslationsOrderActionEn._(_root);
}

// Path: invite
class TranslationsInviteEn {
	TranslationsInviteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Invite';
	String get totalCommission => 'Total Commission';
	String get registeredUsers => 'Registered Users';
	String get commissionRate => 'Commission Rate';
	String get pendingCommission => 'Pending Commission';
	String get inviteCode => 'Invite Code';
	String get generateInviteCode => 'Generate Code';
}

// Path: notice
class TranslationsNoticeEn {
	TranslationsNoticeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Notice';
}

// Path: login
class TranslationsLoginEn {
	TranslationsLoginEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsLoginTitleEn title = TranslationsLoginTitleEn._(_root);
	late final TranslationsLoginEmailEn email = TranslationsLoginEmailEn._(_root);
	late final TranslationsLoginPasswordEn password = TranslationsLoginPasswordEn._(_root);
	late final TranslationsLoginInviteCodeEn inviteCode = TranslationsLoginInviteCodeEn._(_root);
	late final TranslationsLoginEmailCodeEn emailCode = TranslationsLoginEmailCodeEn._(_root);
	late final TranslationsLoginActionEn action = TranslationsLoginActionEn._(_root);
	String get orLoginWith => 'Or login with';
}

// Path: forgotPassword
class TranslationsForgotPasswordEn {
	TranslationsForgotPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Forgot Password';
	String get resetPassword => 'Reset Password';
	String get subTitle => 'Please enter your registered email address, we will send you a verification code to help you reset your password';
	late final TranslationsForgotPasswordEmailEn email = TranslationsForgotPasswordEmailEn._(_root);
	late final TranslationsForgotPasswordEmailCodeEn emailCode = TranslationsForgotPasswordEmailCodeEn._(_root);
	late final TranslationsForgotPasswordNewPasswordEn newPassword = TranslationsForgotPasswordNewPasswordEn._(_root);
	late final TranslationsForgotPasswordConfirmPasswordEn confirmPassword = TranslationsForgotPasswordConfirmPasswordEn._(_root);
	late final TranslationsForgotPasswordActionEn action = TranslationsForgotPasswordActionEn._(_root);
}

// Path: update
class TranslationsUpdateEn {
	TranslationsUpdateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Update Available';
	String get message => 'A new version is available. Please update your app.';
	late final TranslationsUpdateActionEn action = TranslationsUpdateActionEn._(_root);
}

// Path: error
class TranslationsErrorEn {
	TranslationsErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Error';
	late final TranslationsErrorFieldEn field = TranslationsErrorFieldEn._(_root);
}

// Path: general.toggle
class TranslationsGeneralToggleEn {
	TranslationsGeneralToggleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get enabled => 'Enabled';
	String get disabled => 'Disabled';
}

// Path: general.state
class TranslationsGeneralStateEn {
	TranslationsGeneralStateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get disable => 'Disable';
}

// Path: profile.subscription
class TranslationsProfileSubscriptionEn {
	TranslationsProfileSubscriptionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get traffic => 'Traffic';
	String updatedTimeAgo({required Object timeago}) => 'Updated ${timeago}';
	String remainingDuration({required Object duration}) => '${duration} Days Remaining';
	String remainingTrafficSemanticLabel({required Object consumed, required Object total}) => '${consumed} of ${total} Traffic Consumed';
	String get expired => 'Expired';
	String get noTraffic => 'Out of Quota';
	String get upload => 'Upload';
	String get download => 'Download';
	String get total => 'Total';
	String get expireDate => 'Expire Date';
	late final TranslationsProfileSubscriptionStatusEn status = TranslationsProfileSubscriptionStatusEn._(_root);
}

// Path: profile.sortBy
class TranslationsProfileSortByEn {
	TranslationsProfileSortByEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get lastUpdate => 'Recently Updated';
	String get name => 'Alphabetically';
}

// Path: profile.add
class TranslationsProfileAddEn {
	TranslationsProfileAddEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonText => 'New Profile';
	String get shortBtnTxt => 'New Profile';
	String get fromClipboard => 'Add From Clipboard';
	String get scanQr => 'Scan QR Code';
	late final TranslationsProfileAddQrScannerEn qrScanner = TranslationsProfileAddQrScannerEn._(_root);
	String get manually => 'Manual Entry';
	String get addingProfileMsg => 'Adding Profile';
	String get failureMsg => 'Failed to Add Profile';
}

// Path: profile.update
class TranslationsProfileUpdateEn {
	TranslationsProfileUpdateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonTxt => 'Update';
	String get tooltip => 'Update Profile';
	String get updateSubscriptions => 'Update Subscriptions';
	String get failureMsg => 'Failed to Update Profile';
	String get successMsg => 'Profile Updated Successfully';
	String namedFailureMsg({required Object name}) => 'Failed to Update "${name}"';
	String namedSuccessMsg({required Object name}) => '"${name}" Updated Successfully';
}

// Path: profile.share
class TranslationsProfileShareEn {
	TranslationsProfileShareEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonText => 'Share';
	String get exportToClipboardSuccess => 'Exported to Clipboard';
	String get exportSubLinkToClipboard => 'Export Subscription Link to Clipboard';
	String get subLinkQrCode => 'Subscription Link QR Code';
	String get exportConfigToClipboard => 'Export Configuration to Clipboard';
	String get exportConfigToClipboardSuccess => 'Configuration Copied to Clipboard';
}

// Path: profile.edit
class TranslationsProfileEditEn {
	TranslationsProfileEditEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonTxt => 'Edit';
	String get selectActiveTxt => 'Select Active Profile';
}

// Path: profile.delete
class TranslationsProfileDeleteEn {
	TranslationsProfileDeleteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonTxt => 'Delete';
	String get confirmationMsg => 'Delete Profile Permanently?';
	String get successMsg => 'Profile Deleted Successfully';
}

// Path: profile.save
class TranslationsProfileSaveEn {
	TranslationsProfileSaveEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buttonText => 'Save';
	String get successMsg => 'Profile Saved Successfully';
	String get failureMsg => 'Failed to Save Profile';
}

// Path: profile.detailsForm
class TranslationsProfileDetailsFormEn {
	TranslationsProfileDetailsFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get nameLabel => 'Name';
	String get nameHint => 'Profile Name';
	String get urlLabel => 'URL';
	String get urlHint => 'Full Config URL';
	String get emptyNameMsg => 'Name Is Required';
	String get invalidUrlMsg => 'Invalid URL';
	String get lastUpdate => 'Last Update';
	String get updateInterval => 'Auto Update';
	String get updateIntervalDialogTitle => 'Auto Update Interval (in Hours)';
}

// Path: proxies.sortOptions
class TranslationsProxiesSortOptionsEn {
	TranslationsProxiesSortOptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unsorted => 'Default';
	String get name => 'Alphabetically';
	String get delay => 'By Delay';
}

// Path: proxies.delaySemantics
class TranslationsProxiesDelaySemanticsEn {
	TranslationsProxiesDelaySemanticsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String result({required Object delay}) => 'Delay: ${delay}ms';
	String get timeout => 'Delay Test Timeout';
	String get testing => 'Delay: Testing...';
}

// Path: proxies.ipInfoSemantics
class TranslationsProxiesIpInfoSemanticsEn {
	TranslationsProxiesIpInfoSemanticsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get address => 'IP Address';
	String get country => 'Country';
}

// Path: settings.general
class TranslationsSettingsGeneralEn {
	TranslationsSettingsGeneralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sectionTitle => 'General';
	String get locale => 'Language';
	String get region => 'Region';
	String get regionMsg => 'Helps set default options to bypass domestic addresses';
	late final TranslationsSettingsGeneralRegionsEn regions = TranslationsSettingsGeneralRegionsEn._(_root);
	String get themeMode => 'Theme Mode';
	late final TranslationsSettingsGeneralThemeModesEn themeModes = TranslationsSettingsGeneralThemeModesEn._(_root);
	String get enableAnalytics => 'Enable Analytics';
	String get enableAnalyticsMsg => 'Give permission to collect analytics and send crash reports to improve the app';
	String get autoStart => 'Start At Login';
	String get silentStart => 'Start Minimized';
	String get openWorkingDir => 'Open Working Directory';
	String get ignoreBatteryOptimizations => 'Disable Battery Optimization';
	String get ignoreBatteryOptimizationsMsg => 'Remove Restrictions For Optimal VPN Performance';
	String get dynamicNotification => 'Display Speed in Notification';
	String get hapticFeedback => 'Haptic Feedback';
	String get autoIpCheck => 'Automatically Check Connection IP';
}

// Path: settings.advanced
class TranslationsSettingsAdvancedEn {
	TranslationsSettingsAdvancedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sectionTitle => 'Advanced';
	String get debugMode => 'Debug Mode';
	String get debugModeMsg => 'Restart the app for applying this change';
	String get memoryLimit => 'Memory Limit';
	String get memoryLimitMsg => 'Enable if you\'re experiencing out of memory errors or frequent app crash';
	String get resetTunnel => 'Reset VPN Profile';
}

// Path: settings.network
class TranslationsSettingsNetworkEn {
	TranslationsSettingsNetworkEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get perAppProxyPageTitle => 'Per-App Proxy';
	late final TranslationsSettingsNetworkPerAppProxyModesEn perAppProxyModes = TranslationsSettingsNetworkPerAppProxyModesEn._(_root);
	String get showSystemApps => 'Show System Apps';
	String get hideSystemApps => 'Hide System Apps';
	String get clearSelection => 'Clear Selection';
}

// Path: settings.geoAssets
class TranslationsSettingsGeoAssetsEn {
	TranslationsSettingsGeoAssetsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Routing Assets';
	String get geoip => 'GeoIP';
	String get geosite => 'GeoSite';
	String version({required Object version}) => 'Version ${version}';
	String get fileMissing => 'File Missing';
	String get update => 'Update';
	String get download => 'Download';
	String get failureMsg => 'Failed to Update Asset';
	String get successMsg => 'Successfully Updated Asset';
	String get addRecommended => 'Add Recommended Assets';
	String get missingGeoAssetsMsg => 'Selected Routing Assets\' files are missing. Either download them or choose existing ones';
}

// Path: tray.status
class TranslationsTrayStatusEn {
	TranslationsTrayStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get connect => 'Connect';
	String get connecting => 'Connecting';
	String get disconnect => 'Disconnect';
	String get disconnecting => 'Disconnecting';
}

// Path: failure.clash
class TranslationsFailureClashEn {
	TranslationsFailureClashEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Error';
	String core({required Object reason}) => 'Clash Error ${reason}';
}

// Path: failure.singbox
class TranslationsFailureSingboxEn {
	TranslationsFailureSingboxEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Service Error';
	String get serviceNotRunning => 'Service is Not Running';
	String get missingPrivilege => 'Missing Privilege';
	String get missingPrivilegeMsg => 'VPN Mode Requires Administrator Privileges. Either relaunch the app as administrator or change service mode.';
	String get missingGeoAssets => 'Missing Geo Assets';
	String get missingGeoAssetsMsg => 'Geo Assets Are Missing. Consider changing active asset or download selected one in the settings.';
	String get invalidConfigOptions => 'Invalid Configuration Options';
	String get invalidConfig => 'Invalid Configuration';
	String get create => 'Service Creation Error';
	String get start => 'Service Startup Error';
}

// Path: failure.connectivity
class TranslationsFailureConnectivityEn {
	TranslationsFailureConnectivityEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Failure';
	String get missingVpnPermission => 'Missing VPN Permission';
	String get missingNotificationPermission => 'Missing Notification Permission';
	String get core => 'Core Error';
}

// Path: failure.profiles
class TranslationsFailureProfilesEn {
	TranslationsFailureProfilesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Error';
	String get notFound => 'Profile Not Found';
	String get invalidConfig => 'Invalid Configs';
	String get invalidUrl => 'Invalid URL';
}

// Path: failure.connection
class TranslationsFailureConnectionEn {
	TranslationsFailureConnectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Connection Error';
	String get timeout => 'Connection Timeout';
	String get badResponse => 'Bad Response';
	String get connectionError => 'Connection Error';
	String get badCertificate => 'Bad Certificate';
}

// Path: failure.geoAssets
class TranslationsFailureGeoAssetsEn {
	TranslationsFailureGeoAssetsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'Unexpected Error';
	String get notUpdate => 'No Update Available';
	String get activeNotFound => 'Active Geo Asset Not Found';
}

// Path: config.serviceModes
class TranslationsConfigServiceModesEn {
	TranslationsConfigServiceModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get proxy => 'Proxy Service Only';
	String get systemProxy => 'Set System Proxy';
	String get tun => 'VPN';
	String get tunService => 'VPN Service';
}

// Path: config.shortServiceModes
class TranslationsConfigShortServiceModesEn {
	TranslationsConfigShortServiceModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get proxy => 'Proxy';
	String get systemProxy => 'System Proxy';
	String get tun => 'VPN';
	String get tunService => 'VPN Service';
}

// Path: config.section
class TranslationsConfigSectionEn {
	TranslationsConfigSectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get route => 'Route Options';
	String get dns => 'DNS Options';
	String get inbound => 'Inbound Options';
	String get mux => 'MultiPlexer';
	String get outbound => 'Outbound Options';
	String get tlsTricks => 'TLS Tricks';
	String get warp => 'WARP Options';
	String get misc => 'Misc Options';
}

// Path: config.warpConsent
class TranslationsConfigWarpConsentEn {
	TranslationsConfigWarpConsentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Cloudflare WARP Consent';
	TextSpan description({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
		const TextSpan(text: 'Cloudflare WARP is a Free WireGuard VPN Provider. By enabling this option you are agreeing to the Cloudflare WARP\'s '),
		tos('Terms of Service'),
		const TextSpan(text: ' and '),
		privacy('Privacy Policy'),
		const TextSpan(text: '.'),
	]);
}

// Path: config.ipv6Modes
class TranslationsConfigIpv6ModesEn {
	TranslationsConfigIpv6ModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get disable => 'Disable';
	String get enable => 'Enable';
	String get prefer => 'Preferred';
	String get only => 'Exclusive';
}

// Path: config.warpDetourModes
class TranslationsConfigWarpDetourModesEn {
	TranslationsConfigWarpDetourModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get proxyOverWarp => 'Detour Proxies Through WARP';
	String get warpOverProxy => 'Detour WARP Through Proxies';
	String get inbound => 'Detour WARP Through Proxies';
	String get outbound => 'Detour Proxies Through WARP';
}

// Path: order.detail
class TranslationsOrderDetailEn {
	TranslationsOrderDetailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pageTitle => 'Order Details';
	late final TranslationsOrderDetailStatusEn status = TranslationsOrderDetailStatusEn._(_root);
	String product({required Object name}) => 'Product: ${name}';
	String price({required Object amount}) => 'Price: ${amount}';
	String orderNumber({required Object number}) => 'Order No.: ${number}';
	String createTime({required Object time}) => 'Created: ${time}';
}

// Path: order.action
class TranslationsOrderActionEn {
	TranslationsOrderActionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cancel => 'Cancel Order';
	String get pay => 'Pay Now';
}

// Path: login.title
class TranslationsLoginTitleEn {
	TranslationsLoginTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get register => 'Create Account';
	String get login => 'Welcome Back';
}

// Path: login.email
class TranslationsLoginEmailEn {
	TranslationsLoginEmailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Email';
	String get hint => 'Enter your email address';
}

// Path: login.password
class TranslationsLoginPasswordEn {
	TranslationsLoginPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Password';
	late final TranslationsLoginPasswordHintEn hint = TranslationsLoginPasswordHintEn._(_root);
}

// Path: login.inviteCode
class TranslationsLoginInviteCodeEn {
	TranslationsLoginInviteCodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Invite Code';
	String get hint => 'Optional';
}

// Path: login.emailCode
class TranslationsLoginEmailCodeEn {
	TranslationsLoginEmailCodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Email Code';
	String get hint => 'Enter verification code';
	String get send => 'Get Code';
}

// Path: login.action
class TranslationsLoginActionEn {
	TranslationsLoginActionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get register => 'Register';
	String get login => 'Login';
	String get forgotPassword => 'Forgot Password?';
	String get switchToLogin => 'Have an account? Login';
	String get switchToRegister => 'No account? Register';
}

// Path: forgotPassword.email
class TranslationsForgotPasswordEmailEn {
	TranslationsForgotPasswordEmailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Email';
	String get hint => 'Enter your email address';
}

// Path: forgotPassword.emailCode
class TranslationsForgotPasswordEmailCodeEn {
	TranslationsForgotPasswordEmailCodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Email Code';
	String get hint => 'Enter verification code';
	String get send => 'Get Code';
}

// Path: forgotPassword.newPassword
class TranslationsForgotPasswordNewPasswordEn {
	TranslationsForgotPasswordNewPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'New Password';
	String get hint => 'Enter new password';
}

// Path: forgotPassword.confirmPassword
class TranslationsForgotPasswordConfirmPasswordEn {
	TranslationsForgotPasswordConfirmPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Confirm Password';
	String get hint => 'Enter new password again';
}

// Path: forgotPassword.action
class TranslationsForgotPasswordActionEn {
	TranslationsForgotPasswordActionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get send => 'Send';
	String get switchToLogin => 'Have an account? Login';
}

// Path: update.action
class TranslationsUpdateActionEn {
	TranslationsUpdateActionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get update => 'Update';
	String get later => 'Later';
}

// Path: error.field
class TranslationsErrorFieldEn {
	TranslationsErrorFieldEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Email';
	String get password => 'Password';
}

// Path: profile.subscription.status
class TranslationsProfileSubscriptionStatusEn {
	TranslationsProfileSubscriptionStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get permanent => 'Permanent';
	String get expired => 'Subscription expired, please renew';
	String remainingDays({required Object days}) => '${days} days remaining';
}

// Path: profile.add.qrScanner
class TranslationsProfileAddQrScannerEn {
	TranslationsProfileAddQrScannerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get permissionDeniedError => 'Permission Denied';
	String get unexpectedError => 'Something Went Wrong';
	String get torchSemanticLabel => 'Flash Light';
	String get facingSemanticLabel => 'Camera Facing';
	String get permissionRequest => 'Permission to camera to scan QR Code';
}

// Path: settings.general.regions
class TranslationsSettingsGeneralRegionsEn {
	TranslationsSettingsGeneralRegionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ir => 'Iran (ir)';
	String get cn => 'China (cn)';
	String get ru => 'Russia (ru)';
	String get af => 'Afghanistan (af)';
	String get other => 'Other';
}

// Path: settings.general.themeModes
class TranslationsSettingsGeneralThemeModesEn {
	TranslationsSettingsGeneralThemeModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get system => 'Follow System Theme';
	String get dark => 'Dark Mode';
	String get light => 'Light Mode';
	String get black => 'Black Mode';
}

// Path: settings.network.perAppProxyModes
class TranslationsSettingsNetworkPerAppProxyModesEn {
	TranslationsSettingsNetworkPerAppProxyModesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get off => 'All';
	String get offMsg => 'Proxy All Apps';
	String get include => 'Proxy';
	String get includeMsg => 'Proxy Only Selected Apps';
	String get exclude => 'Bypass';
	String get excludeMsg => 'Do Not Proxy Selected Apps';
}

// Path: order.detail.status
class TranslationsOrderDetailStatusEn {
	TranslationsOrderDetailStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pending => 'Pending Payment';
	String get processing => 'Processing';
	String get cancelled => 'Cancelled';
	String get completed => 'Completed';
	String get refunded => 'Refunded';
}

// Path: login.password.hint
class TranslationsLoginPasswordHintEn {
	TranslationsLoginPasswordHintEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get register => 'Set your password';
	String get login => 'Enter your password';
}

// Path: <root>
class TranslationsEs extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final TranslationsEs _root = this; // ignore: unused_field

	// Translations
	@override late final TranslationsGeneralEs general = TranslationsGeneralEs._(_root);
	@override late final TranslationsIntroEs intro = TranslationsIntroEs._(_root);
	@override late final TranslationsHomeEs home = TranslationsHomeEs._(_root);
	@override late final TranslationsProfileEs profile = TranslationsProfileEs._(_root);
	@override late final TranslationsProxiesEs proxies = TranslationsProxiesEs._(_root);
	@override late final TranslationsLogsEs logs = TranslationsLogsEs._(_root);
	@override late final TranslationsSettingsEs settings = TranslationsSettingsEs._(_root);
	@override late final TranslationsAboutEs about = TranslationsAboutEs._(_root);
	@override late final TranslationsAppUpdateEs appUpdate = TranslationsAppUpdateEs._(_root);
	@override late final TranslationsTrayEs tray = TranslationsTrayEs._(_root);
	@override late final TranslationsFailureEs failure = TranslationsFailureEs._(_root);
	@override late final TranslationsPlayEs play = TranslationsPlayEs._(_root);
	@override late final TranslationsConnectionEs connection = TranslationsConnectionEs._(_root);
	@override late final TranslationsConfigEs config = TranslationsConfigEs._(_root);
}

// Path: general
class TranslationsGeneralEs extends TranslationsGeneralEn {
	TranslationsGeneralEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Hiddify';
	@override String get reset => 'Renicio';
	@override late final TranslationsGeneralToggleEs toggle = TranslationsGeneralToggleEs._(_root);
	@override late final TranslationsGeneralStateEs state = TranslationsGeneralStateEs._(_root);
	@override String get sort => 'Clasificar';
	@override String get sortBy => 'Ordenar por';
	@override String get addToClipboard => 'Añadir al portapapeles';
	@override String get notSet => 'No establecido';
	@override String get agree => 'Aceptar';
	@override String get decline => 'Rechazar';
	@override String get unknown => 'Desconocido';
	@override String get timeout => 'Se acabó el tiempo';
}

// Path: intro
class TranslationsIntroEs extends TranslationsIntroEn {
	TranslationsIntroEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override TextSpan termsAndPolicyCaution({required InlineSpanBuilder tap}) => TextSpan(children: [
		const TextSpan(text: 'al continuar, aceptas '),
		tap(_root.about.termsAndConditions),
	]);
	@override String get start => 'Comenzar';
}

// Path: home
class TranslationsHomeEs extends TranslationsHomeEn {
	TranslationsHomeEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Hogar';
	@override String get emptyProfilesMsg => 'Comience agregando un perfil de suscripción';
	@override String get noActiveProfileMsg => 'Elige un perfil';
}

// Path: profile
class TranslationsProfileEs extends TranslationsProfileEn {
	TranslationsProfileEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get overviewPageTitle => 'Perfiles';
	@override String get detailsPageTitle => 'Perfil';
	@override String activeProfileNameSemanticLabel({required Object name}) => 'Nombre del perfil activo: "${name}".';
	@override String get activeProfileBtnSemanticLabel => 'Ver todos los perfiles';
	@override String nonActiveProfileBtnSemanticLabel({required Object name}) => 'Seleccione "${name}" como perfil activo.';
	@override late final TranslationsProfileSubscriptionEs subscription = TranslationsProfileSubscriptionEs._(_root);
	@override late final TranslationsProfileSortByEs sortBy = TranslationsProfileSortByEs._(_root);
	@override late final TranslationsProfileAddEs add = TranslationsProfileAddEs._(_root);
	@override late final TranslationsProfileUpdateEs update = TranslationsProfileUpdateEs._(_root);
	@override late final TranslationsProfileShareEs share = TranslationsProfileShareEs._(_root);
	@override late final TranslationsProfileEditEs edit = TranslationsProfileEditEs._(_root);
	@override late final TranslationsProfileDeleteEs delete = TranslationsProfileDeleteEs._(_root);
	@override late final TranslationsProfileSaveEs save = TranslationsProfileSaveEs._(_root);
	@override late final TranslationsProfileDetailsFormEs detailsForm = TranslationsProfileDetailsFormEs._(_root);
}

// Path: proxies
class TranslationsProxiesEs extends TranslationsProxiesEn {
	TranslationsProxiesEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Proxies';
	@override String get emptyProxiesMsg => 'No proxies disponibles';
	@override String get delayTestTooltip => 'Prueba de Restraso';
	@override String get sortTooltip => 'Ordenar Proxies';
	@override late final TranslationsProxiesSortOptionsEs sortOptions = TranslationsProxiesSortOptionsEs._(_root);
}

// Path: logs
class TranslationsLogsEs extends TranslationsLogsEn {
	TranslationsLogsEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Registros';
	@override String get filterHint => 'Filtrar';
	@override String get allLevelsFilter => 'Todo';
	@override String get shareCoreLogs => 'Compartir registros principales';
	@override String get shareAppLogs => 'Compartir registros de aplicaciones';
	@override String get pauseTooltip => 'Pausa';
	@override String get resumeTooltip => 'reanudar';
	@override String get clearTooltip => 'Claro';
}

// Path: settings
class TranslationsSettingsEs extends TranslationsSettingsEn {
	TranslationsSettingsEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Ajustes';
	@override String get requiresRestartMsg => 'Para que esto surta efecto, reinicie la aplicación.';
	@override String get experimental => 'Experimental';
	@override String get experimentalMsg => 'Las funciones con el indicador Experimental aún están en desarrollo y pueden causar problemas.';
	@override late final TranslationsSettingsGeneralEs general = TranslationsSettingsGeneralEs._(_root);
	@override late final TranslationsSettingsAdvancedEs advanced = TranslationsSettingsAdvancedEs._(_root);
	@override late final TranslationsSettingsNetworkEs network = TranslationsSettingsNetworkEs._(_root);
	@override late final TranslationsSettingsGeoAssetsEs geoAssets = TranslationsSettingsGeoAssetsEs._(_root);
}

// Path: about
class TranslationsAboutEs extends TranslationsAboutEn {
	TranslationsAboutEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Acerca de';
	@override String get version => 'Versión';
	@override String get sourceCode => 'Código fuente';
	@override String get telegramChannel => 'Canal de telegramas';
	@override String get checkForUpdate => 'Buscar actualizaciones';
	@override String get privacyPolicy => 'Política de privacidad';
	@override String get termsAndConditions => 'Términos y condiciones';
}

// Path: appUpdate
class TranslationsAppUpdateEs extends TranslationsAppUpdateEn {
	TranslationsAppUpdateEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get notAvailableMsg => 'Ya estas usando la última versión.';
	@override String get dialogTitle => 'Actualización disponible';
	@override String get updateMsg => 'Hay disponible una nueva versión de ${_root.general.appTitle}. ¿Te gustaría actualizar ahora?';
	@override String get currentVersionLbl => 'Versión actual';
	@override String get newVersionLbl => 'Nueva versión';
	@override String get updateNowBtnTxt => 'Actualizar ahora';
	@override String get laterBtnTxt => 'Más tarde';
	@override String get ignoreBtnTxt => 'Ignorar';
}

// Path: tray
class TranslationsTrayEs extends TranslationsTrayEn {
	TranslationsTrayEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Panel';
	@override String get quit => 'Abandonar';
	@override String get open => 'Abierto';
	@override late final TranslationsTrayStatusEs status = TranslationsTrayStatusEs._(_root);
}

// Path: failure
class TranslationsFailureEs extends TranslationsFailureEn {
	TranslationsFailureEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Error inesperado';
	@override late final TranslationsFailureClashEs clash = TranslationsFailureClashEs._(_root);
	@override late final TranslationsFailureSingboxEs singbox = TranslationsFailureSingboxEs._(_root);
	@override late final TranslationsFailureConnectivityEs connectivity = TranslationsFailureConnectivityEs._(_root);
	@override late final TranslationsFailureProfilesEs profiles = TranslationsFailureProfilesEs._(_root);
	@override late final TranslationsFailureConnectionEs connection = TranslationsFailureConnectionEs._(_root);
	@override late final TranslationsFailureGeoAssetsEs geoAssets = TranslationsFailureGeoAssetsEs._(_root);
}

// Path: play
class TranslationsPlayEs extends TranslationsPlayEn {
	TranslationsPlayEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hiddify Next (vista previa)';
	@override String get short_description => 'Auto, SSH, VLESS, VMess, Trojan, Reality, Sing-Box, Clash, XRay, Shadowsocks';
	@override String get full_description => 'El objetivo clave de HiddifyNext es proporcionar un cliente de túnel seguro, fácil de usar y eficiente. Le permite enrutar todo el tráfico o el tráfico de aplicaciones seleccionadas a un servidor remoto de su elección, utilizando el permiso del servicio VPN.Nota: No proporcionamos ningún servidor; Los usuarios deben garantizar que sus actividades en línea permanezcan privadas mediante el uso de su propio servidor autohospedado o servidores confiables. Soportamos servidores con:- Enlace de suscripción normal a V2ray/Xray- Enlace de suscripción a Choque- Enlace de suscripción a Sing-Box¿Cuáles son nuestras características únicas? - Fácil de usar - Optimizado y Rápido - Seleccionar automáticamente LowestPing - Mostrar información de uso del usuario. - Importe fácilmente un subvínculo con un solo clic mediante enlaces profundos - Gratis y sin anuncios - Cambie fácilmente los subvínculos de usuario - más y másApoyo:- Todos los protocolos soportados por Sing-Box- VLESS + xtls realidad, visión- VMESS- troyano- Calcetines Shoadow- Realidad-V2ray-Histria2-TUIC-SSH- SombraTLSEl código fuente existe en https://github.com/hiddify/Hiddify-NextEl núcleo de la aplicación se basa en sing-box de código abierto.Descripción del permiso:- Servicio VPN: como el objetivo de esta aplicación es proporcionar un cliente de túnel seguro, fácil de usar y eficiente, necesitamos este permiso para poder enrutar el tráfico a través del túnel al servidor remoto.- CONSULTAR TODOS LOS PAQUETES: este permiso se utiliza para permitir a los usuarios incluir o excluir aplicaciones específicas para la tunelización.- RECIBIR ARRANQUE COMPLETADO: este permiso se puede habilitar o deshabilitar desde la configuración de la aplicación para activar esta aplicación al iniciar el dispositivo.- PUBLICAR NOTIFICACIONES: este permiso es esencial ya que empleamos un servicio en primer plano para garantizar el funcionamiento continuo del servicio VPN.- Esta aplicación está libre de publicidad. Los datos analíticos y de fallos solo se producen con el consentimiento explícito del usuario en el primer uso de la aplicación.';
}

// Path: connection
class TranslationsConnectionEs extends TranslationsConnectionEn {
	TranslationsConnectionEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get tapToConnect => 'Toque para conectarse';
	@override String get connecting => 'Conectando';
	@override String get disconnecting => 'Desconectando';
	@override String get connected => 'Conectado';
	@override String get experimentalNotice => 'Funciones experimentales en uso';
	@override String get experimentalNoticeMsg => 'Ha habilitado algunas funciones experimentales que podrían afectar la calidad de la conexión y provocar errores inesperados. Siempre puede cambiar o restablecer estas opciones desde la página de opciones de configuración.';
	@override String get disableExperimentalNotice => 'No volver a mostrar';
}

// Path: config
class TranslationsConfigEs extends TranslationsConfigEn {
	TranslationsConfigEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get resetBtn => 'Restablecer opciones';
	@override String get serviceMode => 'Modo de servicio';
	@override late final TranslationsConfigServiceModesEs serviceModes = TranslationsConfigServiceModesEs._(_root);
	@override late final TranslationsConfigSectionEs section = TranslationsConfigSectionEs._(_root);
	@override late final TranslationsConfigWarpConsentEs warpConsent = TranslationsConfigWarpConsentEs._(_root);
	@override String get pageTitle => 'Opciones de configuración';
	@override String get logLevel => 'Registro del Nivel';
	@override String get resolveDestination => 'Resolver Destino';
	@override String get ipv6Mode => 'Ruta IPv6';
	@override late final TranslationsConfigIpv6ModesEs ipv6Modes = TranslationsConfigIpv6ModesEs._(_root);
	@override String get remoteDnsAddress => 'DNS Remoto';
	@override String get remoteDnsDomainStrategy => 'Estrategia de dominio DNS remoto';
	@override String get directDnsAddress => 'DNS Directo';
	@override String get directDnsDomainStrategy => 'Estrategia de dominio DNS directo';
	@override String get mixedPort => 'Puerto Mixto';
	@override String get localDnsPort => 'Puerto DNS local';
	@override String get allowConnectionFromLan => 'Permitir conexión desde LAN';
	@override String get tunImplementation => 'Implementación de TUN';
	@override String get mtu => 'MTU';
	@override String get connectionTestUrl => 'URL de prueba de conexión';
	@override String get urlTestInterval => 'URL Prueba de Intervalo';
	@override String get enableClashApi => 'Habilitar API de choque';
	@override String get clashApiPort => 'Puerto API de choque';
	@override String get enableTun => 'Habilitar sintonización';
	@override String get setSystemProxy => 'Establecer proxy del sistema';
	@override String get enableDnsRouting => 'Habilitar enrutamiento DNS';
	@override String get enableFakeDns => 'Habilitar DNS falso';
	@override String get bypassLan => 'Omitir LAN';
	@override String get strictRoute => 'Ruta estricta';
	@override String get enableTlsFragment => 'Habilitar fragmento TLS';
	@override String get tlsFragmentSize => 'Tamaño del fragmento TLS';
	@override String get tlsFragmentSleep => 'Sueño de fragmento TLS';
	@override String get enableTlsMixedSniCase => 'Habilitar caso SNI mixto TLS';
	@override String get enableTlsPadding => 'Habilitar el relleno TLS';
	@override String get tlsPaddingSize => 'Relleno TLS';
	@override String get enableMux => 'Enable Mux';
	@override String get muxProtocol => 'Mux Protocol';
	@override String get muxMaxStreams => 'Max Concurrent Streams';
	@override String get enableWarp => 'Enable WARP';
	@override String get warpDetourMode => 'Detour Mode';
	@override late final TranslationsConfigWarpDetourModesEs warpDetourModes = TranslationsConfigWarpDetourModesEs._(_root);
	@override String get warpLicenseKey => 'License Key';
	@override String get warpCleanIp => 'Clean IP';
	@override String get warpPort => 'Port';
	@override String get warpNoise => 'Noise';
}

// Path: general.toggle
class TranslationsGeneralToggleEs extends TranslationsGeneralToggleEn {
	TranslationsGeneralToggleEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get enabled => 'Activado';
	@override String get disabled => 'Desactivado';
}

// Path: general.state
class TranslationsGeneralStateEs extends TranslationsGeneralStateEn {
	TranslationsGeneralStateEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get disable => 'Desactivar';
}

// Path: profile.subscription
class TranslationsProfileSubscriptionEs extends TranslationsProfileSubscriptionEn {
	TranslationsProfileSubscriptionEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get traffic => 'Tráfico';
	@override String updatedTimeAgo({required Object timeago}) => 'Actualizado ${timeago}';
	@override String remainingDuration({required Object duration}) => '${duration} días restantes';
	@override String remainingTrafficSemanticLabel({required Object consumed, required Object total}) => '${consumed} de ${total} Tráfico Consumido';
	@override String get expired => 'Caducado';
	@override String get noTraffic => 'Fuera de cuota';
}

// Path: profile.sortBy
class TranslationsProfileSortByEs extends TranslationsProfileSortByEn {
	TranslationsProfileSortByEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get lastUpdate => 'Recientemente actualizado';
	@override String get name => 'Alfabéticamente';
}

// Path: profile.add
class TranslationsProfileAddEs extends TranslationsProfileAddEn {
	TranslationsProfileAddEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Nuevo perfil';
	@override String get shortBtnTxt => 'Nuevo perfil';
	@override String get fromClipboard => 'Agregar desde el portapapeles';
	@override String get scanQr => 'Escanear código QR';
	@override late final TranslationsProfileAddQrScannerEs qrScanner = TranslationsProfileAddQrScannerEs._(_root);
	@override String get manually => 'Entrada manual';
	@override String get addingProfileMsg => 'Agregar perfil';
	@override String get failureMsg => 'No se pudo agregar el perfil';
}

// Path: profile.update
class TranslationsProfileUpdateEs extends TranslationsProfileUpdateEn {
	TranslationsProfileUpdateEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Actualizar';
	@override String get tooltip => 'Actualización del perfil';
	@override String get updateSubscriptions => 'Actualizar suscripciones';
	@override String get failureMsg => 'No se pudo actualizar el perfil';
	@override String get successMsg => 'Perfil actualizado con éxito';
	@override String namedFailureMsg({required Object name}) => 'No se pudo actualizar "${name}"';
	@override String namedSuccessMsg({required Object name}) => '"${name}" actualizado exitosamente';
}

// Path: profile.share
class TranslationsProfileShareEs extends TranslationsProfileShareEn {
	TranslationsProfileShareEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Compartir';
	@override String get exportToClipboardSuccess => 'Exportado al portapapeles';
	@override String get exportSubLinkToClipboard => 'Exportar enlace de suscripción al portapapeles';
	@override String get subLinkQrCode => 'Código QR del enlace de suscripción';
	@override String get exportConfigToClipboard => 'Exportar configuración al portapapeles';
	@override String get exportConfigToClipboardSuccess => 'Configuración copiada al portapapeles';
}

// Path: profile.edit
class TranslationsProfileEditEs extends TranslationsProfileEditEn {
	TranslationsProfileEditEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Editar';
	@override String get selectActiveTxt => 'Seleccionar perfil activo';
}

// Path: profile.delete
class TranslationsProfileDeleteEs extends TranslationsProfileDeleteEn {
	TranslationsProfileDeleteEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Borrar';
	@override String get confirmationMsg => '¿Eliminar perfil permanentemente?';
	@override String get successMsg => 'Perfil eliminado exitosamente';
}

// Path: profile.save
class TranslationsProfileSaveEs extends TranslationsProfileSaveEn {
	TranslationsProfileSaveEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Ahorrar';
	@override String get successMsg => 'Perfil guardado exitosamente';
	@override String get failureMsg => 'No se pudo guardar el perfil';
}

// Path: profile.detailsForm
class TranslationsProfileDetailsFormEs extends TranslationsProfileDetailsFormEn {
	TranslationsProfileDetailsFormEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get nameLabel => 'Nombre';
	@override String get nameHint => 'Nombre de perfil';
	@override String get urlLabel => 'URL';
	@override String get urlHint => 'URL de configuración completa';
	@override String get emptyNameMsg => 'Se requiere el nombre';
	@override String get invalidUrlMsg => 'URL invalida';
	@override String get lastUpdate => 'Última actualización';
	@override String get updateInterval => 'Actualización automática';
	@override String get updateIntervalDialogTitle => 'Intervalo de actualización automática (en horas)';
}

// Path: proxies.sortOptions
class TranslationsProxiesSortOptionsEs extends TranslationsProxiesSortOptionsEn {
	TranslationsProxiesSortOptionsEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get unsorted => 'Por Defecto';
	@override String get name => 'Alfabéticamente';
	@override String get delay => 'Por retraso';
}

// Path: settings.general
class TranslationsSettingsGeneralEs extends TranslationsSettingsGeneralEn {
	TranslationsSettingsGeneralEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'General';
	@override String get locale => 'Idioma';
	@override String get region => 'Región';
	@override String get regionMsg => 'Ayuda a configurar opciones predeterminadas para omitir direcciones nacionales';
	@override late final TranslationsSettingsGeneralRegionsEs regions = TranslationsSettingsGeneralRegionsEs._(_root);
	@override String get themeMode => 'Modo temático';
	@override late final TranslationsSettingsGeneralThemeModesEs themeModes = TranslationsSettingsGeneralThemeModesEs._(_root);
	@override String get enableAnalytics => 'Habilitar análisis';
	@override String get enableAnalyticsMsg => 'Dar permiso para recopilar análisis y enviar informes de fallos para mejorar la aplicación.';
	@override String get autoStart => 'Inicie en el arranque';
	@override String get silentStart => 'Inicio Silencioso';
	@override String get openWorkingDir => 'Abrir directorio de trabajo';
	@override String get ignoreBatteryOptimizations => 'Deshabilitar la optimización de la batería';
	@override String get ignoreBatteryOptimizationsMsg => 'Elimine las restricciones para un rendimiento VPN óptimo';
	@override String get dynamicNotification => 'Mostrar velocidad en la notificación';
}

// Path: settings.advanced
class TranslationsSettingsAdvancedEs extends TranslationsSettingsAdvancedEn {
	TranslationsSettingsAdvancedEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Avanzado';
	@override String get debugMode => 'Modo de depuración';
	@override String get debugModeMsg => 'Reinicie la aplicación para aplicar este cambio.';
	@override String get memoryLimit => 'Limite de memoria';
	@override String get memoryLimitMsg => 'Habilítelo si experimenta errores de falta de memoria o fallas frecuentes de la aplicación';
	@override String get resetTunnel => 'Restablecer perfil VPN';
}

// Path: settings.network
class TranslationsSettingsNetworkEs extends TranslationsSettingsNetworkEn {
	TranslationsSettingsNetworkEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get perAppProxyPageTitle => 'Proxy por aplicación';
	@override late final TranslationsSettingsNetworkPerAppProxyModesEs perAppProxyModes = TranslationsSettingsNetworkPerAppProxyModesEs._(_root);
	@override String get showSystemApps => 'Mostrar aplicaciones del sistema';
	@override String get hideSystemApps => 'Ocultar aplicaciones del sistema';
	@override String get clearSelection => 'Selección clara';
}

// Path: settings.geoAssets
class TranslationsSettingsGeoAssetsEs extends TranslationsSettingsGeoAssetsEn {
	TranslationsSettingsGeoAssetsEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Activos de enrutamiento';
	@override String get geoip => 'GeoIP';
	@override String get geosite => 'Geosite';
	@override String version({required Object version}) => 'Versión ${version}';
	@override String get fileMissing => 'Archivo faltante';
	@override String get update => 'Actualizar';
	@override String get download => 'Descargar';
	@override String get failureMsg => 'No se pudo actualizar el activo';
	@override String get successMsg => 'Activo actualizado correctamente';
	@override String get addRecommended => 'Agregar activos recomendados';
	@override String get missingGeoAssetsMsg => 'Faltan los archivos de los recursos de enrutamiento seleccionados. Descárgalos o elige los existentes.';
}

// Path: tray.status
class TranslationsTrayStatusEs extends TranslationsTrayStatusEn {
	TranslationsTrayStatusEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get connect => 'Conectar';
	@override String get connecting => 'Conectando';
	@override String get disconnect => 'Desconectado';
	@override String get disconnecting => 'Desconectando';
}

// Path: failure.clash
class TranslationsFailureClashEs extends TranslationsFailureClashEn {
	TranslationsFailureClashEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Error inesperado';
	@override String core({required Object reason}) => 'Error de choque ${reason}';
}

// Path: failure.singbox
class TranslationsFailureSingboxEs extends TranslationsFailureSingboxEn {
	TranslationsFailureSingboxEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Error de servicio inesperado';
	@override String get serviceNotRunning => 'El servicio no está funcionando';
	@override String get missingPrivilege => 'Privilegio perdido';
	@override String get missingPrivilegeMsg => 'El modo VPN requiere privilegios de administrador. Reinicie la aplicación como administrador o cambie el modo de servicio.';
	@override String get missingGeoAssets => 'Recursos geográficos faltantes';
	@override String get missingGeoAssetsMsg => 'Faltan recursos geográficos. considere cambiar el activo activo o descargar uno seleccionado en la configuración.';
	@override String get invalidConfigOptions => 'Opciones de configuración no válidas';
	@override String get invalidConfig => 'Configuración no válida';
	@override String get create => 'Error de creación del servicio';
	@override String get start => 'Error de inicio del servicio';
}

// Path: failure.connectivity
class TranslationsFailureConnectivityEs extends TranslationsFailureConnectivityEn {
	TranslationsFailureConnectivityEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Falla inesperada';
	@override String get missingVpnPermission => 'Permiso VPN faltante';
	@override String get missingNotificationPermission => 'Permiso de notificación faltante';
	@override String get core => 'Error central';
}

// Path: failure.profiles
class TranslationsFailureProfilesEs extends TranslationsFailureProfilesEn {
	TranslationsFailureProfilesEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Error Inesperado';
	@override String get notFound => 'Perfil no encontrado';
	@override String get invalidConfig => 'Configuracion Invalida';
	@override String get invalidUrl => 'URL Invalido';
}

// Path: failure.connection
class TranslationsFailureConnectionEs extends TranslationsFailureConnectionEn {
	TranslationsFailureConnectionEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Error de conexión inesperado';
	@override String get timeout => 'El tiempo de conexión expiro';
	@override String get badResponse => 'Mala respuesta';
	@override String get connectionError => 'Error de conexión';
	@override String get badCertificate => 'Certificado malo';
}

// Path: failure.geoAssets
class TranslationsFailureGeoAssetsEs extends TranslationsFailureGeoAssetsEn {
	TranslationsFailureGeoAssetsEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Error inesperado';
	@override String get notUpdate => 'Actualización no disponible';
	@override String get activeNotFound => 'Activo geográfico activo no encontrado';
}

// Path: config.serviceModes
class TranslationsConfigServiceModesEs extends TranslationsConfigServiceModesEn {
	TranslationsConfigServiceModesEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get proxy => 'Proxy';
	@override String get systemProxy => 'Sistema Proxy';
	@override String get tun => 'VPN';
}

// Path: config.section
class TranslationsConfigSectionEs extends TranslationsConfigSectionEn {
	TranslationsConfigSectionEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get route => 'Opciones de ruta';
	@override String get dns => 'Opciones de DNS';
	@override String get inbound => 'Opciones entrantes';
	@override String get mux => 'Multiplexer';
	@override String get outbound => 'Opciones de salida';
	@override String get tlsTricks => 'Trucos TLS';
	@override String get warp => 'WARP Options';
	@override String get misc => 'Opciones varias';
}

// Path: config.warpConsent
class TranslationsConfigWarpConsentEs extends TranslationsConfigWarpConsentEn {
	TranslationsConfigWarpConsentEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Consentimiento WARP de Cloudflare';
	@override TextSpan description({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
		const TextSpan(text: 'Cloudflare WARP es un proveedor de VPN WireGuard gratuito. Al habilitar esta opción, acepta los '),
		tos('Términos de servicio'),
		const TextSpan(text: ' y '),
		privacy('Política de privacidad'),
		const TextSpan(text: ' de Cloudflare WARP.'),
	]);
}

// Path: config.ipv6Modes
class TranslationsConfigIpv6ModesEs extends TranslationsConfigIpv6ModesEn {
	TranslationsConfigIpv6ModesEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get disable => 'Desactivar';
	@override String get enable => 'Activar';
	@override String get prefer => 'Preferido';
	@override String get only => 'Exclusivo';
}

// Path: config.warpDetourModes
class TranslationsConfigWarpDetourModesEs extends TranslationsConfigWarpDetourModesEn {
	TranslationsConfigWarpDetourModesEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get inbound => 'Detour WARP through proxies';
	@override String get outbound => 'Detour proxies through WARP';
}

// Path: profile.add.qrScanner
class TranslationsProfileAddQrScannerEs extends TranslationsProfileAddQrScannerEn {
	TranslationsProfileAddQrScannerEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get permissionDeniedError => 'Permiso Denegado';
	@override String get unexpectedError => 'Algo salió mal';
	@override String get torchSemanticLabel => 'Linterna';
	@override String get facingSemanticLabel => 'Frente a la cámara';
}

// Path: settings.general.regions
class TranslationsSettingsGeneralRegionsEs extends TranslationsSettingsGeneralRegionsEn {
	TranslationsSettingsGeneralRegionsEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get ir => 'Irán (ir)';
	@override String get cn => 'China (CN)';
	@override String get ru => 'Rusia (ru)';
	@override String get af => 'Afganistán (af)';
	@override String get other => 'Otro';
}

// Path: settings.general.themeModes
class TranslationsSettingsGeneralThemeModesEs extends TranslationsSettingsGeneralThemeModesEn {
	TranslationsSettingsGeneralThemeModesEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get system => 'Seguir el tema del sistema';
	@override String get dark => 'Modo Oscuro';
	@override String get light => 'Modo Claro';
	@override String get black => 'Modo Negro';
}

// Path: settings.network.perAppProxyModes
class TranslationsSettingsNetworkPerAppProxyModesEs extends TranslationsSettingsNetworkPerAppProxyModesEn {
	TranslationsSettingsNetworkPerAppProxyModesEs._(TranslationsEs root) : this._root = root, super._(root);

	@override final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get off => 'Todo';
	@override String get offMsg => 'Proxy en todas las aplicaciones';
	@override String get include => 'Proxy';
	@override String get includeMsg => 'Proxy solo en aplicaciones seleccionadas';
	@override String get exclude => 'Bypass';
	@override String get excludeMsg => 'No hacer proxy de aplicaciones seleccionadas';
}

// Path: <root>
class TranslationsFa extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fa,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fa>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final TranslationsFa _root = this; // ignore: unused_field

	// Translations
	@override late final TranslationsGeneralFa general = TranslationsGeneralFa._(_root);
	@override late final TranslationsIntroFa intro = TranslationsIntroFa._(_root);
	@override late final TranslationsHomeFa home = TranslationsHomeFa._(_root);
	@override late final TranslationsStatsFa stats = TranslationsStatsFa._(_root);
	@override late final TranslationsProfileFa profile = TranslationsProfileFa._(_root);
	@override late final TranslationsProxiesFa proxies = TranslationsProxiesFa._(_root);
	@override late final TranslationsLogsFa logs = TranslationsLogsFa._(_root);
	@override late final TranslationsSettingsFa settings = TranslationsSettingsFa._(_root);
	@override late final TranslationsAboutFa about = TranslationsAboutFa._(_root);
	@override late final TranslationsAppUpdateFa appUpdate = TranslationsAppUpdateFa._(_root);
	@override late final TranslationsTrayFa tray = TranslationsTrayFa._(_root);
	@override late final TranslationsFailureFa failure = TranslationsFailureFa._(_root);
	@override late final TranslationsPlayFa play = TranslationsPlayFa._(_root);
	@override late final TranslationsConnectionFa connection = TranslationsConnectionFa._(_root);
	@override late final TranslationsConfigFa config = TranslationsConfigFa._(_root);
}

// Path: general
class TranslationsGeneralFa extends TranslationsGeneralEn {
	TranslationsGeneralFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'هیدیفای';
	@override String get reset => 'بازنشانی';
	@override late final TranslationsGeneralToggleFa toggle = TranslationsGeneralToggleFa._(_root);
	@override late final TranslationsGeneralStateFa state = TranslationsGeneralStateFa._(_root);
	@override String get sort => 'مرتب‌سازی';
	@override String get sortBy => 'مرتب‌سازی براساس';
	@override String get addToClipboard => 'افزودن به کلیپ‌بورد';
	@override String get notSet => 'تنظیم نشده است';
	@override String get agree => 'پذیرفتن';
	@override String get decline => 'صرف‌نظر کردن';
	@override String get unknown => 'ناشناخته';
	@override String get hidden => 'پنهان';
	@override String get timeout => 'عدم ارتباط';
	@override String get clipboardExportSuccessMsg => 'به کلیپ‌بورد افزوده شد';
	@override String get showMore => 'نمایش بیشتر';
	@override String get showLess => 'نمایش کمتر';
	@override String get openAppSettings => 'باز کردن تنظیمات برنامه';
	@override String get grantPermission => 'اجازه دادن';
}

// Path: intro
class TranslationsIntroFa extends TranslationsIntroEn {
	TranslationsIntroFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override TextSpan termsAndPolicyCaution({required InlineSpanBuilder tap}) => TextSpan(children: [
		const TextSpan(text: 'در صورت ادامه با '),
		tap(_root.about.termsAndConditions),
		const TextSpan(text: ' موافقت می‌کنید'),
	]);
	@override String get start => 'آغاز';
}

// Path: home
class TranslationsHomeFa extends TranslationsHomeEn {
	TranslationsHomeFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'خانه';
	@override String get emptyProfilesMsg => 'با افزودن یک پروفایل اشتراک شروع کنید';
	@override String get noActiveProfileMsg => 'یک پروفایل انتخاب کنید';
}

// Path: stats
class TranslationsStatsFa extends TranslationsStatsEn {
	TranslationsStatsFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get traffic => 'مصرف';
	@override String get trafficLive => 'مصرف لحظه‌ای';
	@override String get trafficTotal => 'مصرف کل';
	@override String get uplink => 'ارسال';
	@override String get downlink => 'دریافت';
	@override String get connection => 'اتصال';
	@override String get speed => 'سرعت';
	@override String get totalTransferred => 'کل تبادل';
}

// Path: profile
class TranslationsProfileFa extends TranslationsProfileEn {
	TranslationsProfileFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get overviewPageTitle => 'پروفایل‌ها';
	@override String get detailsPageTitle => 'پروفایل';
	@override String activeProfileNameSemanticLabel({required Object name}) => 'نام پروفایل فعال: ${name}';
	@override String get activeProfileBtnSemanticLabel => 'نمایش همه‌ی پروفایل‌ها';
	@override String nonActiveProfileBtnSemanticLabel({required Object name}) => 'انتخاب ${name} به‌عنوان پروفایل فعال';
	@override late final TranslationsProfileSubscriptionFa subscription = TranslationsProfileSubscriptionFa._(_root);
	@override late final TranslationsProfileSortByFa sortBy = TranslationsProfileSortByFa._(_root);
	@override late final TranslationsProfileAddFa add = TranslationsProfileAddFa._(_root);
	@override late final TranslationsProfileUpdateFa update = TranslationsProfileUpdateFa._(_root);
	@override late final TranslationsProfileShareFa share = TranslationsProfileShareFa._(_root);
	@override late final TranslationsProfileEditFa edit = TranslationsProfileEditFa._(_root);
	@override late final TranslationsProfileDeleteFa delete = TranslationsProfileDeleteFa._(_root);
	@override late final TranslationsProfileSaveFa save = TranslationsProfileSaveFa._(_root);
	@override late final TranslationsProfileDetailsFormFa detailsForm = TranslationsProfileDetailsFormFa._(_root);
}

// Path: proxies
class TranslationsProxiesFa extends TranslationsProxiesEn {
	TranslationsProxiesFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'پروکسی‌ها';
	@override String get emptyProxiesMsg => 'هیچ پروکسی موجود نیست';
	@override String get delayTestTooltip => 'تست تأخیر';
	@override String get sortTooltip => 'مرتب‌سازی پروکسی‌ها';
	@override String get checkIp => 'بررسی آی‌پی';
	@override String get unknownIp => 'آی‌پی ناشناخته';
	@override late final TranslationsProxiesSortOptionsFa sortOptions = TranslationsProxiesSortOptionsFa._(_root);
	@override String get activeProxySemanticLabel => 'پروکسی فعال';
	@override late final TranslationsProxiesDelaySemanticsFa delaySemantics = TranslationsProxiesDelaySemanticsFa._(_root);
	@override late final TranslationsProxiesIpInfoSemanticsFa ipInfoSemantics = TranslationsProxiesIpInfoSemanticsFa._(_root);
}

// Path: logs
class TranslationsLogsFa extends TranslationsLogsEn {
	TranslationsLogsFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'گزارش‌ها';
	@override String get filterHint => 'فیلتر';
	@override String get allLevelsFilter => 'همه';
	@override String get shareCoreLogs => 'اشتراک‌گذاری گزارش‌های هسته';
	@override String get shareAppLogs => 'اشتراک‌گذاری گزارش‌های برنامه';
	@override String get pauseTooltip => 'مکث';
	@override String get resumeTooltip => 'ادامه دادن';
	@override String get clearTooltip => 'پاک‌سازی';
}

// Path: settings
class TranslationsSettingsFa extends TranslationsSettingsEn {
	TranslationsSettingsFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'تنظیمات';
	@override String get requiresRestartMsg => 'برای اعمال این تنظیم، برنامه را دوباره راه‌اندازی کنید';
	@override String get experimental => 'آزمایشی';
	@override String get experimentalMsg => 'تنظیماتی که عنوان آزمایشی دارند، هم‌چنان در دست توسعه هستند و فعال‌سازی آن‌ها می‌تواند باعث بروز مشکلاتی شود. ';
	@override String get exportOptions => 'صادر کردن تنظیمات به کلیپ‌بورد';
	@override String get exportAllOptions => 'صادر کردن تنظیمات به کلیپ‌بورد (اشکال‌زدایی)';
	@override String get importOptions => 'وارد کردن تنظیمات از کلیپ‌بورد';
	@override String get importOptionsMsg => 'این اقدام همه‌ی تنظیمات پیکربندی را با مقادیر اولیه بازنویسی می‌کند. آیا مطمئن هستید؟';
	@override late final TranslationsSettingsGeneralFa general = TranslationsSettingsGeneralFa._(_root);
	@override late final TranslationsSettingsAdvancedFa advanced = TranslationsSettingsAdvancedFa._(_root);
	@override late final TranslationsSettingsNetworkFa network = TranslationsSettingsNetworkFa._(_root);
	@override late final TranslationsSettingsGeoAssetsFa geoAssets = TranslationsSettingsGeoAssetsFa._(_root);
}

// Path: about
class TranslationsAboutFa extends TranslationsAboutEn {
	TranslationsAboutFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'درباره';
	@override String get version => 'نسخه';
	@override String get sourceCode => 'کد منبع';
	@override String get telegramChannel => 'کانال تلگرام';
	@override String get checkForUpdate => 'بررسی برای به‌روزرسانی';
	@override String get privacyPolicy => 'سیاست‌های حفظ حریم خصوصی';
	@override String get termsAndConditions => 'شرایط و ضوابط استفاده';
}

// Path: appUpdate
class TranslationsAppUpdateFa extends TranslationsAppUpdateEn {
	TranslationsAppUpdateFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get notAvailableMsg => 'در حال استفاده از آخرین نسخه هستید';
	@override String get dialogTitle => 'به‌روزرسانی موجود است';
	@override String get updateMsg => 'نسخه‌ی جدیدی از general.appTitle در دسترس است. آیا می‌خواهید آن را به‌روزرسانی کنید؟';
	@override String get currentVersionLbl => 'نسخه‌ی فعلی';
	@override String get newVersionLbl => 'نسخه‌ی جدید';
	@override String get updateNowBtnTxt => 'هم‌اکنون به‌روزرسانی شود';
	@override String get laterBtnTxt => 'بعداً';
	@override String get ignoreBtnTxt => 'نادیده‌گرفتن';
}

// Path: tray
class TranslationsTrayFa extends TranslationsTrayEn {
	TranslationsTrayFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'داشبورد';
	@override String get quit => 'خروج';
	@override String get open => 'باز کردن';
	@override late final TranslationsTrayStatusFa status = TranslationsTrayStatusFa._(_root);
}

// Path: failure
class TranslationsFailureFa extends TranslationsFailureEn {
	TranslationsFailureFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'خطای غیرمنتظره';
	@override late final TranslationsFailureClashFa clash = TranslationsFailureClashFa._(_root);
	@override late final TranslationsFailureSingboxFa singbox = TranslationsFailureSingboxFa._(_root);
	@override late final TranslationsFailureConnectivityFa connectivity = TranslationsFailureConnectivityFa._(_root);
	@override late final TranslationsFailureProfilesFa profiles = TranslationsFailureProfilesFa._(_root);
	@override late final TranslationsFailureConnectionFa connection = TranslationsFailureConnectionFa._(_root);
	@override late final TranslationsFailureGeoAssetsFa geoAssets = TranslationsFailureGeoAssetsFa._(_root);
}

// Path: play
class TranslationsPlayFa extends TranslationsPlayEn {
	TranslationsPlayFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'هیدیفای (آزمایشی)';
	@override String get short_description => 'Auto, SSH, VLESS, VMess, Trojan, Reality, Sing-Box, Clash, XRay, Shadowsocks';
	@override String get full_description => 'هدف اصلی هیدیفای ارائه یک کلاینت ضدفیلتر ایمن، کاربرپسند و کارآمد است. این به شما امکان می‌دهد تا با استفاده از مجوز سرویس VPN، تمام ترافیک یا ترافیک برنامه‌ی انتخابی را به یک سرور راه دور مورد نظر خود هدایت کنید.\n\nتوجه: ما هیچ سروری ارائه نمی‌دهیم. کاربران موظف هستند با استفاده از سرورهای خود، هاست یا سرورهای مورد اعتماد، فعالیت‌های آنلاین خود را خصوصی نگه دارند. \n\nما از این سرورها پشتیبانی می‌کنیم:\n- لینک اشتراک V2Ray/XRay معمولی\n- لینک اشتراک کلش\n- لینک اشتراک Sing-Box\n\nویژگی‌های منحصر به فرد این برنامه چیست؟\n- کاربر پسند  \n- بهینه و سریع  \n- انتخاب کمترین پینگ به صورت خودکار\n- نمایش اطلاعات استفاده کاربر\n- به راحتی لینک فرعی را با یک کلیک با استفاده از دیپ لینک وارد کنید  \n- رایگان و بدون تبلیغات  \n- به‌راحتی لینک های فرعی کاربر را تغییر دهید  \n- بیشتر و بیشتر\n\nپشتیبانی از:\n- همه‌ی پروتکل‌های پشتیبانی‌شده توسط Sing-Box- VLESS + XTLS Reality، Vision- VMess- Trojan- ShadowSocks- Reality- WireGuard- V2Ray- Hysteria2- TUICv5- SSH- ShadowTLS\n\nکد منبع در https://github.com/hiddify/Hiddify-Next موجود بوده و هسته‌ی برنامه مبتنی بر منبع باز Sing-Box است.\n\nتوضیحات مجوز:\n- VPN Service: از آن‌جا که هدف این برنامه ارائه‌ی یک کلاینت ضدفیلتر ایمن، کاربر پسند و کارآمد است، ما به این مجوز نیاز داریم تا بتوانیم ترافیک را از طریق تونل به سرور راه دور هدایت کنیم.\n- QUERY ALL PACKAGES: این مجوز برای اجازه دادن به کاربران برای گنجاندن یا حذف برنامه‌های کاربردی خاص برای تونل‌زدن استفاده می‌شود.\n- RECEIVE BOOT COMPLETED: این مجوز را می‌توان از تنظیمات برنامه فعال یا غیرفعال کرد تا این برنامه پس از شروع به کار دستگاه فعال شود.\n- POST NOTIFICATIONS: این مجوز ضروری است زیرا برای اطمینان از عملکرد یکسره VPN نیاز است از یک سرویس پس زمینه استفاده کنیم. \n- این برنامه بدون تبلیغات است. تجزیه و تحلیل و داده‌های خرابی فقط با رضایت صریح کاربر در اولین استفاده از برنامه اتفاق می‌افتد.';
}

// Path: connection
class TranslationsConnectionFa extends TranslationsConnectionEn {
	TranslationsConnectionFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get tapToConnect => 'برای اتصال ضربه بزنید';
	@override String get connecting => 'در حال اتصال';
	@override String get disconnecting => 'در حال قطع اتصال';
	@override String get connected => 'متصل شد';
	@override String get reconnect => 'اتصال دوباره';
	@override String get connectAnyWay => 'متصل کردن';
	@override String get experimentalNotice => 'ویژگی‌های آزمایشی در حال استفاده';
	@override String get experimentalNoticeMsg => 'شما برخی از ویژگی‌های آزمایشی را فعال کرده‌اید که ممکن است بر کیفیت اتصال تأثیر گذاشته و باعث بروز خطاهای غیرمنتظره شود. شما همیشه می‌توانید این گزینه‌ها را از صفحه‌ی تنظیمات پیکربندی تغییر دهید یا بازنشانی کنید.';
	@override String get disableExperimentalNotice => 'دیگر نشان نده';
	@override String get reconnectMsg => 'دوباره متصل شوید تا تغییرات اعمال شوند';
}

// Path: config
class TranslationsConfigFa extends TranslationsConfigEn {
	TranslationsConfigFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get resetBtn => 'بازنشانی تنظیمات';
	@override String get serviceMode => 'حالت سرویس';
	@override String get quickSettings => 'تنظیمات سریع';
	@override String get setupWarp => 'راه‌اندازی WARP';
	@override String get allOptions => 'همه‌ی تنظیمات پیکربندی';
	@override late final TranslationsConfigServiceModesFa serviceModes = TranslationsConfigServiceModesFa._(_root);
	@override late final TranslationsConfigShortServiceModesFa shortServiceModes = TranslationsConfigShortServiceModesFa._(_root);
	@override late final TranslationsConfigSectionFa section = TranslationsConfigSectionFa._(_root);
	@override late final TranslationsConfigWarpConsentFa warpConsent = TranslationsConfigWarpConsentFa._(_root);
	@override String get generateWarpConfig => 'ایجاد پیکربندی WARP';
	@override String get missingWarpConfig => 'پیکربندی WARP موجود نیست';
	@override String get warpConfigGenerated => 'پیکربندی WARP ایجاد شد';
	@override String get pageTitle => 'تنظیمات پیکربندی';
	@override String get logLevel => 'سطح گزارش';
	@override String get resolveDestination => 'جایگذاری مقصد';
	@override String get ipv6Mode => 'مسیریابی IPv6';
	@override late final TranslationsConfigIpv6ModesFa ipv6Modes = TranslationsConfigIpv6ModesFa._(_root);
	@override String get remoteDnsAddress => 'DNS خارجی';
	@override String get remoteDnsDomainStrategy => 'استراتژی دامنه DNS خارجی';
	@override String get directDnsAddress => 'DNS مستقیم';
	@override String get directDnsDomainStrategy => 'استراتژی دامنه DNS مستقیم';
	@override String get mixedPort => 'پورت چندمنظوره';
	@override String get tproxyPort => 'پورت پروکسی نامرئی';
	@override String get localDnsPort => 'پورت DNS داخلی';
	@override String get allowConnectionFromLan => 'اشتراک VPN در شبکه داخلی';
	@override String get tunImplementation => 'پیاده‌سازی TUN';
	@override String get mtu => 'سایز بسته‌ها (MTU) ';
	@override String get connectionTestUrl => 'لینک بررسی اتصال';
	@override String get urlTestInterval => 'فاصله‌ی زمانی بررسی لینک';
	@override String get enableClashApi => 'فعال‌سازی Clash API';
	@override String get clashApiPort => 'پورت Clash API';
	@override String get enableTun => 'فعال‌سازی TUN';
	@override String get setSystemProxy => 'تنظیم پروکسی سیستم';
	@override String get enableDnsRouting => 'فعال‌سازی مسیریابی DNS';
	@override String get enableFakeDns => 'فعال‌سازی DNS جعلی';
	@override String get bypassLan => 'دور زدن LAN';
	@override String get strictRoute => 'مسیر دقیق';
	@override String get enableTlsFragment => 'فعال‌سازی TLS Fragment';
	@override String get tlsFragmentSize => 'اندازه‌ی TLS Fragment ';
	@override String get tlsFragmentSleep => 'کنار گذاشتن TLS Fragment';
	@override String get enableTlsMixedSniCase => 'فعال‌سازی TLS Mixed SNI Case';
	@override String get enableTlsPadding => 'فعال‌سازی TLS Padding';
	@override String get tlsPaddingSize => 'اندازه‌ی TLS Padding';
	@override String get enableMux => 'فعال‌سازی Mux';
	@override String get muxProtocol => 'پروتکل Mux';
	@override String get muxMaxStreams => 'حداکثر جریان‌های هم‌زمان';
	@override String get enableWarp => 'فعال‌سازی WARP';
	@override String get warpDetourMode => 'حالت وارپ';
	@override late final TranslationsConfigWarpDetourModesFa warpDetourModes = TranslationsConfigWarpDetourModesFa._(_root);
	@override String get warpLicenseKey => 'کلید لایسنس';
	@override String get warpCleanIp => 'آی‌پی تمیز';
	@override String get warpPort => 'پورت';
	@override String get warpNoise => 'تعداد نویز';
	@override String get warpNoiseDelay => 'تأخیر نویز';
}

// Path: general.toggle
class TranslationsGeneralToggleFa extends TranslationsGeneralToggleEn {
	TranslationsGeneralToggleFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get enabled => 'فعال';
	@override String get disabled => 'غیرفعال';
}

// Path: general.state
class TranslationsGeneralStateFa extends TranslationsGeneralStateEn {
	TranslationsGeneralStateFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get disable => 'غیرفعال';
}

// Path: profile.subscription
class TranslationsProfileSubscriptionFa extends TranslationsProfileSubscriptionEn {
	TranslationsProfileSubscriptionFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get traffic => 'ترافیک';
	@override String updatedTimeAgo({required Object timeago}) => '${timeago} به‌روزرسانی شد';
	@override String remainingDuration({required Object duration}) => '${duration} روز باقی مانده';
	@override String remainingTrafficSemanticLabel({required Object consumed, required Object total}) => '${consumed} از ${total} ترافیک مصرف شده';
	@override String get expired => 'منقضی شده';
	@override String get noTraffic => 'اتمام سهمیه';
	@override String get upload => 'آپلود';
	@override String get download => 'دانلود';
	@override String get total => 'کل ترافیک';
	@override String get expireDate => 'تاریخ انقضاء';
}

// Path: profile.sortBy
class TranslationsProfileSortByFa extends TranslationsProfileSortByEn {
	TranslationsProfileSortByFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get lastUpdate => 'اخیراً به‌روز شده';
	@override String get name => 'بر اساس نام';
}

// Path: profile.add
class TranslationsProfileAddFa extends TranslationsProfileAddEn {
	TranslationsProfileAddFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'افزودن پروفایل جدید';
	@override String get shortBtnTxt => 'پروفایل جدید';
	@override String get fromClipboard => 'افزودن از کلیپ‌بورد';
	@override String get scanQr => 'اسکن کد QR';
	@override late final TranslationsProfileAddQrScannerFa qrScanner = TranslationsProfileAddQrScannerFa._(_root);
	@override String get manually => 'افزودن دستی';
	@override String get addingProfileMsg => 'در حال افزودن پروفایل';
	@override String get failureMsg => 'افزودن پروفایل ناموفق بود';
}

// Path: profile.update
class TranslationsProfileUpdateFa extends TranslationsProfileUpdateEn {
	TranslationsProfileUpdateFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'به‌روزرسانی';
	@override String get tooltip => 'به‌روزرسانی پروفایل';
	@override String get updateSubscriptions => 'به‌روزرسانی اشتراک‌ها';
	@override String get failureMsg => 'به‌روزرسانی پروفایل ناموفق بود';
	@override String get successMsg => 'پروفایل با موفقیت به‌روزرسانی شد';
	@override String namedFailureMsg({required Object name}) => 'به‌روزرسانی "${name}" ناموفق بود';
	@override String namedSuccessMsg({required Object name}) => '"${name}" با موفقیت به‌روز شد';
}

// Path: profile.share
class TranslationsProfileShareFa extends TranslationsProfileShareEn {
	TranslationsProfileShareFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'اشتراک‌گذاری';
	@override String get exportToClipboardSuccess => 'به کلیپ‌بورد اضافه شد';
	@override String get exportSubLinkToClipboard => 'صادر کردن لینک اشتراک به کلیپ‌بورد';
	@override String get subLinkQrCode => 'کد QR لینک اشتراک';
	@override String get exportConfigToClipboard => 'افزودن پیکربندی به کلیپ‌بورد';
	@override String get exportConfigToClipboardSuccess => 'پیکربندی در کلیپ‌بورد کپی شد';
}

// Path: profile.edit
class TranslationsProfileEditFa extends TranslationsProfileEditEn {
	TranslationsProfileEditFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'ویرایش';
	@override String get selectActiveTxt => 'انتخاب پروفایل فعال';
}

// Path: profile.delete
class TranslationsProfileDeleteFa extends TranslationsProfileDeleteEn {
	TranslationsProfileDeleteFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'حذف';
	@override String get confirmationMsg => 'پروفایل برای همیشه حذف شود؟';
	@override String get successMsg => 'پروفایل با موفقیت حذف شد';
}

// Path: profile.save
class TranslationsProfileSaveFa extends TranslationsProfileSaveEn {
	TranslationsProfileSaveFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'ذخیره';
	@override String get successMsg => 'پروفایل با موفقیت ذخیره شد';
	@override String get failureMsg => 'خطا در ذخیره‌ی پروفایل';
}

// Path: profile.detailsForm
class TranslationsProfileDetailsFormFa extends TranslationsProfileDetailsFormEn {
	TranslationsProfileDetailsFormFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get nameLabel => 'نام';
	@override String get nameHint => 'نام پروفایل';
	@override String get urlLabel => 'لینک';
	@override String get urlHint => 'لینک کامل پیکربندی';
	@override String get emptyNameMsg => 'نام نمی‌تواند خالی باشد';
	@override String get invalidUrlMsg => 'لینک نامعتبر است';
	@override String get lastUpdate => 'آخرین به‌روزرسانی';
	@override String get updateInterval => 'به‌روزرسانی خودکار';
	@override String get updateIntervalDialogTitle => 'فاصله‌ی زمانی به‌روزرسانی خودکار (ساعت)';
}

// Path: proxies.sortOptions
class TranslationsProxiesSortOptionsFa extends TranslationsProxiesSortOptionsEn {
	TranslationsProxiesSortOptionsFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get unsorted => 'پیش‌فرض';
	@override String get name => 'براساس نام';
	@override String get delay => 'براساس تأخیر';
}

// Path: proxies.delaySemantics
class TranslationsProxiesDelaySemanticsFa extends TranslationsProxiesDelaySemanticsEn {
	TranslationsProxiesDelaySemanticsFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String result({required Object delay}) => 'تأخیر: ${delay}ms';
	@override String get timeout => 'مهلت تست تأخیر به اتمام رسید';
	@override String get testing => 'تأخیر: در حال آزمایش...';
}

// Path: proxies.ipInfoSemantics
class TranslationsProxiesIpInfoSemanticsFa extends TranslationsProxiesIpInfoSemanticsEn {
	TranslationsProxiesIpInfoSemanticsFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get address => 'آدرس آی‌پی';
	@override String get country => 'کشور';
}

// Path: settings.general
class TranslationsSettingsGeneralFa extends TranslationsSettingsGeneralEn {
	TranslationsSettingsGeneralFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'عمومی';
	@override String get locale => 'زبان';
	@override String get region => 'منطقه';
	@override String get regionMsg => 'به انتخاب تنظیمات پیش‌فرض برای دور زدن آدرس‌های داخلی کمک می‌کند';
	@override late final TranslationsSettingsGeneralRegionsFa regions = TranslationsSettingsGeneralRegionsFa._(_root);
	@override String get themeMode => 'حالت پوسته';
	@override late final TranslationsSettingsGeneralThemeModesFa themeModes = TranslationsSettingsGeneralThemeModesFa._(_root);
	@override String get enableAnalytics => 'فعال‌سازی تجزیه و تحلیل‌ها';
	@override String get enableAnalyticsMsg => 'ارائه‌ی دسترسی جمع‌آوری تجزیه و تحلیل‌ها و ارسال گزارش‌های خطا برای بهبود عملکرد برنامه';
	@override String get autoStart => 'راه‌اندازی هنگام شروع سیستم';
	@override String get silentStart => 'اجرای ساکت';
	@override String get openWorkingDir => 'باز کردن دایرکتوری فعال';
	@override String get ignoreBatteryOptimizations => 'غیرفعال کردن بهینه‌سازی باتری';
	@override String get ignoreBatteryOptimizationsMsg => 'برطرف کردن محدودیت‌ها برای عملکرد بهینه‌ی VPN';
	@override String get dynamicNotification => 'نمایش سرعت در نوار اعلان';
	@override String get hapticFeedback => 'بازخورد لمسی';
	@override String get autoIpCheck => 'بررسی خودکار آی‌پی اتصال';
}

// Path: settings.advanced
class TranslationsSettingsAdvancedFa extends TranslationsSettingsAdvancedEn {
	TranslationsSettingsAdvancedFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'پیشرفته';
	@override String get debugMode => 'حالت اشکال‌زدایی';
	@override String get debugModeMsg => 'برنامه را برای اعمال این تغییر دوباره راه‌اندازی کنید';
	@override String get memoryLimit => 'محدودیت حافظه';
	@override String get memoryLimitMsg => 'اگر با خطاهای کمبود حافظه یا خرابی مکرر برنامه مواجه می‌شوید، این گزینه را فعال کنید';
	@override String get resetTunnel => '‌بازنشانی پروفایل VPN';
}

// Path: settings.network
class TranslationsSettingsNetworkFa extends TranslationsSettingsNetworkEn {
	TranslationsSettingsNetworkFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get perAppProxyPageTitle => 'پروکسی براساس برنامه';
	@override late final TranslationsSettingsNetworkPerAppProxyModesFa perAppProxyModes = TranslationsSettingsNetworkPerAppProxyModesFa._(_root);
	@override String get showSystemApps => 'نمایش برنامه‌های سیستمی';
	@override String get hideSystemApps => 'پنهان کردن برنامه‌های سیستمی';
	@override String get clearSelection => 'پاک کردن انتخاب‌ها';
}

// Path: settings.geoAssets
class TranslationsSettingsGeoAssetsFa extends TranslationsSettingsGeoAssetsEn {
	TranslationsSettingsGeoAssetsFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'فایل‌های مسیریابی';
	@override String get geoip => 'ژئو آی‌پی';
	@override String get geosite => 'ژئو سایت';
	@override String version({required Object version}) => 'نسخه ${version}';
	@override String get fileMissing => 'فایل موجود نیست';
	@override String get update => 'به‌روزرسانی';
	@override String get download => 'دانلود';
	@override String get failureMsg => 'به‌روزرسانی فایل ناموفق بود';
	@override String get successMsg => 'فایل‌ با موفقیت به‌روزرسانی شد';
	@override String get addRecommended => 'افزودن فایل‌های توصیه‌شده';
	@override String get missingGeoAssetsMsg => 'فایل‌های مسیریابی انتخاب شده وجود ندارند. یا آن‌ها را دانلود کنید و یا یکی از موارد موجود را انتخاب کنید';
}

// Path: tray.status
class TranslationsTrayStatusFa extends TranslationsTrayStatusEn {
	TranslationsTrayStatusFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get connect => 'اتصال';
	@override String get connecting => 'در حال اتصال';
	@override String get disconnect => 'قطع اتصال';
	@override String get disconnecting => 'در حال قطع اتصال';
}

// Path: failure.clash
class TranslationsFailureClashFa extends TranslationsFailureClashEn {
	TranslationsFailureClashFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'خطای غیرمنتظره';
	@override String core({required Object reason}) => 'خطای Clash ${reason}';
}

// Path: failure.singbox
class TranslationsFailureSingboxFa extends TranslationsFailureSingboxEn {
	TranslationsFailureSingboxFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'خطای غیرمنتظره در سرویس';
	@override String get serviceNotRunning => 'سرویس در حال اجرا نیست';
	@override String get missingPrivilege => 'نیازمند دسترسی';
	@override String get missingPrivilegeMsg => 'حالت VPN به دسترسی ادمین نیاز دارد. یا برنامه را دوباره به‌عنوان ادمین راه‌اندازی کنید یا حالت سرویس را تغییر دهید.';
	@override String get missingGeoAssets => 'فایل‌های جغرافیایی وجود ندارد';
	@override String get missingGeoAssetsMsg => 'فایل‌های جغرافیایی وجود ندارند. یا فایل فعال را تغییر دهید و یا فایل های انتخاب شده را دانلود کنید. ';
	@override String get invalidConfigOptions => 'تنظیمات پیکربندی نامعتبر';
	@override String get invalidConfig => 'پیکربندی نامعتبر';
	@override String get create => 'خطای ایجاد سرویس';
	@override String get start => 'خطای راه‌اندازی سرویس';
}

// Path: failure.connectivity
class TranslationsFailureConnectivityFa extends TranslationsFailureConnectivityEn {
	TranslationsFailureConnectivityFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'خطای غیرمنتظره';
	@override String get missingVpnPermission => 'مجوز VPN وجود ندارد';
	@override String get missingNotificationPermission => 'مجوز اعلان وجود ندارد';
	@override String get core => 'خطای هسته';
}

// Path: failure.profiles
class TranslationsFailureProfilesFa extends TranslationsFailureProfilesEn {
	TranslationsFailureProfilesFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'خطای غیرمنتظره';
	@override String get notFound => 'پروفایل یافت نشد';
	@override String get invalidConfig => 'پیکربندی‌ها نامعتبر هستند';
	@override String get invalidUrl => 'لینک نامعتبر است';
}

// Path: failure.connection
class TranslationsFailureConnectionFa extends TranslationsFailureConnectionEn {
	TranslationsFailureConnectionFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get unexpected => ' خطای غیرمنتظره در اتصال';
	@override String get timeout => 'مهلت اتصال به پایان رسید';
	@override String get badResponse => 'پاسخ نامعتبر';
	@override String get connectionError => 'خطای اتصال';
	@override String get badCertificate => 'خطای اعتبارسنجی';
}

// Path: failure.geoAssets
class TranslationsFailureGeoAssetsFa extends TranslationsFailureGeoAssetsEn {
	TranslationsFailureGeoAssetsFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'خطای غیرمنتظره';
	@override String get notUpdate => 'هیچ به‌روزرسانی موجود نیست';
	@override String get activeNotFound => 'فایل جغرافیایی فعال یافت نشد';
}

// Path: config.serviceModes
class TranslationsConfigServiceModesFa extends TranslationsConfigServiceModesEn {
	TranslationsConfigServiceModesFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get proxy => 'تنها سرویس پروکسی';
	@override String get systemProxy => 'تنظیم پروکسی سیستم';
	@override String get tun => 'VPN';
	@override String get tunService => 'سرویس VPN';
}

// Path: config.shortServiceModes
class TranslationsConfigShortServiceModesFa extends TranslationsConfigShortServiceModesEn {
	TranslationsConfigShortServiceModesFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get proxy => 'پروکسی';
	@override String get systemProxy => 'پروکسی سیستم';
	@override String get tun => 'VPN';
	@override String get tunService => 'سرویس VPN';
}

// Path: config.section
class TranslationsConfigSectionFa extends TranslationsConfigSectionEn {
	TranslationsConfigSectionFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get route => 'تنظیمات مسیریابی';
	@override String get dns => 'تنظیمات DNS';
	@override String get inbound => 'تنظیمات ورودی';
	@override String get mux => 'مالتی پلکسر';
	@override String get outbound => 'تنظیمات خروجی';
	@override String get tlsTricks => 'ترفندهای TLS';
	@override String get warp => 'تنظیمات WARP';
	@override String get misc => 'تنظیمات متفرقه';
}

// Path: config.warpConsent
class TranslationsConfigWarpConsentFa extends TranslationsConfigWarpConsentEn {
	TranslationsConfigWarpConsentFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get title => 'توافق‌نامه‌ی Cloudflare WARP';
	@override TextSpan description({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
		const TextSpan(text: 'Cloudflare WARP یک ارائه‌دهنده‌ی رایگان WireGuard VPN است. با فعال کردن این گزینه، با '),
		tos('شرایط خدمات'),
		const TextSpan(text: ' و '),
		privacy('خط‌ مشی رازداری'),
		const TextSpan(text: ' Cloudflare WARP موافقت می‌کنید.'),
	]);
}

// Path: config.ipv6Modes
class TranslationsConfigIpv6ModesFa extends TranslationsConfigIpv6ModesEn {
	TranslationsConfigIpv6ModesFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get disable => 'غیرفعال';
	@override String get enable => 'فعال';
	@override String get prefer => 'ترجیح داده شده';
	@override String get only => 'اختصاصی';
}

// Path: config.warpDetourModes
class TranslationsConfigWarpDetourModesFa extends TranslationsConfigWarpDetourModesEn {
	TranslationsConfigWarpDetourModesFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get proxyOverWarp => 'عبور پروکسی‌ها از طریق WARP';
	@override String get warpOverProxy => 'عبور WARP از طریق پروکسی‌ها';
	@override String get inbound => 'عبور WARP از طریق پروکسی‌ها';
	@override String get outbound => 'عبور پروکسی‌ها از طریق WARP';
}

// Path: profile.add.qrScanner
class TranslationsProfileAddQrScannerFa extends TranslationsProfileAddQrScannerEn {
	TranslationsProfileAddQrScannerFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get permissionDeniedError => 'دسترسی داده نشد';
	@override String get unexpectedError => 'خطایی رخ داده است';
	@override String get torchSemanticLabel => 'نور فلاش';
	@override String get facingSemanticLabel => 'جهت دوربین';
	@override String get permissionRequest => 'دسترسی به دوربین برای اسکن کد QR';
}

// Path: settings.general.regions
class TranslationsSettingsGeneralRegionsFa extends TranslationsSettingsGeneralRegionsEn {
	TranslationsSettingsGeneralRegionsFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get ir => 'ایران (ir)';
	@override String get cn => 'چین (cn)';
	@override String get ru => 'روسیه (ru)';
	@override String get af => 'افغانستان (af)';
	@override String get other => 'سایر';
}

// Path: settings.general.themeModes
class TranslationsSettingsGeneralThemeModesFa extends TranslationsSettingsGeneralThemeModesEn {
	TranslationsSettingsGeneralThemeModesFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get system => 'پیروی از پوسته‌ی دستگاه';
	@override String get dark => 'حالت تیره';
	@override String get light => 'حالت روشن';
	@override String get black => 'حالت سیاه';
}

// Path: settings.network.perAppProxyModes
class TranslationsSettingsNetworkPerAppProxyModesFa extends TranslationsSettingsNetworkPerAppProxyModesEn {
	TranslationsSettingsNetworkPerAppProxyModesFa._(TranslationsFa root) : this._root = root, super._(root);

	@override final TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get off => 'همه';
	@override String get offMsg => 'همه‌ی برنامه‌ها پروکسی شوند';
	@override String get include => 'پروکسی';
	@override String get includeMsg => 'تنها برنامه‌های انتخاب‌شده پروکسی شوند';
	@override String get exclude => 'کنار گذاشتن';
	@override String get excludeMsg => 'برنامه‌های انتخاب‌شده پروکسی نشوند';
}

// Path: <root>
class TranslationsId extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsId.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.id,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <id>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final TranslationsId _root = this; // ignore: unused_field

	// Translations
	@override late final TranslationsGeneralId general = TranslationsGeneralId._(_root);
	@override late final TranslationsIntroId intro = TranslationsIntroId._(_root);
	@override late final TranslationsHomeId home = TranslationsHomeId._(_root);
	@override late final TranslationsStatsId stats = TranslationsStatsId._(_root);
	@override late final TranslationsProfileId profile = TranslationsProfileId._(_root);
	@override late final TranslationsProxiesId proxies = TranslationsProxiesId._(_root);
	@override late final TranslationsLogsId logs = TranslationsLogsId._(_root);
	@override late final TranslationsSettingsId settings = TranslationsSettingsId._(_root);
	@override late final TranslationsAboutId about = TranslationsAboutId._(_root);
	@override late final TranslationsAppUpdateId appUpdate = TranslationsAppUpdateId._(_root);
	@override late final TranslationsTrayId tray = TranslationsTrayId._(_root);
	@override late final TranslationsFailureId failure = TranslationsFailureId._(_root);
	@override late final TranslationsPlayId play = TranslationsPlayId._(_root);
	@override late final TranslationsConnectionId connection = TranslationsConnectionId._(_root);
	@override late final TranslationsConfigId config = TranslationsConfigId._(_root);
}

// Path: general
class TranslationsGeneralId extends TranslationsGeneralEn {
	TranslationsGeneralId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Hiddify';
	@override String get reset => 'Set Ulang';
	@override late final TranslationsGeneralToggleId toggle = TranslationsGeneralToggleId._(_root);
	@override late final TranslationsGeneralStateId state = TranslationsGeneralStateId._(_root);
	@override String get sort => 'Urutkan';
	@override String get sortBy => 'Urut Berdasarkan';
	@override String get addToClipboard => 'Tambah ke Clipboard';
	@override String get notSet => 'Tidak Diatur';
	@override String get agree => 'Setuju';
	@override String get decline => 'Tolak';
	@override String get unknown => 'Tidak Dikenal';
	@override String get timeout => 'Waktu habis';
}

// Path: intro
class TranslationsIntroId extends TranslationsIntroEn {
	TranslationsIntroId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override TextSpan termsAndPolicyCaution({required InlineSpanBuilder tap}) => TextSpan(children: [
		const TextSpan(text: 'lanjut berarti setuju dengan '),
		tap(_root.about.termsAndConditions),
	]);
	@override String get start => 'Mulai';
}

// Path: home
class TranslationsHomeId extends TranslationsHomeEn {
	TranslationsHomeId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Utama';
	@override String get emptyProfilesMsg => 'Mulai menambahkan langganan profil';
	@override String get noActiveProfileMsg => 'Pilih profil';
}

// Path: stats
class TranslationsStatsId extends TranslationsStatsEn {
	TranslationsStatsId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get traffic => 'Trafik Langsung';
	@override String get trafficTotal => 'Total Trafik';
	@override String get uplink => 'Uplink';
	@override String get downlink => 'Downlink';
	@override String get connection => 'Sambungan';
}

// Path: profile
class TranslationsProfileId extends TranslationsProfileEn {
	TranslationsProfileId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get overviewPageTitle => 'Beberapa Profil';
	@override String get detailsPageTitle => 'Profil';
	@override String activeProfileNameSemanticLabel({required Object name}) => 'Nama profil aktif: "${name}".';
	@override String get activeProfileBtnSemanticLabel => 'Tampilkan semua profil.';
	@override String nonActiveProfileBtnSemanticLabel({required Object name}) => 'Pilih "${name}" sebagai profil aktif.';
	@override late final TranslationsProfileSubscriptionId subscription = TranslationsProfileSubscriptionId._(_root);
	@override late final TranslationsProfileSortById sortBy = TranslationsProfileSortById._(_root);
	@override late final TranslationsProfileAddId add = TranslationsProfileAddId._(_root);
	@override late final TranslationsProfileUpdateId update = TranslationsProfileUpdateId._(_root);
	@override late final TranslationsProfileShareId share = TranslationsProfileShareId._(_root);
	@override late final TranslationsProfileEditId edit = TranslationsProfileEditId._(_root);
	@override late final TranslationsProfileDeleteId delete = TranslationsProfileDeleteId._(_root);
	@override late final TranslationsProfileSaveId save = TranslationsProfileSaveId._(_root);
	@override late final TranslationsProfileDetailsFormId detailsForm = TranslationsProfileDetailsFormId._(_root);
}

// Path: proxies
class TranslationsProxiesId extends TranslationsProxiesEn {
	TranslationsProxiesId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Proxy';
	@override String get emptyProxiesMsg => 'Tidak ada proxy';
	@override String get delayTestTooltip => 'Test delay';
	@override String get sortTooltip => 'Urut Proxy';
	@override late final TranslationsProxiesSortOptionsId sortOptions = TranslationsProxiesSortOptionsId._(_root);
}

// Path: logs
class TranslationsLogsId extends TranslationsLogsEn {
	TranslationsLogsId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Log';
	@override String get filterHint => 'Filter';
	@override String get allLevelsFilter => 'Semua';
	@override String get shareCoreLogs => 'Bagikan Log Inti';
	@override String get shareAppLogs => 'Bagikan Log Aplikasi';
	@override String get pauseTooltip => 'Jeda';
	@override String get resumeTooltip => 'Lanjut';
	@override String get clearTooltip => 'Bersih';
}

// Path: settings
class TranslationsSettingsId extends TranslationsSettingsEn {
	TranslationsSettingsId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Setting';
	@override String get requiresRestartMsg => 'Untuk mencoba restart aplikasi';
	@override String get experimental => 'Eksperimen';
	@override String get experimentalMsg => 'Fitur dengan tanda Eksperimen masih dalam pengembangan dan resiko bermasalah.';
	@override late final TranslationsSettingsGeneralId general = TranslationsSettingsGeneralId._(_root);
	@override late final TranslationsSettingsAdvancedId advanced = TranslationsSettingsAdvancedId._(_root);
	@override late final TranslationsSettingsNetworkId network = TranslationsSettingsNetworkId._(_root);
	@override late final TranslationsSettingsGeoAssetsId geoAssets = TranslationsSettingsGeoAssetsId._(_root);
}

// Path: about
class TranslationsAboutId extends TranslationsAboutEn {
	TranslationsAboutId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Tentang';
	@override String get version => 'Versi';
	@override String get sourceCode => 'Code Sumber';
	@override String get telegramChannel => 'Kanal Telegram';
	@override String get checkForUpdate => 'Periksa perbaruan';
	@override String get privacyPolicy => 'Kebijakan Privasi';
	@override String get termsAndConditions => 'Syarat dan Ketentuan Umum';
}

// Path: appUpdate
class TranslationsAppUpdateId extends TranslationsAppUpdateEn {
	TranslationsAppUpdateId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get notAvailableMsg => 'Sudah menggunakan versi terakhir';
	@override String get dialogTitle => 'Perbaruan Tersedia';
	@override String get updateMsg => 'Versi terbaru ${_root.general.appTitle} tersedia. Ingin di perbarui sekarang?';
	@override String get currentVersionLbl => 'Versi Sekarang';
	@override String get newVersionLbl => 'Versi Baru';
	@override String get updateNowBtnTxt => 'Perbarui Sekarang';
	@override String get laterBtnTxt => 'Nanti';
	@override String get ignoreBtnTxt => 'Lewati';
}

// Path: tray
class TranslationsTrayId extends TranslationsTrayEn {
	TranslationsTrayId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Dashboard';
	@override String get quit => 'Keluar';
	@override String get open => 'Buka';
	@override late final TranslationsTrayStatusId status = TranslationsTrayStatusId._(_root);
}

// Path: failure
class TranslationsFailureId extends TranslationsFailureEn {
	TranslationsFailureId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Error Tidak Terduga';
	@override late final TranslationsFailureClashId clash = TranslationsFailureClashId._(_root);
	@override late final TranslationsFailureSingboxId singbox = TranslationsFailureSingboxId._(_root);
	@override late final TranslationsFailureConnectivityId connectivity = TranslationsFailureConnectivityId._(_root);
	@override late final TranslationsFailureProfilesId profiles = TranslationsFailureProfilesId._(_root);
	@override late final TranslationsFailureConnectionId connection = TranslationsFailureConnectionId._(_root);
	@override late final TranslationsFailureGeoAssetsId geoAssets = TranslationsFailureGeoAssetsId._(_root);
}

// Path: play
class TranslationsPlayId extends TranslationsPlayEn {
	TranslationsPlayId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hiddify (Preview)';
	@override String get short_description => 'Otomatik, SSH, VLESS, Vmess, Trojan, Reality, Sing-Box, Clash, Xray, Shadowsocks';
	@override String get full_description => 'Tujuan utama Hiddify adalah memberikan keamanan, user-friendly dan client tunnel yg efisien. Hiddify mengizinkanmu untuk mengarahkan semua atau beberapa trafik data aplikasi terpilih ke server remot pilihanmu, memanfaatkan izin VPN-Service.\n\nNote: Kami tidak menyediakan server apapun; pengguna diwajibkan untuk memastikan aktivitas online mereka tetap private dengan menggunakan self-hosted server atau server yg dipercaya pilihan mereka sendiri. \n \nKami mendukung server dengan:\n- Normal V2ray/Xray Subscription Link\n- Clash Subscription Link\n- Sing-Box Subscription Link\n\nApa fitur unik kami?\n - User Friendly\n - Cepat dan teroptimasi\n - Otomatis pilihan PING terendah \n - Menampilkan informasi penggunaan user\n - Dengan mudah import sublink dengan satu klik menggunakan deeplinking \n - Bebas dan tanpa iklan\n - Dengan mudah berganti user sublink\n - dan sebagainya\n\nSupport:\n- Semua protokol di dukung oleh Sing-Box \n- VLESS + xtls reality, vision\n- VMESS\n- Trojan\n- ShadowSocks\n- Reality\n- V2ray\n- Hystria2\n- TUIC\n- SSH\n- ShadowTLS\n\n\nCode Sumber ada di https://github.com/hiddify/Hiddify-Next\nInti Aplikasi didasarkan pada Sing-Box Open Source.\n\nDeskripsi Izin:\n- VPN Servis: Tujuan aplikasi ini menyediakan keamanan, user-friendly dan tunneling client efisien, kami membutuhkan izin untuk bisa mengarahkan traffic data melalui kanal remot server. \n- QUERY ALL PACKAGES: izin ini digunakan untuk memperbolehkan pengguna masuk atau mengeluarkan aplikasi tertentu untuk tunneling.\n- RECEIVE BOOT COMPLETED: izin ini dapat diaktifkan atau dinonaktifkan dari setting aplikasi untuk mengaktikan aplikasi ini saat boot device.\n- POST NOTIFICATIONS: izin ini penting karena kami menggunakan foreground service untuk memastikan operasi berkelanjutan dari VPN Servis.\n- Aplikasi ini bebas dari iklan. Analitik dan data crash hanya terjadi dengan persetujuan eksplisit dari pengguna pada saat penggunaan pertama kali';
}

// Path: connection
class TranslationsConnectionId extends TranslationsConnectionEn {
	TranslationsConnectionId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get tapToConnect => 'Ketuk untuk Sambung';
	@override String get connecting => 'Sambungkan';
	@override String get disconnecting => 'Putus Sambungan';
	@override String get connected => 'Tersambung';
	@override String get experimentalNotice => 'Fitur Experimental digunakan';
	@override String get experimentalNoticeMsg => 'Kamu telah mengaktifkan fitur experimental yang mungkin mempengaruhi kualitas sambungan dan error tidak terduga. Kamu tetap bisa merubah atau set ulang opsi dari Halaman Konfigurasi';
	@override String get disableExperimentalNotice => 'Jangan tampil lagi';
}

// Path: config
class TranslationsConfigId extends TranslationsConfigEn {
	TranslationsConfigId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get resetBtn => 'Set Ulang Opsi';
	@override String get serviceMode => 'Sambung ulang agar perubahan diterapkan';
	@override late final TranslationsConfigServiceModesId serviceModes = TranslationsConfigServiceModesId._(_root);
	@override late final TranslationsConfigSectionId section = TranslationsConfigSectionId._(_root);
	@override late final TranslationsConfigWarpConsentId warpConsent = TranslationsConfigWarpConsentId._(_root);
	@override String get pageTitle => 'Opsi Konfig';
	@override String get logLevel => 'Log Level';
	@override String get resolveDestination => 'Resolve Destination';
	@override String get ipv6Mode => 'IPv6 Route';
	@override late final TranslationsConfigIpv6ModesId ipv6Modes = TranslationsConfigIpv6ModesId._(_root);
	@override String get remoteDnsAddress => 'Remote DNS';
	@override String get remoteDnsDomainStrategy => 'Remote DNS Domain Strategy';
	@override String get directDnsAddress => 'Direct DNS';
	@override String get directDnsDomainStrategy => 'Direct DNS Domain Strategy';
	@override String get mixedPort => 'Mixed Port';
	@override String get localDnsPort => 'DNS Port Lokal';
	@override String get allowConnectionFromLan => 'Perbolehkan Sambungan LAN';
	@override String get tunImplementation => 'Implementasi TUN';
	@override String get mtu => 'MTU';
	@override String get connectionTestUrl => 'URL Tes Sambungan';
	@override String get urlTestInterval => 'URL Test Interval';
	@override String get enableClashApi => 'Aktifkan Clash API';
	@override String get clashApiPort => 'Clash API Port';
	@override String get enableTun => 'Aktifkan TUN';
	@override String get setSystemProxy => 'Atur Sistem Proxy';
	@override String get enableDnsRouting => 'Aktifkan DNS Routing';
	@override String get enableFakeDns => 'Aktifkan DNS Palsu';
	@override String get bypassLan => 'Bypass LAN';
	@override String get strictRoute => 'Strict Route';
	@override String get enableTlsFragment => 'Aktifkan TLS Fragment';
	@override String get tlsFragmentSize => 'TLS Fragment Size';
	@override String get tlsFragmentSleep => 'TLS Fragment Sleep';
	@override String get enableTlsMixedSniCase => 'Aktifkan TLS Mixed SNI Case';
	@override String get enableTlsPadding => 'Aktifkan TLS Padding';
	@override String get tlsPaddingSize => 'TLS Padding';
	@override String get enableMux => 'Enable Mux';
	@override String get muxProtocol => 'Mux Protocol';
	@override String get muxMaxStreams => 'Max Concurrent Streams';
	@override String get enableWarp => 'Enable WARP';
	@override String get warpDetourMode => 'Detour Mode';
	@override late final TranslationsConfigWarpDetourModesId warpDetourModes = TranslationsConfigWarpDetourModesId._(_root);
	@override String get warpLicenseKey => 'License Key';
	@override String get warpCleanIp => 'Clean IP';
	@override String get warpPort => 'Port';
	@override String get warpNoise => 'Noise';
}

// Path: general.toggle
class TranslationsGeneralToggleId extends TranslationsGeneralToggleEn {
	TranslationsGeneralToggleId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get enabled => 'Mengaktifkan';
	@override String get disabled => 'Menonaktifkan';
}

// Path: general.state
class TranslationsGeneralStateId extends TranslationsGeneralStateEn {
	TranslationsGeneralStateId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get disable => 'Menonaktifkan';
}

// Path: profile.subscription
class TranslationsProfileSubscriptionId extends TranslationsProfileSubscriptionEn {
	TranslationsProfileSubscriptionId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get traffic => 'Trafik';
	@override String updatedTimeAgo({required Object timeago}) => '${timeago} diperbarui';
	@override String remainingDuration({required Object duration}) => 'Tersisa ${duration} hari lagi';
	@override String remainingTrafficSemanticLabel({required Object consumed, required Object total}) => '${consumed}/${total} trafik terpakai';
	@override String get expired => 'Kadaluarsa';
	@override String get noTraffic => 'Kuota Habis';
}

// Path: profile.sortBy
class TranslationsProfileSortById extends TranslationsProfileSortByEn {
	TranslationsProfileSortById._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get lastUpdate => 'Baru diperbaharui';
	@override String get name => 'Alphabetikal';
}

// Path: profile.add
class TranslationsProfileAddId extends TranslationsProfileAddEn {
	TranslationsProfileAddId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Profil Baru';
	@override String get shortBtnTxt => 'Profil Baru';
	@override String get fromClipboard => 'Tambah dari Clipboard';
	@override String get scanQr => 'Pindai QR';
	@override late final TranslationsProfileAddQrScannerId qrScanner = TranslationsProfileAddQrScannerId._(_root);
	@override String get manually => 'Isian Manual';
	@override String get addingProfileMsg => 'Tambahkan Profil';
	@override String get failureMsg => 'Gagal tambahkan profil';
}

// Path: profile.update
class TranslationsProfileUpdateId extends TranslationsProfileUpdateEn {
	TranslationsProfileUpdateId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Perbarui';
	@override String get tooltip => 'Profil terbaru';
	@override String get updateSubscriptions => 'Perbarui Langganan';
	@override String get failureMsg => 'Gagal perbarui profil';
	@override String get successMsg => 'Sukses perbarui profil';
	@override String namedFailureMsg({required Object name}) => 'Gagal perbarui "${name}"';
	@override String namedSuccessMsg({required Object name}) => 'Sukses perbarui "${name}"';
}

// Path: profile.share
class TranslationsProfileShareId extends TranslationsProfileShareEn {
	TranslationsProfileShareId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Bagi';
	@override String get exportToClipboardSuccess => 'Taruh ke clipboard';
	@override String get exportSubLinkToClipboard => 'Taruh link langganan ke clipboard';
	@override String get subLinkQrCode => 'Link Langganan QR';
	@override String get exportConfigToClipboard => 'Taruh konfigurasi ke clipboard';
	@override String get exportConfigToClipboardSuccess => 'Salin konfigurasi ke clipboard';
}

// Path: profile.edit
class TranslationsProfileEditId extends TranslationsProfileEditEn {
	TranslationsProfileEditId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Ubah';
	@override String get selectActiveTxt => 'Pilih profil aktif';
}

// Path: profile.delete
class TranslationsProfileDeleteId extends TranslationsProfileDeleteEn {
	TranslationsProfileDeleteId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Hapus';
	@override String get confirmationMsg => 'Hapus profil permanen?';
	@override String get successMsg => 'Sukses hapus profil';
}

// Path: profile.save
class TranslationsProfileSaveId extends TranslationsProfileSaveEn {
	TranslationsProfileSaveId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Simpan';
	@override String get successMsg => 'Sukses simpan profil';
	@override String get failureMsg => 'Gagal simpan profil';
}

// Path: profile.detailsForm
class TranslationsProfileDetailsFormId extends TranslationsProfileDetailsFormEn {
	TranslationsProfileDetailsFormId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get nameLabel => 'Nama';
	@override String get nameHint => 'Nama Profil';
	@override String get urlLabel => 'URL';
	@override String get urlHint => 'URL Lengkap';
	@override String get emptyNameMsg => 'Nama diwajibkan';
	@override String get invalidUrlMsg => 'URL Salah';
	@override String get lastUpdate => 'Terakhir diperbarui';
	@override String get updateInterval => 'Perbarui otomatis';
	@override String get updateIntervalDialogTitle => 'Interval perbarui otomatis (dalam jam)';
}

// Path: proxies.sortOptions
class TranslationsProxiesSortOptionsId extends TranslationsProxiesSortOptionsEn {
	TranslationsProxiesSortOptionsId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get unsorted => 'Awal';
	@override String get name => 'Alfabetikal';
	@override String get delay => 'Berdasarkan Delay';
}

// Path: settings.general
class TranslationsSettingsGeneralId extends TranslationsSettingsGeneralEn {
	TranslationsSettingsGeneralId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Umum';
	@override String get locale => 'Bahasa';
	@override String get region => 'Region';
	@override String get regionMsg => 'Bantu tetapkan opsi standar untuk melewati alamat lokal';
	@override late final TranslationsSettingsGeneralRegionsId regions = TranslationsSettingsGeneralRegionsId._(_root);
	@override String get themeMode => 'Jenis Tema';
	@override late final TranslationsSettingsGeneralThemeModesId themeModes = TranslationsSettingsGeneralThemeModesId._(_root);
	@override String get enableAnalytics => 'Mengaktifkan Analitik';
	@override String get enableAnalyticsMsg => 'Beri izin untuk mengumpulkan analisis dan mengirim laporan kegagalan untuk meningkatkan aplikasi';
	@override String get autoStart => 'Mulai saat Login';
	@override String get silentStart => 'Mulai Minimalkan';
	@override String get openWorkingDir => 'Buka Direktori Kerja';
	@override String get ignoreBatteryOptimizations => 'Menonaktifkan Optimisasi Baterai';
	@override String get ignoreBatteryOptimizationsMsg => 'Hapus batasan untuk performa VPN yang optimal';
	@override String get dynamicNotification => 'Tampilkan Kecepatan di notifikasi';
}

// Path: settings.advanced
class TranslationsSettingsAdvancedId extends TranslationsSettingsAdvancedEn {
	TranslationsSettingsAdvancedId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Mode Lanjut';
	@override String get debugMode => 'Mode Debug';
	@override String get debugModeMsg => 'Restart aplikasi untuk menerapkan perubahan';
	@override String get memoryLimit => 'Limit Memori';
	@override String get memoryLimitMsg => 'Aktifkan jika kamu mendapatkan error habis memori atau error aplikasi yang sering';
	@override String get resetTunnel => 'Set ulang profil VPN';
}

// Path: settings.network
class TranslationsSettingsNetworkId extends TranslationsSettingsNetworkEn {
	TranslationsSettingsNetworkId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get perAppProxyPageTitle => 'Per-app Proxy';
	@override late final TranslationsSettingsNetworkPerAppProxyModesId perAppProxyModes = TranslationsSettingsNetworkPerAppProxyModesId._(_root);
	@override String get showSystemApps => 'Tampil aplikasi sistem';
	@override String get hideSystemApps => 'Sembunyikan aplikasi sistem';
	@override String get clearSelection => 'Bersihkan seleksi';
}

// Path: settings.geoAssets
class TranslationsSettingsGeoAssetsId extends TranslationsSettingsGeoAssetsEn {
	TranslationsSettingsGeoAssetsId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Rute Aset';
	@override String get geoip => 'Geoip';
	@override String get geosite => 'Geosite';
	@override String version({required Object version}) => 'Versi ${version}';
	@override String get fileMissing => 'File Hilang';
	@override String get update => 'Perbarui';
	@override String get download => 'Unduh';
	@override String get failureMsg => 'Gagal perbarui aset';
	@override String get successMsg => 'Sukses perbarui aset';
	@override String get addRecommended => 'Tambah aset rekomendasi';
	@override String get missingGeoAssetsMsg => 'Routing aset terpilih filenya hilang. Silahkan unduh atau pilih dari yang ada';
}

// Path: tray.status
class TranslationsTrayStatusId extends TranslationsTrayStatusEn {
	TranslationsTrayStatusId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get connect => 'Sambung';
	@override String get connecting => 'Menyambungkan';
	@override String get disconnect => 'Putus';
	@override String get disconnecting => 'Memutuskan';
}

// Path: failure.clash
class TranslationsFailureClashId extends TranslationsFailureClashEn {
	TranslationsFailureClashId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Error Tidak Terduga';
	@override String core({required Object reason}) => 'Clash Error ${reason}';
}

// Path: failure.singbox
class TranslationsFailureSingboxId extends TranslationsFailureSingboxEn {
	TranslationsFailureSingboxId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Servis Error Tidak Terduga';
	@override String get serviceNotRunning => 'Servis tidak berjalan';
	@override String get missingPrivilege => 'Hak Akses Hilang';
	@override String get missingPrivilegeMsg => 'Mode VPN membutuhkan hak akses administrator. Antara buka ulang aplikasi sebagai administrator atau rubah mode servis';
	@override String get missingGeoAssets => 'Geo Aset Hilang';
	@override String get missingGeoAssetsMsg => 'Geo aset hilang. Pertimbangkan merubah aset aktif atau unduh yang sudah dipilih di seting';
	@override String get invalidConfigOptions => 'Pilihan konfigurasi tidak valid';
	@override String get invalidConfig => 'Konfigurasi tidak valid';
	@override String get create => 'Pembuatan Servis Error';
	@override String get start => 'Jalankan Servis Error';
}

// Path: failure.connectivity
class TranslationsFailureConnectivityId extends TranslationsFailureConnectivityEn {
	TranslationsFailureConnectivityId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Kegagalan tidak terduga';
	@override String get missingVpnPermission => 'Izin VPN Hilang';
	@override String get missingNotificationPermission => 'Izin Notifikasi Hilang';
	@override String get core => 'Error Inti';
}

// Path: failure.profiles
class TranslationsFailureProfilesId extends TranslationsFailureProfilesEn {
	TranslationsFailureProfilesId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Error Tidak Terduga';
	@override String get notFound => 'Profil tidak ditemukan';
	@override String get invalidConfig => 'Konfigurasi tidak valid';
	@override String get invalidUrl => 'URL tidak valid';
}

// Path: failure.connection
class TranslationsFailureConnectionId extends TranslationsFailureConnectionEn {
	TranslationsFailureConnectionId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Sambungan error tidak terduga';
	@override String get timeout => 'Waktu Sambungan Habis';
	@override String get badResponse => 'Response Rusak';
	@override String get connectionError => 'Sambungan Error';
	@override String get badCertificate => 'Sertifikat Rusak';
}

// Path: failure.geoAssets
class TranslationsFailureGeoAssetsId extends TranslationsFailureGeoAssetsEn {
	TranslationsFailureGeoAssetsId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Error Tidak Terduga';
	@override String get notUpdate => 'Perbaruan tidak tersedia';
	@override String get activeNotFound => 'Geo Aset Aktif tidak ditemukan';
}

// Path: config.serviceModes
class TranslationsConfigServiceModesId extends TranslationsConfigServiceModesEn {
	TranslationsConfigServiceModesId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get proxy => 'Proxy';
	@override String get systemProxy => 'Sistem Proxy';
	@override String get tun => 'VPN';
}

// Path: config.section
class TranslationsConfigSectionId extends TranslationsConfigSectionEn {
	TranslationsConfigSectionId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get route => 'Opsi Route';
	@override String get dns => 'Opsi DNS';
	@override String get inbound => 'Opsi Inbound';
	@override String get mux => 'Multiplexer';
	@override String get outbound => 'Opsi Outbound';
	@override String get tlsTricks => 'TLS Tricks';
	@override String get warp => 'Opsi WARP';
	@override String get misc => 'Opsi Misc';
}

// Path: config.warpConsent
class TranslationsConfigWarpConsentId extends TranslationsConfigWarpConsentEn {
	TranslationsConfigWarpConsentId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get title => 'Persetujuan Cloudflare WARP';
	@override TextSpan description({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
		const TextSpan(text: 'Cloudflare WARP adalah WireGuard VPN Provider gratis. Dengan mengaktifkan opsi/pilihan ini berarti kamu setuju pada Cloudflare WARP\'s '),
		tos('Terms of Service'),
		const TextSpan(text: ' dan '),
		privacy('Privacy Policy'),
		const TextSpan(text: '.'),
	]);
}

// Path: config.ipv6Modes
class TranslationsConfigIpv6ModesId extends TranslationsConfigIpv6ModesEn {
	TranslationsConfigIpv6ModesId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get disable => 'Nonaktifkan';
	@override String get enable => 'Aktifkan';
	@override String get prefer => 'Prefer';
	@override String get only => 'Exclusive';
}

// Path: config.warpDetourModes
class TranslationsConfigWarpDetourModesId extends TranslationsConfigWarpDetourModesEn {
	TranslationsConfigWarpDetourModesId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get inbound => 'Detour WARP through proxies';
	@override String get outbound => 'Detour proxies through WARP';
}

// Path: profile.add.qrScanner
class TranslationsProfileAddQrScannerId extends TranslationsProfileAddQrScannerEn {
	TranslationsProfileAddQrScannerId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get permissionDeniedError => 'Izin ditolak';
	@override String get unexpectedError => 'Terjadi masalah';
	@override String get torchSemanticLabel => 'Lampu Flash';
	@override String get facingSemanticLabel => 'Hadap Kamera';
}

// Path: settings.general.regions
class TranslationsSettingsGeneralRegionsId extends TranslationsSettingsGeneralRegionsEn {
	TranslationsSettingsGeneralRegionsId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get ir => 'İran (ir)';
	@override String get cn => 'Çin (cn)';
	@override String get ru => 'Russia (ru)';
	@override String get af => 'Afghanistan (af)';
	@override String get other => 'Lainnya';
}

// Path: settings.general.themeModes
class TranslationsSettingsGeneralThemeModesId extends TranslationsSettingsGeneralThemeModesEn {
	TranslationsSettingsGeneralThemeModesId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get system => 'Ikut Tema Sistem';
	@override String get dark => 'Tema Gelap';
	@override String get light => 'Tema Cerah';
	@override String get black => 'Tema Hitam';
}

// Path: settings.network.perAppProxyModes
class TranslationsSettingsNetworkPerAppProxyModesId extends TranslationsSettingsNetworkPerAppProxyModesEn {
	TranslationsSettingsNetworkPerAppProxyModesId._(TranslationsId root) : this._root = root, super._(root);

	@override final TranslationsId _root; // ignore: unused_field

	// Translations
	@override String get off => 'Semua';
	@override String get offMsg => 'Proxy semua applikasi';
	@override String get include => 'Proxy';
	@override String get includeMsg => 'Proxy untuk aplikasi terpilih';
	@override String get exclude => 'Bypass';
	@override String get excludeMsg => 'Tidak proxy untuk aplikasi terpilih';
}

// Path: <root>
class TranslationsPtBr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPtBr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ptBr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt-BR>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final TranslationsPtBr _root = this; // ignore: unused_field

	// Translations
	@override late final TranslationsGeneralPtBr general = TranslationsGeneralPtBr._(_root);
	@override late final TranslationsIntroPtBr intro = TranslationsIntroPtBr._(_root);
	@override late final TranslationsHomePtBr home = TranslationsHomePtBr._(_root);
	@override late final TranslationsStatsPtBr stats = TranslationsStatsPtBr._(_root);
	@override late final TranslationsProfilePtBr profile = TranslationsProfilePtBr._(_root);
	@override late final TranslationsProxiesPtBr proxies = TranslationsProxiesPtBr._(_root);
	@override late final TranslationsLogsPtBr logs = TranslationsLogsPtBr._(_root);
	@override late final TranslationsSettingsPtBr settings = TranslationsSettingsPtBr._(_root);
	@override late final TranslationsAboutPtBr about = TranslationsAboutPtBr._(_root);
	@override late final TranslationsAppUpdatePtBr appUpdate = TranslationsAppUpdatePtBr._(_root);
	@override late final TranslationsTrayPtBr tray = TranslationsTrayPtBr._(_root);
	@override late final TranslationsFailurePtBr failure = TranslationsFailurePtBr._(_root);
	@override late final TranslationsPlayPtBr play = TranslationsPlayPtBr._(_root);
	@override late final TranslationsConnectionPtBr connection = TranslationsConnectionPtBr._(_root);
	@override late final TranslationsConfigPtBr config = TranslationsConfigPtBr._(_root);
}

// Path: general
class TranslationsGeneralPtBr extends TranslationsGeneralEn {
	TranslationsGeneralPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Hiddify';
	@override String get reset => 'Restaurar';
	@override late final TranslationsGeneralTogglePtBr toggle = TranslationsGeneralTogglePtBr._(_root);
	@override late final TranslationsGeneralStatePtBr state = TranslationsGeneralStatePtBr._(_root);
	@override String get sort => 'Ordernar';
	@override String get sortBy => 'Ordenar Por';
	@override String get addToClipboard => 'Adicionar à área de transferência';
	@override String get notSet => 'Não configurado';
	@override String get agree => 'Aceitar';
	@override String get decline => 'Recusar';
	@override String get unknown => 'Desconhecido';
	@override String get hidden => 'Escondido';
	@override String get timeout => 'Tempo Esgotado';
}

// Path: intro
class TranslationsIntroPtBr extends TranslationsIntroEn {
	TranslationsIntroPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override TextSpan termsAndPolicyCaution({required InlineSpanBuilder tap}) => TextSpan(children: [
		const TextSpan(text: 'ao continuar você concorda com '),
		tap(' ${_root.about.termsAndConditions}'),
	]);
	@override String get start => 'Começar';
}

// Path: home
class TranslationsHomePtBr extends TranslationsHomeEn {
	TranslationsHomePtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Inicio';
	@override String get emptyProfilesMsg => 'Comece adicionando um perfil de assinatura';
	@override String get noActiveProfileMsg => 'Escolha um perfil';
}

// Path: stats
class TranslationsStatsPtBr extends TranslationsStatsEn {
	TranslationsStatsPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get trafficLive => 'Tráfego ao vivo';
	@override String get trafficTotal => 'Tráfego total';
	@override String get uplink => 'Ligação ascendente';
	@override String get downlink => 'Link descendente';
	@override String get connection => 'Conexão';
	@override String get speed => 'Velocidade';
	@override String get totalTransferred => 'Total Transferido';
}

// Path: profile
class TranslationsProfilePtBr extends TranslationsProfileEn {
	TranslationsProfilePtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get overviewPageTitle => 'Perfis';
	@override String get detailsPageTitle => 'Perfil';
	@override String activeProfileNameSemanticLabel({required Object name}) => 'Nome do perfil ativo: "${name}".';
	@override String get activeProfileBtnSemanticLabel => 'Ver todos os perfis';
	@override String nonActiveProfileBtnSemanticLabel({required Object name}) => 'Selecione "${name}" como perfil ativo.';
	@override late final TranslationsProfileSubscriptionPtBr subscription = TranslationsProfileSubscriptionPtBr._(_root);
	@override late final TranslationsProfileSortByPtBr sortBy = TranslationsProfileSortByPtBr._(_root);
	@override late final TranslationsProfileAddPtBr add = TranslationsProfileAddPtBr._(_root);
	@override late final TranslationsProfileUpdatePtBr update = TranslationsProfileUpdatePtBr._(_root);
	@override late final TranslationsProfileSharePtBr share = TranslationsProfileSharePtBr._(_root);
	@override late final TranslationsProfileEditPtBr edit = TranslationsProfileEditPtBr._(_root);
	@override late final TranslationsProfileDeletePtBr delete = TranslationsProfileDeletePtBr._(_root);
	@override late final TranslationsProfileSavePtBr save = TranslationsProfileSavePtBr._(_root);
	@override late final TranslationsProfileDetailsFormPtBr detailsForm = TranslationsProfileDetailsFormPtBr._(_root);
}

// Path: proxies
class TranslationsProxiesPtBr extends TranslationsProxiesEn {
	TranslationsProxiesPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Proxies';
	@override String get emptyProxiesMsg => 'Nenhum proxy disponível';
	@override String get delayTestTooltip => 'Atraso de teste';
	@override String get sortTooltip => 'Ordenar proxies';
	@override String get checkIp => 'Verifique o IP';
	@override String get unknownIp => 'IP desconhecido';
	@override late final TranslationsProxiesSortOptionsPtBr sortOptions = TranslationsProxiesSortOptionsPtBr._(_root);
	@override String get activeProxySemanticLabel => 'Proxy ativo';
	@override late final TranslationsProxiesDelaySemanticsPtBr delaySemantics = TranslationsProxiesDelaySemanticsPtBr._(_root);
	@override late final TranslationsProxiesIpInfoSemanticsPtBr ipInfoSemantics = TranslationsProxiesIpInfoSemanticsPtBr._(_root);
}

// Path: logs
class TranslationsLogsPtBr extends TranslationsLogsEn {
	TranslationsLogsPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Histórico';
	@override String get filterHint => 'Filtro';
	@override String get allLevelsFilter => 'Todos';
	@override String get shareCoreLogs => 'Compartilhe registros principais';
	@override String get shareAppLogs => 'Compartilhe registros de aplicativos';
	@override String get pauseTooltip => 'Pausar';
	@override String get resumeTooltip => 'Resumir';
	@override String get clearTooltip => 'Limpar';
}

// Path: settings
class TranslationsSettingsPtBr extends TranslationsSettingsEn {
	TranslationsSettingsPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Configurações';
	@override String get requiresRestartMsg => 'Para que isso tenha efeito, reinicie o aplicativo';
	@override String get experimental => 'Experimental';
	@override String get experimentalMsg => 'Os recursos com sinalização Experimental ainda estão em desenvolvimento e podem causar problemas.';
	@override late final TranslationsSettingsGeneralPtBr general = TranslationsSettingsGeneralPtBr._(_root);
	@override late final TranslationsSettingsAdvancedPtBr advanced = TranslationsSettingsAdvancedPtBr._(_root);
	@override late final TranslationsSettingsNetworkPtBr network = TranslationsSettingsNetworkPtBr._(_root);
	@override late final TranslationsSettingsGeoAssetsPtBr geoAssets = TranslationsSettingsGeoAssetsPtBr._(_root);
}

// Path: about
class TranslationsAboutPtBr extends TranslationsAboutEn {
	TranslationsAboutPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Sobre';
	@override String get version => 'Versão';
	@override String get sourceCode => 'Código fonte';
	@override String get telegramChannel => 'Canal Telegram';
	@override String get checkForUpdate => 'Verifique atualizações';
	@override String get privacyPolicy => 'Política de Privacidade';
	@override String get termsAndConditions => 'Termos e Condições';
}

// Path: appUpdate
class TranslationsAppUpdatePtBr extends TranslationsAppUpdateEn {
	TranslationsAppUpdatePtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get notAvailableMsg => 'Já usando a versão mais recente';
	@override String get dialogTitle => 'Atualização disponível';
	@override String get updateMsg => 'Uma nova versão de ${_root.general.appTitle} está disponível. Gostaria de atualizar agora?';
	@override String get currentVersionLbl => 'Versão Atual';
	@override String get newVersionLbl => 'Nova versão';
	@override String get updateNowBtnTxt => 'Atualizar agora';
	@override String get laterBtnTxt => 'Mais tarde';
	@override String get ignoreBtnTxt => 'Ignorar';
}

// Path: tray
class TranslationsTrayPtBr extends TranslationsTrayEn {
	TranslationsTrayPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Painel';
	@override String get quit => 'Sair';
	@override String get open => 'Abrir';
	@override late final TranslationsTrayStatusPtBr status = TranslationsTrayStatusPtBr._(_root);
}

// Path: failure
class TranslationsFailurePtBr extends TranslationsFailureEn {
	TranslationsFailurePtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Erro inesperado';
	@override late final TranslationsFailureClashPtBr clash = TranslationsFailureClashPtBr._(_root);
	@override late final TranslationsFailureSingboxPtBr singbox = TranslationsFailureSingboxPtBr._(_root);
	@override late final TranslationsFailureConnectivityPtBr connectivity = TranslationsFailureConnectivityPtBr._(_root);
	@override late final TranslationsFailureProfilesPtBr profiles = TranslationsFailureProfilesPtBr._(_root);
	@override late final TranslationsFailureConnectionPtBr connection = TranslationsFailureConnectionPtBr._(_root);
	@override late final TranslationsFailureGeoAssetsPtBr geoAssets = TranslationsFailureGeoAssetsPtBr._(_root);
}

// Path: play
class TranslationsPlayPtBr extends TranslationsPlayEn {
	TranslationsPlayPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hiddify (Pré-visualização)';
	@override String get short_description => 'Auto, SSH, VLESS, VMess, Trojan, Reality, Sing-Box, Clash, XRay, Shadowsocks';
}

// Path: connection
class TranslationsConnectionPtBr extends TranslationsConnectionEn {
	TranslationsConnectionPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get tapToConnect => 'Toque para conectar';
	@override String get connecting => 'Conectando';
	@override String get disconnecting => 'Desconectando';
	@override String get connected => 'Conectado';
	@override String get experimentalNotice => 'Recursos experimentais em uso';
	@override String get experimentalNoticeMsg => 'Você ativou alguns recursos experimentais que podem afetar a qualidade da conexão e causar erros inesperados. Você sempre pode alterar ou redefinir essas opções na página de opções de configuração.';
	@override String get disableExperimentalNotice => 'Não mostrar novamente';
}

// Path: config
class TranslationsConfigPtBr extends TranslationsConfigEn {
	TranslationsConfigPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get resetBtn => 'Redefinir opções';
	@override String get serviceMode => 'Modo de serviço';
	@override late final TranslationsConfigServiceModesPtBr serviceModes = TranslationsConfigServiceModesPtBr._(_root);
	@override late final TranslationsConfigSectionPtBr section = TranslationsConfigSectionPtBr._(_root);
	@override late final TranslationsConfigWarpConsentPtBr warpConsent = TranslationsConfigWarpConsentPtBr._(_root);
	@override String get generateWarpConfig => 'Gerar configuração WARP';
	@override String get missingWarpConfig => 'Configuração WARP ausente';
	@override String get warpConfigGenerated => 'Configuração WARP gerada';
	@override String get pageTitle => 'Opções de configuração';
	@override String get logLevel => 'Nível de registro';
	@override String get resolveDestination => 'Resolver destino';
	@override String get ipv6Mode => 'Rota IPv6';
	@override late final TranslationsConfigIpv6ModesPtBr ipv6Modes = TranslationsConfigIpv6ModesPtBr._(_root);
	@override String get remoteDnsAddress => 'DNS remoto';
	@override String get remoteDnsDomainStrategy => 'Estratégia de Domínio DNS Remoto';
	@override String get directDnsAddress => 'DNS direto';
	@override String get directDnsDomainStrategy => 'Estratégia de Domínio DNS Direto';
	@override String get mixedPort => 'Porta Mista';
	@override String get localDnsPort => 'Porta DNS local';
	@override String get allowConnectionFromLan => 'Permitir conexão da LAN';
	@override String get tunImplementation => 'Implementação TUN';
	@override String get mtu => 'MTU';
	@override String get connectionTestUrl => 'URL de teste de conexão';
	@override String get urlTestInterval => 'Intervalo de teste de URL';
	@override String get enableClashApi => 'Ativar API Clash';
	@override String get clashApiPort => 'Porta da API Clash';
	@override String get enableTun => 'Ativar TUN';
	@override String get setSystemProxy => 'Definir proxy do sistema';
	@override String get enableDnsRouting => 'Habilitar roteamento DNS';
	@override String get enableFakeDns => 'Habilitar DNS falso';
	@override String get bypassLan => 'Ignorar LAN';
	@override String get strictRoute => 'Rota Estrita';
	@override String get enableTlsFragment => 'Habilitar fragmento TLS';
	@override String get tlsFragmentSize => 'Tamanho do fragmento TLS';
	@override String get tlsFragmentSleep => 'Suspensão do fragmento TLS';
	@override String get enableTlsMixedSniCase => 'Habilitar caso SNI misto TLS';
	@override String get enableTlsPadding => 'Habilitar preenchimento TLS';
	@override String get tlsPaddingSize => 'Preenchimento TLS';
	@override String get enableMux => 'Habilitar Mux';
	@override String get muxProtocol => 'Protocolo Mux';
	@override String get muxMaxStreams => 'Máximo de fluxos simultâneos';
	@override String get enableWarp => 'Habilitar WARP';
	@override String get warpDetourMode => 'Modo de desvio';
	@override late final TranslationsConfigWarpDetourModesPtBr warpDetourModes = TranslationsConfigWarpDetourModesPtBr._(_root);
	@override String get warpLicenseKey => 'Chave de licença';
	@override String get warpCleanIp => 'Limpar IP';
	@override String get warpPort => 'Porta';
	@override String get warpNoise => 'Contagem de ruído';
	@override String get warpNoiseDelay => 'Atraso de ruído';
}

// Path: general.toggle
class TranslationsGeneralTogglePtBr extends TranslationsGeneralToggleEn {
	TranslationsGeneralTogglePtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get enabled => 'Habilitado';
	@override String get disabled => 'Desabilitado';
}

// Path: general.state
class TranslationsGeneralStatePtBr extends TranslationsGeneralStateEn {
	TranslationsGeneralStatePtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get disable => 'Desabilitar';
}

// Path: profile.subscription
class TranslationsProfileSubscriptionPtBr extends TranslationsProfileSubscriptionEn {
	TranslationsProfileSubscriptionPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get traffic => 'Tráfego';
	@override String updatedTimeAgo({required Object timeago}) => 'Atualizado ${timeago}';
	@override String remainingDuration({required Object duration}) => '${duration} dias restantes';
	@override String remainingTrafficSemanticLabel({required Object consumed, required Object total}) => '${consumed} de ${total} tráfego consumido';
	@override String get expired => 'Expirado';
	@override String get noTraffic => 'Fora da cota';
	@override String get upload => 'Upload';
	@override String get download => 'Download';
	@override String get total => 'Tráfego total';
	@override String get expireDate => 'Data de validade';
}

// Path: profile.sortBy
class TranslationsProfileSortByPtBr extends TranslationsProfileSortByEn {
	TranslationsProfileSortByPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get lastUpdate => 'Atualizado recentemente';
	@override String get name => 'Alfabeticamente';
}

// Path: profile.add
class TranslationsProfileAddPtBr extends TranslationsProfileAddEn {
	TranslationsProfileAddPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Novo Perfil';
	@override String get shortBtnTxt => 'Novo Perfil';
	@override String get fromClipboard => 'Adicionar da área de transferência';
	@override String get scanQr => 'Digitalize o código QR';
	@override late final TranslationsProfileAddQrScannerPtBr qrScanner = TranslationsProfileAddQrScannerPtBr._(_root);
	@override String get manually => 'Entrada manual';
	@override String get addingProfileMsg => 'Adicionando Perfil';
	@override String get failureMsg => 'Falha ao adicionar perfil';
}

// Path: profile.update
class TranslationsProfileUpdatePtBr extends TranslationsProfileUpdateEn {
	TranslationsProfileUpdatePtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Atualizar';
	@override String get tooltip => 'Atualizar Perfil';
	@override String get updateSubscriptions => 'Atualizar assinaturas';
	@override String get failureMsg => 'Falha ao atualizar perfil';
	@override String get successMsg => 'Perfil atualizado com sucesso';
	@override String namedFailureMsg({required Object name}) => 'Falha ao atualizar "${name}"';
	@override String namedSuccessMsg({required Object name}) => '"${name}" atualizado com sucesso';
}

// Path: profile.share
class TranslationsProfileSharePtBr extends TranslationsProfileShareEn {
	TranslationsProfileSharePtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Compartilhar';
	@override String get exportToClipboardSuccess => 'Exportado para a área de transferência';
	@override String get exportSubLinkToClipboard => 'Exportar link de assinatura para a área de transferência';
	@override String get subLinkQrCode => 'Código QR do link de assinatura';
	@override String get exportConfigToClipboard => 'Exportar configuração para a área de transferência';
	@override String get exportConfigToClipboardSuccess => 'Configuração copiada para a área de transferência';
}

// Path: profile.edit
class TranslationsProfileEditPtBr extends TranslationsProfileEditEn {
	TranslationsProfileEditPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Editar';
	@override String get selectActiveTxt => 'Selecionar perfil ativo';
}

// Path: profile.delete
class TranslationsProfileDeletePtBr extends TranslationsProfileDeleteEn {
	TranslationsProfileDeletePtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Deletar';
	@override String get confirmationMsg => 'Deletar perfil permanentemente?';
	@override String get successMsg => 'Perfil deletado com sucesso';
}

// Path: profile.save
class TranslationsProfileSavePtBr extends TranslationsProfileSaveEn {
	TranslationsProfileSavePtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Salvar';
	@override String get successMsg => 'Perfil salvo com sucesso';
	@override String get failureMsg => 'Falha ao salvar perfil';
}

// Path: profile.detailsForm
class TranslationsProfileDetailsFormPtBr extends TranslationsProfileDetailsFormEn {
	TranslationsProfileDetailsFormPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get nameLabel => 'Nome';
	@override String get nameHint => 'Nome do Perfil';
	@override String get urlLabel => 'URL';
	@override String get urlHint => 'URL de configuração completo';
	@override String get emptyNameMsg => 'Nome é obrigatório ';
	@override String get invalidUrlMsg => 'URL inválido';
	@override String get lastUpdate => 'Ultima Atualização';
	@override String get updateInterval => 'Atualização Automática ';
	@override String get updateIntervalDialogTitle => 'Intervalo de atualização automática (em horas)';
}

// Path: proxies.sortOptions
class TranslationsProxiesSortOptionsPtBr extends TranslationsProxiesSortOptionsEn {
	TranslationsProxiesSortOptionsPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get unsorted => 'Padrão';
	@override String get name => 'Alfabeticamente';
	@override String get delay => 'Por atraso';
}

// Path: proxies.delaySemantics
class TranslationsProxiesDelaySemanticsPtBr extends TranslationsProxiesDelaySemanticsEn {
	TranslationsProxiesDelaySemanticsPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String result({required Object delay}) => 'atraso: ${delay}ms';
	@override String get timeout => 'atrasar o tempo limite do teste';
	@override String get testing => 'atraso: testando...';
}

// Path: proxies.ipInfoSemantics
class TranslationsProxiesIpInfoSemanticsPtBr extends TranslationsProxiesIpInfoSemanticsEn {
	TranslationsProxiesIpInfoSemanticsPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get address => 'Endereço de IP';
	@override String get country => 'País';
}

// Path: settings.general
class TranslationsSettingsGeneralPtBr extends TranslationsSettingsGeneralEn {
	TranslationsSettingsGeneralPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Geral';
	@override String get locale => 'Linguagem';
	@override String get region => 'Região';
	@override String get regionMsg => 'Ajuda a definir opções padrão para ignorar endereços domésticos';
	@override late final TranslationsSettingsGeneralRegionsPtBr regions = TranslationsSettingsGeneralRegionsPtBr._(_root);
	@override String get themeMode => 'Modo de Tema';
	@override late final TranslationsSettingsGeneralThemeModesPtBr themeModes = TranslationsSettingsGeneralThemeModesPtBr._(_root);
	@override String get enableAnalytics => 'Habilitar Análise';
	@override String get enableAnalyticsMsg => 'Dê permissão para coletar análises e enviar relatórios de falhas para melhorar o aplicativo';
	@override String get autoStart => 'Inicializar no login';
	@override String get silentStart => 'Inicializar minimizado';
	@override String get openWorkingDir => 'Abra o diretório de trabalho';
	@override String get ignoreBatteryOptimizations => 'Desative a otimização da bateria';
	@override String get ignoreBatteryOptimizationsMsg => 'Remova as restrições para obter o desempenho ideal da VPN';
	@override String get dynamicNotification => 'Exibir velocidade na notificação';
	@override String get hapticFeedback => 'Feedback tátil';
	@override String get autoIpCheck => 'Verifique automaticamente o IP da conexão';
}

// Path: settings.advanced
class TranslationsSettingsAdvancedPtBr extends TranslationsSettingsAdvancedEn {
	TranslationsSettingsAdvancedPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Avançado';
	@override String get debugMode => 'Modo de desenvolvedor';
	@override String get debugModeMsg => 'Reinicie o aplicativo para aplicar esta alteração';
	@override String get memoryLimit => 'Limite de memória';
	@override String get memoryLimitMsg => 'Ative se você estiver enfrentando erros de falta de memória ou travamentos frequentes do aplicativo';
	@override String get resetTunnel => 'Redefinir perfil VPN';
}

// Path: settings.network
class TranslationsSettingsNetworkPtBr extends TranslationsSettingsNetworkEn {
	TranslationsSettingsNetworkPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get perAppProxyPageTitle => 'Proxy por aplicativo';
	@override late final TranslationsSettingsNetworkPerAppProxyModesPtBr perAppProxyModes = TranslationsSettingsNetworkPerAppProxyModesPtBr._(_root);
	@override String get showSystemApps => 'Mostrar aplicativos do sistema';
	@override String get hideSystemApps => 'Ocultar aplicativos do sistema';
	@override String get clearSelection => 'Limpar seleção';
}

// Path: settings.geoAssets
class TranslationsSettingsGeoAssetsPtBr extends TranslationsSettingsGeoAssetsEn {
	TranslationsSettingsGeoAssetsPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Ativos de roteamento';
	@override String get geoip => 'GeoIP';
	@override String get geosite => 'Geossítio';
	@override String version({required Object version}) => 'Versão ${version}';
	@override String get fileMissing => 'Arquivo faltando';
	@override String get update => 'Atualizar';
	@override String get download => 'Download';
	@override String get failureMsg => 'Falha ao atualizar o recurso';
	@override String get successMsg => 'Recurso atualizado com sucesso';
	@override String get addRecommended => 'Adicionar recursos recomendados';
	@override String get missingGeoAssetsMsg => 'Os arquivos dos ativos de roteamento selecionados estão ausentes. Baixe-os ou escolha os existentes.';
}

// Path: tray.status
class TranslationsTrayStatusPtBr extends TranslationsTrayStatusEn {
	TranslationsTrayStatusPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get connect => 'Conectar';
	@override String get connecting => 'Conectando';
	@override String get disconnect => 'desconectar';
	@override String get disconnecting => 'Desconectando';
}

// Path: failure.clash
class TranslationsFailureClashPtBr extends TranslationsFailureClashEn {
	TranslationsFailureClashPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Erro inesperado';
	@override String core({required Object reason}) => 'Erro de conflito ${reason}';
}

// Path: failure.singbox
class TranslationsFailureSingboxPtBr extends TranslationsFailureSingboxEn {
	TranslationsFailureSingboxPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Erro de serviço inesperado';
	@override String get serviceNotRunning => 'O serviço não está em execução';
	@override String get missingPrivilege => 'Privilégio ausente';
	@override String get missingPrivilegeMsg => 'O modo VPN requer privilégios de administrador. Reinicie o aplicativo como administrador ou altere o modo de serviço.';
	@override String get missingGeoAssets => 'Recursos geográficos ausentes';
	@override String get missingGeoAssetsMsg => 'Os recursos geográficos estão faltando. considere alterar o recurso ativo ou baixar um selecionado nas configurações.';
	@override String get invalidConfigOptions => 'Opções de configuração inválidas';
	@override String get invalidConfig => 'Configuração inválida';
	@override String get create => 'Erro ao criar serviço';
	@override String get start => 'Erro de inicialização do serviço';
}

// Path: failure.connectivity
class TranslationsFailureConnectivityPtBr extends TranslationsFailureConnectivityEn {
	TranslationsFailureConnectivityPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Falha inesperada';
	@override String get missingVpnPermission => 'Permissão VPN ausente';
	@override String get missingNotificationPermission => 'Permissão de notificação ausente';
	@override String get core => 'Erro central';
}

// Path: failure.profiles
class TranslationsFailureProfilesPtBr extends TranslationsFailureProfilesEn {
	TranslationsFailureProfilesPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Erro inesperado';
	@override String get notFound => 'Perfil Não Encontrado';
	@override String get invalidConfig => 'Configurações inválidas';
	@override String get invalidUrl => 'URL inválida';
}

// Path: failure.connection
class TranslationsFailureConnectionPtBr extends TranslationsFailureConnectionEn {
	TranslationsFailureConnectionPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Erro de conexão inesperado';
	@override String get timeout => 'Tempo limite de conexão';
	@override String get badResponse => 'Erro na Resposta';
	@override String get connectionError => 'Erro de conexão';
	@override String get badCertificate => 'Erro no certificado';
}

// Path: failure.geoAssets
class TranslationsFailureGeoAssetsPtBr extends TranslationsFailureGeoAssetsEn {
	TranslationsFailureGeoAssetsPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Erro inesperado';
	@override String get notUpdate => 'Nenhuma atualização disponível';
	@override String get activeNotFound => 'Recurso geográfico ativo não encontrado';
}

// Path: config.serviceModes
class TranslationsConfigServiceModesPtBr extends TranslationsConfigServiceModesEn {
	TranslationsConfigServiceModesPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get proxy => 'Somente serviço de proxy';
	@override String get systemProxy => 'Definir proxy do sistema';
	@override String get tun => 'VPN';
	@override String get tunService => 'Serviço VPN';
}

// Path: config.section
class TranslationsConfigSectionPtBr extends TranslationsConfigSectionEn {
	TranslationsConfigSectionPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get route => 'Opções de rota';
	@override String get dns => 'Opções de DNS';
	@override String get inbound => 'Opções de entrada';
	@override String get mux => 'Multiplexador';
	@override String get outbound => 'Opções de saída';
	@override String get tlsTricks => 'Truques TLS';
	@override String get warp => 'Opções de WARP';
	@override String get misc => 'Opções diversas';
}

// Path: config.warpConsent
class TranslationsConfigWarpConsentPtBr extends TranslationsConfigWarpConsentEn {
	TranslationsConfigWarpConsentPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Consentimento WARP da Cloudflare';
	@override TextSpan description({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
		const TextSpan(text: 'Cloudflare WARP é um provedor VPN WireGuard gratuito. Ao ativar esta opção, você concorda com os '),
		tos('Termos de Serviço'),
		const TextSpan(text: ' e '),
		privacy('Política de Privacidade'),
		const TextSpan(text: ' do WARP da Cloudflare.'),
	]);
}

// Path: config.ipv6Modes
class TranslationsConfigIpv6ModesPtBr extends TranslationsConfigIpv6ModesEn {
	TranslationsConfigIpv6ModesPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get disable => 'Desabilitar';
	@override String get enable => 'Habilitar';
	@override String get prefer => 'Preferido';
	@override String get only => 'Exclusivo';
}

// Path: config.warpDetourModes
class TranslationsConfigWarpDetourModesPtBr extends TranslationsConfigWarpDetourModesEn {
	TranslationsConfigWarpDetourModesPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get inbound => 'Desvie o WARP através de proxies';
	@override String get outbound => 'Desviar proxies através do WARP';
}

// Path: profile.add.qrScanner
class TranslationsProfileAddQrScannerPtBr extends TranslationsProfileAddQrScannerEn {
	TranslationsProfileAddQrScannerPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get permissionDeniedError => 'Permissão Negada';
	@override String get unexpectedError => 'Algo deu errado';
	@override String get torchSemanticLabel => 'Luz do flash';
	@override String get facingSemanticLabel => 'Câmera voltada';
}

// Path: settings.general.regions
class TranslationsSettingsGeneralRegionsPtBr extends TranslationsSettingsGeneralRegionsEn {
	TranslationsSettingsGeneralRegionsPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get ir => 'Irã (ir)';
	@override String get cn => 'China (cn)';
	@override String get ru => 'Rússia (ru)';
	@override String get af => 'Afeganistão (af)';
	@override String get other => 'Outro';
}

// Path: settings.general.themeModes
class TranslationsSettingsGeneralThemeModesPtBr extends TranslationsSettingsGeneralThemeModesEn {
	TranslationsSettingsGeneralThemeModesPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get system => 'Seguir o tema do sistema';
	@override String get dark => 'Modo Escuro';
	@override String get light => 'Modo Claro';
	@override String get black => 'Modo Preto';
}

// Path: settings.network.perAppProxyModes
class TranslationsSettingsNetworkPerAppProxyModesPtBr extends TranslationsSettingsNetworkPerAppProxyModesEn {
	TranslationsSettingsNetworkPerAppProxyModesPtBr._(TranslationsPtBr root) : this._root = root, super._(root);

	@override final TranslationsPtBr _root; // ignore: unused_field

	// Translations
	@override String get off => 'Tudo';
	@override String get offMsg => 'Proxy de todos os aplicativos';
	@override String get include => 'Proxy';
	@override String get includeMsg => 'Aplicativos selecionados apenas por proxy';
	@override String get exclude => 'Ignorar';
	@override String get excludeMsg => 'Não faça proxy de aplicativos selecionados';
}

// Path: <root>
class TranslationsRu extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final TranslationsRu _root = this; // ignore: unused_field

	// Translations
	@override late final TranslationsGeneralRu general = TranslationsGeneralRu._(_root);
	@override late final TranslationsIntroRu intro = TranslationsIntroRu._(_root);
	@override late final TranslationsHomeRu home = TranslationsHomeRu._(_root);
	@override late final TranslationsStatsRu stats = TranslationsStatsRu._(_root);
	@override late final TranslationsProfileRu profile = TranslationsProfileRu._(_root);
	@override late final TranslationsProxiesRu proxies = TranslationsProxiesRu._(_root);
	@override late final TranslationsLogsRu logs = TranslationsLogsRu._(_root);
	@override late final TranslationsSettingsRu settings = TranslationsSettingsRu._(_root);
	@override late final TranslationsAboutRu about = TranslationsAboutRu._(_root);
	@override late final TranslationsAppUpdateRu appUpdate = TranslationsAppUpdateRu._(_root);
	@override late final TranslationsTrayRu tray = TranslationsTrayRu._(_root);
	@override late final TranslationsFailureRu failure = TranslationsFailureRu._(_root);
	@override late final TranslationsPlayRu play = TranslationsPlayRu._(_root);
	@override late final TranslationsConnectionRu connection = TranslationsConnectionRu._(_root);
	@override late final TranslationsConfigRu config = TranslationsConfigRu._(_root);
}

// Path: general
class TranslationsGeneralRu extends TranslationsGeneralEn {
	TranslationsGeneralRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Hiddify';
	@override String get reset => 'Сброс';
	@override late final TranslationsGeneralToggleRu toggle = TranslationsGeneralToggleRu._(_root);
	@override late final TranslationsGeneralStateRu state = TranslationsGeneralStateRu._(_root);
	@override String get sort => 'Сортировка';
	@override String get sortBy => 'Сортировка';
	@override String get addToClipboard => 'Копировать в буфер обмена';
	@override String get notSet => 'Не задано';
	@override String get agree => 'Соглашаться';
	@override String get decline => 'Отклонить';
	@override String get unknown => 'Неизвестный';
	@override String get hidden => 'Скрытый';
	@override String get timeout => 'Таймаут';
	@override String get clipboardExportSuccessMsg => 'Добавлено в буфер обмена';
	@override String get showMore => 'Раскрыть';
	@override String get showLess => 'Свернуть';
	@override String get openAppSettings => 'Открыть настройки приложения';
	@override String get grantPermission => 'Дать разрешение';
}

// Path: intro
class TranslationsIntroRu extends TranslationsIntroEn {
	TranslationsIntroRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override TextSpan termsAndPolicyCaution({required InlineSpanBuilder tap}) => TextSpan(children: [
		const TextSpan(text: 'Продолжая, Вы соглашаетесь с '),
		tap(_root.about.termsAndConditions),
	]);
	@override String get start => 'Начать';
}

// Path: home
class TranslationsHomeRu extends TranslationsHomeEn {
	TranslationsHomeRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Главная';
	@override String get emptyProfilesMsg => 'Начните с добавления профиля подписки';
	@override String get noActiveProfileMsg => 'Выберите профиль';
}

// Path: stats
class TranslationsStatsRu extends TranslationsStatsEn {
	TranslationsStatsRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get traffic => 'Трафик';
	@override String get trafficLive => 'Текущий трафик';
	@override String get trafficTotal => 'Трафик';
	@override String get uplink => 'Скорость отправки';
	@override String get downlink => 'Скорость загрузки';
	@override String get connection => 'Соединение';
	@override String get speed => 'Скорость';
	@override String get totalTransferred => 'В общем передано';
}

// Path: profile
class TranslationsProfileRu extends TranslationsProfileEn {
	TranslationsProfileRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get overviewPageTitle => 'Профили';
	@override String get detailsPageTitle => 'Профиль';
	@override String activeProfileNameSemanticLabel({required Object name}) => 'Имя активного профиля: «${name}».';
	@override String get activeProfileBtnSemanticLabel => 'Посмотреть все профили';
	@override String nonActiveProfileBtnSemanticLabel({required Object name}) => 'Выберите «${name}» в качестве активного профиля.';
	@override late final TranslationsProfileSubscriptionRu subscription = TranslationsProfileSubscriptionRu._(_root);
	@override late final TranslationsProfileSortByRu sortBy = TranslationsProfileSortByRu._(_root);
	@override late final TranslationsProfileAddRu add = TranslationsProfileAddRu._(_root);
	@override late final TranslationsProfileUpdateRu update = TranslationsProfileUpdateRu._(_root);
	@override late final TranslationsProfileShareRu share = TranslationsProfileShareRu._(_root);
	@override late final TranslationsProfileEditRu edit = TranslationsProfileEditRu._(_root);
	@override late final TranslationsProfileDeleteRu delete = TranslationsProfileDeleteRu._(_root);
	@override late final TranslationsProfileSaveRu save = TranslationsProfileSaveRu._(_root);
	@override late final TranslationsProfileDetailsFormRu detailsForm = TranslationsProfileDetailsFormRu._(_root);
}

// Path: proxies
class TranslationsProxiesRu extends TranslationsProxiesEn {
	TranslationsProxiesRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Прокси';
	@override String get emptyProxiesMsg => 'Нет доступных прокси';
	@override String get delayTestTooltip => 'Тестирование задержки';
	@override String get sortTooltip => 'Сортировка прокси';
	@override String get checkIp => 'Проверить IP';
	@override String get unknownIp => 'Неизвестный IP';
	@override late final TranslationsProxiesSortOptionsRu sortOptions = TranslationsProxiesSortOptionsRu._(_root);
	@override String get activeProxySemanticLabel => 'Активный прокси';
	@override late final TranslationsProxiesDelaySemanticsRu delaySemantics = TranslationsProxiesDelaySemanticsRu._(_root);
	@override late final TranslationsProxiesIpInfoSemanticsRu ipInfoSemantics = TranslationsProxiesIpInfoSemanticsRu._(_root);
}

// Path: logs
class TranslationsLogsRu extends TranslationsLogsEn {
	TranslationsLogsRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Журналы';
	@override String get filterHint => 'Фильтр';
	@override String get allLevelsFilter => 'Все';
	@override String get shareCoreLogs => 'Поделиться журналами ядра';
	@override String get shareAppLogs => 'Поделиться журналами приложения';
	@override String get pauseTooltip => 'Приостановить';
	@override String get resumeTooltip => 'Возобновить';
	@override String get clearTooltip => 'Очистить';
}

// Path: settings
class TranslationsSettingsRu extends TranslationsSettingsEn {
	TranslationsSettingsRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Настройки';
	@override String get requiresRestartMsg => 'Чтобы применить изменения, перезапустите приложение.';
	@override String get experimental => 'Экспериментальный';
	@override String get experimentalMsg => 'Функции с флагом «Экспериментально» все еще находятся в разработке и могут вызвать проблемы.';
	@override String get exportOptions => 'Экспорт параметров в буфер обмена';
	@override String get exportAllOptions => 'Экспорт параметров в буфер обмена (отладка)';
	@override String get importOptions => 'Импорт параметров из буфера обмена';
	@override String get importOptionsMsg => 'Это перезапишет все параметры конфига предоставленными значениями. Вы уверены?';
	@override late final TranslationsSettingsGeneralRu general = TranslationsSettingsGeneralRu._(_root);
	@override late final TranslationsSettingsAdvancedRu advanced = TranslationsSettingsAdvancedRu._(_root);
	@override late final TranslationsSettingsNetworkRu network = TranslationsSettingsNetworkRu._(_root);
	@override late final TranslationsSettingsGeoAssetsRu geoAssets = TranslationsSettingsGeoAssetsRu._(_root);
}

// Path: about
class TranslationsAboutRu extends TranslationsAboutEn {
	TranslationsAboutRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'О программе';
	@override String get version => 'Версия';
	@override String get sourceCode => 'Исходный код';
	@override String get telegramChannel => 'Telegram-канал';
	@override String get checkForUpdate => 'Проверка обновления';
	@override String get privacyPolicy => 'Политика конфиденциальности';
	@override String get termsAndConditions => 'Условия и положения';
}

// Path: appUpdate
class TranslationsAppUpdateRu extends TranslationsAppUpdateEn {
	TranslationsAppUpdateRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get notAvailableMsg => 'Установлена последняя версия';
	@override String get dialogTitle => 'Доступно обновление';
	@override String get updateMsg => 'Доступна новая версия ${_root.general.appTitle}. Обновить сейчас?';
	@override String get currentVersionLbl => 'Текущая версия';
	@override String get newVersionLbl => 'Новая версия';
	@override String get updateNowBtnTxt => 'Обновить';
	@override String get laterBtnTxt => 'Позже';
	@override String get ignoreBtnTxt => 'Пропустить';
}

// Path: tray
class TranslationsTrayRu extends TranslationsTrayEn {
	TranslationsTrayRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Панель';
	@override String get quit => 'Выход';
	@override String get open => 'Открыть';
	@override late final TranslationsTrayStatusRu status = TranslationsTrayStatusRu._(_root);
}

// Path: failure
class TranslationsFailureRu extends TranslationsFailureEn {
	TranslationsFailureRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Непредвиденная ошибка';
	@override late final TranslationsFailureClashRu clash = TranslationsFailureClashRu._(_root);
	@override late final TranslationsFailureSingboxRu singbox = TranslationsFailureSingboxRu._(_root);
	@override late final TranslationsFailureConnectivityRu connectivity = TranslationsFailureConnectivityRu._(_root);
	@override late final TranslationsFailureProfilesRu profiles = TranslationsFailureProfilesRu._(_root);
	@override late final TranslationsFailureConnectionRu connection = TranslationsFailureConnectionRu._(_root);
	@override late final TranslationsFailureGeoAssetsRu geoAssets = TranslationsFailureGeoAssetsRu._(_root);
}

// Path: play
class TranslationsPlayRu extends TranslationsPlayEn {
	TranslationsPlayRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hiddify (Preview)';
	@override String get short_description => 'Автовыбор, SSH, VLESS, Vmess, Trojan, Reality, Sing-Box, Clash, Xray, Shadowsocks';
	@override String get full_description => 'Основная цель Hiddify — предоставить безопасный, удобный и эффективный клиент туннелирования. Он позволяет направлять весь трафик или трафик выбранного приложения на указанный Вами удалённый сервер.\nПримечание: мы не предоставляем серверы, пользователи должны сами обеспечивать конфиденциальность своих действий в Интернете, используя собственный сервер или доверенные серверы. Поддерживаются сервера с:— Обычной ссылка на подписку V2ray/Xray— Ссылкой на подписку Clash— Ссылко на подписку на Sing–Box\nВ чём уникальные особенности? — Удобство — Оптимизация и скорость — Автоматический выбор минимальной задержки — Отображение информации об использовании — Простой импорт ссылок одним щелчком мыши — Бесплатно и без рекламы — Простое переключение ссылок — …и много больше\nПоддерживаются:• Все протоколы, поддерживаемые Sing-Box• VLESS + xtls reality, vision• VMESS• Trojan• ShoadowSocks• Reality• V2ray• Hystria2• TUIC• SSH• ShadowTLS\nИсходный код доступен по адресу https://github.com/hiddify/Hiddify-Next.Ядро приложения основано на открытом исходном коде Sing–Box.\nОписание разрешений:— СЛУЖБА VPN: поскольку целью данного приложения является предоставление безопасного, удобного и эффективного клиента туннелирования, это разрешение необходимо, чтобы иметь возможность направлять трафик через туннель на удалённый сервер.— ЗАПРОС ВСЕХ ПАКЕТОВ: это разрешение позволяет добавлять или удалять определённые приложения из списка для туннелирования.— ИНФОРМИРОВАНИЕ О ЗАВЕРШЕНИИ ЗАГРУЗКИ: это разрешение можно включить или отключить в настройках приложения, чтобы (де)активировать запуск приложения при загрузке устройства.— ПОСТОЯННОЕ УВЕДОМЛЕНИЕ: это разрешение необходимо, так как используется приоритетная служба для обеспечения непрерывной работы VPN.— Приложение не содержит рекламы. Сбор аналитики и данных о сбоях происходят только с явного согласия пользователя при первом использовании приложения.';
}

// Path: connection
class TranslationsConnectionRu extends TranslationsConnectionEn {
	TranslationsConnectionRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get tapToConnect => 'Нажмите для подключения';
	@override String get connecting => 'Подключение';
	@override String get disconnecting => 'Отключение';
	@override String get connected => 'Подключено';
	@override String get reconnect => 'Переподключение';
	@override String get connectAnyWay => 'Подключение';
	@override String get experimentalNotice => 'Экспериментальные функции в использовании';
	@override String get experimentalNoticeMsg => 'Вы включили некоторые экспериментальные функции, которые могут повлиять на качество соединения и вызвать непредвиденные ошибки. Вы всегда можете изменить или сбросить эти параметры на странице параметров конфигурации.';
	@override String get disableExperimentalNotice => 'Больше не показывать';
	@override String get reconnectMsg => 'Переподключить для применения изменений';
}

// Path: config
class TranslationsConfigRu extends TranslationsConfigEn {
	TranslationsConfigRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get resetBtn => 'Сбросить параметры';
	@override String get serviceMode => 'Режим работы';
	@override String get quickSettings => 'Быстрые настройки';
	@override String get setupWarp => 'Настроить WARP';
	@override String get allOptions => 'Все параметры конфига';
	@override late final TranslationsConfigServiceModesRu serviceModes = TranslationsConfigServiceModesRu._(_root);
	@override late final TranslationsConfigShortServiceModesRu shortServiceModes = TranslationsConfigShortServiceModesRu._(_root);
	@override late final TranslationsConfigSectionRu section = TranslationsConfigSectionRu._(_root);
	@override late final TranslationsConfigWarpConsentRu warpConsent = TranslationsConfigWarpConsentRu._(_root);
	@override String get generateWarpConfig => 'Cгенерировать WARP конфиг';
	@override String get missingWarpConfig => 'Отсутствует WARP конфиг';
	@override String get warpConfigGenerated => 'WARP конфиг сгенерирован';
	@override String get pageTitle => 'Параметры конфигурации';
	@override String get logLevel => 'Подробность журналирования';
	@override String get resolveDestination => 'Определять назначение';
	@override String get ipv6Mode => 'Маршрутизация IPv6';
	@override late final TranslationsConfigIpv6ModesRu ipv6Modes = TranslationsConfigIpv6ModesRu._(_root);
	@override String get remoteDnsAddress => 'Удалённый DNS';
	@override String get remoteDnsDomainStrategy => 'Стратегия удалённого домена DNS';
	@override String get directDnsAddress => 'Прямой DNS';
	@override String get directDnsDomainStrategy => 'Стратегия прямого домена DNS';
	@override String get mixedPort => 'Смешанный порт';
	@override String get tproxyPort => 'Прозрачный прокси порт';
	@override String get localDnsPort => 'Локальный порт DNS';
	@override String get allowConnectionFromLan => 'Allow Connection from LAN';
	@override String get tunImplementation => 'Реализация TUN';
	@override String get mtu => 'MTU';
	@override String get connectionTestUrl => 'URL проверки подключения';
	@override String get urlTestInterval => 'Интервал проверки URL';
	@override String get enableClashApi => 'Использовать Clash API';
	@override String get clashApiPort => 'Порт Clash API';
	@override String get enableTun => 'Использовать TUN';
	@override String get setSystemProxy => 'Использовать системный прокси';
	@override String get enableDnsRouting => 'Enable DNS Routing';
	@override String get enableFakeDns => 'Использовать поддельную DNS';
	@override String get bypassLan => 'Обход локальной сети';
	@override String get strictRoute => 'Строгая маршрутизация';
	@override String get enableTlsFragment => 'Enable TLS Fragment';
	@override String get tlsFragmentSize => 'TLS Fragment Size';
	@override String get tlsFragmentSleep => 'TLS Fragment Sleep';
	@override String get enableTlsMixedSniCase => 'Enable TLS Mixed SNI Case';
	@override String get enableTlsPadding => 'Enable TLS Padding';
	@override String get tlsPaddingSize => 'TLS Padding';
	@override String get enableMux => 'Enable Mux';
	@override String get muxProtocol => 'Mux Protocol';
	@override String get muxMaxStreams => 'Max Concurrent Streams';
	@override String get enableWarp => 'Enable WARP';
	@override String get warpDetourMode => 'Detour Mode';
	@override late final TranslationsConfigWarpDetourModesRu warpDetourModes = TranslationsConfigWarpDetourModesRu._(_root);
	@override String get warpLicenseKey => 'License Key';
	@override String get warpCleanIp => 'Clean IP';
	@override String get warpPort => 'Port';
	@override String get warpNoise => 'Noise';
}

// Path: general.toggle
class TranslationsGeneralToggleRu extends TranslationsGeneralToggleEn {
	TranslationsGeneralToggleRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get enabled => 'Включено';
	@override String get disabled => 'Отключено';
}

// Path: general.state
class TranslationsGeneralStateRu extends TranslationsGeneralStateEn {
	TranslationsGeneralStateRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get disable => 'Отключить';
}

// Path: profile.subscription
class TranslationsProfileSubscriptionRu extends TranslationsProfileSubscriptionEn {
	TranslationsProfileSubscriptionRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get traffic => 'Трафик';
	@override String updatedTimeAgo({required Object timeago}) => 'Обновлено ${timeago}';
	@override String remainingDuration({required Object duration}) => 'Ещё ${duration} дн';
	@override String remainingTrafficSemanticLabel({required Object consumed, required Object total}) => 'Использовано ${consumed} трафика из ${total}';
	@override String get expired => 'Истекло';
	@override String get noTraffic => 'Нет доступного трафика';
	@override String get upload => 'Загрузка';
	@override String get download => 'Скачивание';
	@override String get total => 'Общий трафик';
	@override String get expireDate => 'Истечение срока действия';
}

// Path: profile.sortBy
class TranslationsProfileSortByRu extends TranslationsProfileSortByEn {
	TranslationsProfileSortByRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get lastUpdate => 'по последнему обновлению';
	@override String get name => 'по названию';
}

// Path: profile.add
class TranslationsProfileAddRu extends TranslationsProfileAddEn {
	TranslationsProfileAddRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Новый профиль';
	@override String get shortBtnTxt => 'Новый профиль';
	@override String get fromClipboard => 'Добавить из буфера обмена';
	@override String get scanQr => 'Сканировать QR-код';
	@override late final TranslationsProfileAddQrScannerRu qrScanner = TranslationsProfileAddQrScannerRu._(_root);
	@override String get manually => 'Ввести вручную';
	@override String get addingProfileMsg => 'Добавление профиля';
	@override String get failureMsg => 'Не удалось добавить профиль';
}

// Path: profile.update
class TranslationsProfileUpdateRu extends TranslationsProfileUpdateEn {
	TranslationsProfileUpdateRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Обновить';
	@override String get tooltip => 'Обновить профиль';
	@override String get updateSubscriptions => 'Обновить подписки';
	@override String get failureMsg => 'Не удалось обновить профиль';
	@override String get successMsg => 'Профиль успешно обновлён';
	@override String namedFailureMsg({required Object name}) => 'Не удалось обновить "${name}".';
	@override String namedSuccessMsg({required Object name}) => '"${name}" успешно обновлено';
}

// Path: profile.share
class TranslationsProfileShareRu extends TranslationsProfileShareEn {
	TranslationsProfileShareRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Поделиться';
	@override String get exportToClipboardSuccess => 'Ссылка скопирована в буфер обмена';
	@override String get exportSubLinkToClipboard => 'Скопировать ссылку на подписку в буфер обмена';
	@override String get subLinkQrCode => 'QR-код ссылки на подписку';
	@override String get exportConfigToClipboard => 'Скопировать конфигурацию в буфер обмена';
	@override String get exportConfigToClipboardSuccess => 'Конфигурация скопирована в буфер обмена';
}

// Path: profile.edit
class TranslationsProfileEditRu extends TranslationsProfileEditEn {
	TranslationsProfileEditRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Изменить';
	@override String get selectActiveTxt => 'Выберите активный профиль';
}

// Path: profile.delete
class TranslationsProfileDeleteRu extends TranslationsProfileDeleteEn {
	TranslationsProfileDeleteRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Удалить';
	@override String get confirmationMsg => 'Безвозвратно удалить профиль?';
	@override String get successMsg => 'Профиль успешно удалён';
}

// Path: profile.save
class TranslationsProfileSaveRu extends TranslationsProfileSaveEn {
	TranslationsProfileSaveRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Сохранить';
	@override String get successMsg => 'Профиль успешно сохранён';
	@override String get failureMsg => 'Не удалось сохранить профиль';
}

// Path: profile.detailsForm
class TranslationsProfileDetailsFormRu extends TranslationsProfileDetailsFormEn {
	TranslationsProfileDetailsFormRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get nameLabel => 'Имя';
	@override String get nameHint => 'Имя профиля';
	@override String get urlLabel => 'URL';
	@override String get urlHint => 'Полный URL конфигурации';
	@override String get emptyNameMsg => 'Поле «Имя» обязательно';
	@override String get invalidUrlMsg => 'Неправильный URL';
	@override String get lastUpdate => 'Последнее обновление';
	@override String get updateInterval => 'Автоматическое обновление';
	@override String get updateIntervalDialogTitle => 'Интервал обновления (в часах)';
}

// Path: proxies.sortOptions
class TranslationsProxiesSortOptionsRu extends TranslationsProxiesSortOptionsEn {
	TranslationsProxiesSortOptionsRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get unsorted => 'По умолчанию';
	@override String get name => 'По алфавиту';
	@override String get delay => 'По задержке';
}

// Path: proxies.delaySemantics
class TranslationsProxiesDelaySemanticsRu extends TranslationsProxiesDelaySemanticsEn {
	TranslationsProxiesDelaySemanticsRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String result({required Object delay}) => 'Задержка: ${delay}ms';
	@override String get timeout => 'Тест задержки по таймауту';
	@override String get testing => 'Задержка: Тестирование...';
}

// Path: proxies.ipInfoSemantics
class TranslationsProxiesIpInfoSemanticsRu extends TranslationsProxiesIpInfoSemanticsEn {
	TranslationsProxiesIpInfoSemanticsRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get address => 'IP адрес';
	@override String get country => 'Страна';
}

// Path: settings.general
class TranslationsSettingsGeneralRu extends TranslationsSettingsGeneralEn {
	TranslationsSettingsGeneralRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Основные';
	@override String get locale => 'Язык';
	@override String get region => 'Регион';
	@override String get regionMsg => 'Помогает установить параметры по умолчанию для обхода внутренних адресов.';
	@override late final TranslationsSettingsGeneralRegionsRu regions = TranslationsSettingsGeneralRegionsRu._(_root);
	@override String get themeMode => 'Оформление';
	@override late final TranslationsSettingsGeneralThemeModesRu themeModes = TranslationsSettingsGeneralThemeModesRu._(_root);
	@override String get enableAnalytics => 'Сбор аналитики';
	@override String get enableAnalyticsMsg => 'Сбор данных аналитики и отправка отчётов о сбоях для улучшения приложения';
	@override String get autoStart => 'Запуск при загрузке';
	@override String get silentStart => 'Тихий запуск';
	@override String get openWorkingDir => 'Открыть рабочую папку';
	@override String get ignoreBatteryOptimizations => 'Отключить оптимизацию батареи';
	@override String get ignoreBatteryOptimizationsMsg => 'Отключение ограничений для оптимальной производительности VPN.';
	@override String get dynamicNotification => 'Отображение скорости в уведомлении';
	@override String get autoIpCheck => 'Автоматически проверять IP соединение';
}

// Path: settings.advanced
class TranslationsSettingsAdvancedRu extends TranslationsSettingsAdvancedEn {
	TranslationsSettingsAdvancedRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Расширенные';
	@override String get debugMode => 'Режим отладки';
	@override String get debugModeMsg => 'Чтобы применить изменения, перезапустите приложение.';
	@override String get memoryLimit => 'Ограничение памяти';
	@override String get memoryLimitMsg => 'Включите, если у вас возникают ошибки нехватки памяти или частые сбои приложения.';
	@override String get resetTunnel => 'Сбросить профиль VPN';
}

// Path: settings.network
class TranslationsSettingsNetworkRu extends TranslationsSettingsNetworkEn {
	TranslationsSettingsNetworkRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get perAppProxyPageTitle => 'Раздельное проксирование';
	@override late final TranslationsSettingsNetworkPerAppProxyModesRu perAppProxyModes = TranslationsSettingsNetworkPerAppProxyModesRu._(_root);
	@override String get showSystemApps => 'Показать системные приложения';
	@override String get hideSystemApps => 'Скрыть системные приложения';
	@override String get clearSelection => 'Очистить выбор';
}

// Path: settings.geoAssets
class TranslationsSettingsGeoAssetsRu extends TranslationsSettingsGeoAssetsEn {
	TranslationsSettingsGeoAssetsRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Активы маршрутизации';
	@override String get geoip => 'GeoIP';
	@override String get geosite => 'Geosite';
	@override String version({required Object version}) => 'Версия ${version}';
	@override String get fileMissing => 'Файл отсутствует';
	@override String get update => 'Обновить';
	@override String get download => 'Скачать';
	@override String get failureMsg => 'Не удалось обновить объект';
	@override String get successMsg => 'Объект успешно обновлен';
	@override String get addRecommended => 'Добавить рекомендуемые активы';
	@override String get missingGeoAssetsMsg => 'Файлы выбранных ресурсов маршрутизации отсутствуют. Либо скачайте их, либо выберите существующие.';
}

// Path: tray.status
class TranslationsTrayStatusRu extends TranslationsTrayStatusEn {
	TranslationsTrayStatusRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get connect => 'Подключиться';
	@override String get connecting => 'Подключение';
	@override String get disconnect => 'Отключиться';
	@override String get disconnecting => 'Отключение';
}

// Path: failure.clash
class TranslationsFailureClashRu extends TranslationsFailureClashEn {
	TranslationsFailureClashRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Непредвиденная ошибка (Clash)';
	@override String core({required Object reason}) => 'Ошибка ${reason}';
}

// Path: failure.singbox
class TranslationsFailureSingboxRu extends TranslationsFailureSingboxEn {
	TranslationsFailureSingboxRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Непредвиденная ошибка (SingBox)';
	@override String get serviceNotRunning => 'Сервис не запущен';
	@override String get missingPrivilege => 'Отсутствие прав';
	@override String get missingPrivilegeMsg => 'Режим VPN требует прав администратора. Перезапустите приложение от имени администратора или измените режим работы приложения.';
	@override String get missingGeoAssets => 'Отсутствуют географические ресурсы';
	@override String get missingGeoAssetsMsg => 'Георесурсы отсутствуют. Изменените выбранный ресурс или загрузите собственный в настройках.';
	@override String get invalidConfigOptions => 'Неправильные параметры конфигурации';
	@override String get invalidConfig => 'Неправильная конфигурация';
	@override String get create => 'Ошибка создания сервиса';
	@override String get start => 'Ошибка запуска сервиса';
}

// Path: failure.connectivity
class TranslationsFailureConnectivityRu extends TranslationsFailureConnectivityEn {
	TranslationsFailureConnectivityRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Непредвиденная ошибка';
	@override String get missingVpnPermission => 'Отсутствует разрешение VPN';
	@override String get missingNotificationPermission => 'Отсутствует разрешение на показ уведомлений';
	@override String get core => 'Ошибка ядра';
}

// Path: failure.profiles
class TranslationsFailureProfilesRu extends TranslationsFailureProfilesEn {
	TranslationsFailureProfilesRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Непредвиденная ошибка';
	@override String get notFound => 'Профиль не найден';
	@override String get invalidConfig => 'Неправильная конфигурация';
	@override String get invalidUrl => 'Неправильный URL';
}

// Path: failure.connection
class TranslationsFailureConnectionRu extends TranslationsFailureConnectionEn {
	TranslationsFailureConnectionRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Неожиданная ошибка подключения';
	@override String get timeout => 'Истекло время подключения';
	@override String get badResponse => 'Неправильный ответ';
	@override String get connectionError => 'Ошибка подключения';
	@override String get badCertificate => 'Неправильный сертификат';
}

// Path: failure.geoAssets
class TranslationsFailureGeoAssetsRu extends TranslationsFailureGeoAssetsEn {
	TranslationsFailureGeoAssetsRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Неожиданная ошибка';
	@override String get notUpdate => 'Нет доступных обновлений';
	@override String get activeNotFound => 'Активный географический актив не найден';
}

// Path: config.serviceModes
class TranslationsConfigServiceModesRu extends TranslationsConfigServiceModesEn {
	TranslationsConfigServiceModesRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get proxy => 'Прокси';
	@override String get systemProxy => 'Системный прокси';
	@override String get tun => 'VPN';
	@override String get tunService => 'VPN сервис';
}

// Path: config.shortServiceModes
class TranslationsConfigShortServiceModesRu extends TranslationsConfigShortServiceModesEn {
	TranslationsConfigShortServiceModesRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get proxy => 'Прокси';
	@override String get systemProxy => 'Системный прокси';
	@override String get tun => 'VPN';
	@override String get tunService => 'VPN сервис';
}

// Path: config.section
class TranslationsConfigSectionRu extends TranslationsConfigSectionEn {
	TranslationsConfigSectionRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get route => 'Варианты маршрутизации';
	@override String get dns => 'Параметры DNS';
	@override String get inbound => 'Входящие параметры';
	@override String get mux => 'Multiplexer';
	@override String get outbound => 'Outbound Options';
	@override String get tlsTricks => 'TLS Tricks';
	@override String get warp => 'WARP Options';
	@override String get misc => 'Разные параметры';
}

// Path: config.warpConsent
class TranslationsConfigWarpConsentRu extends TranslationsConfigWarpConsentEn {
	TranslationsConfigWarpConsentRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Согласие Cloudflare WARP';
	@override TextSpan description({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
		const TextSpan(text: 'Cloudflare WARP — бесплатный провайдер WireGuard VPN. Включая эту опцию, вы соглашаетесь с '),
		tos('Условиями обслуживания'),
		const TextSpan(text: ' и '),
		privacy('Политикой конфиденциальности'),
		const TextSpan(text: ' Cloudflare WARP.'),
	]);
}

// Path: config.ipv6Modes
class TranslationsConfigIpv6ModesRu extends TranslationsConfigIpv6ModesEn {
	TranslationsConfigIpv6ModesRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get disable => 'Отключено';
	@override String get enable => 'Включено';
	@override String get prefer => 'Предпочтительно';
	@override String get only => 'Исключительно';
}

// Path: config.warpDetourModes
class TranslationsConfigWarpDetourModesRu extends TranslationsConfigWarpDetourModesEn {
	TranslationsConfigWarpDetourModesRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get proxyOverWarp => 'Работа прокси через WARP';
	@override String get warpOverProxy => 'Работа WARP через прокси';
	@override String get inbound => 'Detour WARP through proxies';
	@override String get outbound => 'Detour proxies through WARP';
}

// Path: profile.add.qrScanner
class TranslationsProfileAddQrScannerRu extends TranslationsProfileAddQrScannerEn {
	TranslationsProfileAddQrScannerRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get permissionDeniedError => 'Нет прав';
	@override String get unexpectedError => 'Неизвестная ошибка';
	@override String get torchSemanticLabel => 'Вспышка';
	@override String get facingSemanticLabel => 'Фронтальная камера';
	@override String get permissionRequest => 'Разрешение камере сканировать QR-код';
}

// Path: settings.general.regions
class TranslationsSettingsGeneralRegionsRu extends TranslationsSettingsGeneralRegionsEn {
	TranslationsSettingsGeneralRegionsRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get ir => 'Иран (ir)';
	@override String get cn => 'Китай (cn)';
	@override String get ru => 'Россия (ru)';
	@override String get af => 'Afghanistan (af)';
	@override String get other => 'Другой';
}

// Path: settings.general.themeModes
class TranslationsSettingsGeneralThemeModesRu extends TranslationsSettingsGeneralThemeModesEn {
	TranslationsSettingsGeneralThemeModesRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get system => 'Системная тема';
	@override String get dark => 'Тёмная тема';
	@override String get light => 'Светлая тема';
	@override String get black => 'Чёрная тема';
}

// Path: settings.network.perAppProxyModes
class TranslationsSettingsNetworkPerAppProxyModesRu extends TranslationsSettingsNetworkPerAppProxyModesEn {
	TranslationsSettingsNetworkPerAppProxyModesRu._(TranslationsRu root) : this._root = root, super._(root);

	@override final TranslationsRu _root; // ignore: unused_field

	// Translations
	@override String get off => 'Все';
	@override String get offMsg => 'Проксировать все приложения';
	@override String get include => 'Прокси';
	@override String get includeMsg => 'Проксировать выбранные приложения';
	@override String get exclude => 'Обход';
	@override String get excludeMsg => 'Не проксировать выбранные приложения';
}

// Path: <root>
class TranslationsTr extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final TranslationsTr _root = this; // ignore: unused_field

	// Translations
	@override late final TranslationsGeneralTr general = TranslationsGeneralTr._(_root);
	@override late final TranslationsIntroTr intro = TranslationsIntroTr._(_root);
	@override late final TranslationsHomeTr home = TranslationsHomeTr._(_root);
	@override late final TranslationsStatsTr stats = TranslationsStatsTr._(_root);
	@override late final TranslationsProfileTr profile = TranslationsProfileTr._(_root);
	@override late final TranslationsProxiesTr proxies = TranslationsProxiesTr._(_root);
	@override late final TranslationsLogsTr logs = TranslationsLogsTr._(_root);
	@override late final TranslationsSettingsTr settings = TranslationsSettingsTr._(_root);
	@override late final TranslationsAboutTr about = TranslationsAboutTr._(_root);
	@override late final TranslationsAppUpdateTr appUpdate = TranslationsAppUpdateTr._(_root);
	@override late final TranslationsTrayTr tray = TranslationsTrayTr._(_root);
	@override late final TranslationsFailureTr failure = TranslationsFailureTr._(_root);
	@override late final TranslationsPlayTr play = TranslationsPlayTr._(_root);
	@override late final TranslationsConnectionTr connection = TranslationsConnectionTr._(_root);
	@override late final TranslationsConfigTr config = TranslationsConfigTr._(_root);
}

// Path: general
class TranslationsGeneralTr extends TranslationsGeneralEn {
	TranslationsGeneralTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Hiddify';
	@override String get reset => 'Sıfırla';
	@override late final TranslationsGeneralToggleTr toggle = TranslationsGeneralToggleTr._(_root);
	@override late final TranslationsGeneralStateTr state = TranslationsGeneralStateTr._(_root);
	@override String get sort => 'Sırala';
	@override String get sortBy => 'Sırala';
	@override String get addToClipboard => 'Panoya ekle';
	@override String get notSet => 'Ayarlanmadı';
	@override String get agree => 'Kabul etmek';
	@override String get decline => 'Reddetmek';
	@override String get unknown => 'Bilinmeyen';
	@override String get timeout => 'Zaman aşımı';
}

// Path: intro
class TranslationsIntroTr extends TranslationsIntroEn {
	TranslationsIntroTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override TextSpan termsAndPolicyCaution({required InlineSpanBuilder tap}) => TextSpan(children: [
		const TextSpan(text: 'devam ederek '),
		tap(_root.about.termsAndConditions),
		const TextSpan(text: ' kabul etmiş olursunuz'),
	]);
	@override String get start => 'Başla';
}

// Path: home
class TranslationsHomeTr extends TranslationsHomeEn {
	TranslationsHomeTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Ana Sayfa';
	@override String get emptyProfilesMsg => 'Aboneliği profili ekleyerek başlayın';
	@override String get noActiveProfileMsg => 'Profil seçin';
}

// Path: stats
class TranslationsStatsTr extends TranslationsStatsEn {
	TranslationsStatsTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get trafficLive => 'Canlı Trafik';
	@override String get trafficTotal => 'Toplam Trafik';
	@override String get uplink => 'Çıkış Yolu';
	@override String get downlink => 'Giriş Yolu';
}

// Path: profile
class TranslationsProfileTr extends TranslationsProfileEn {
	TranslationsProfileTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get overviewPageTitle => 'Profiller';
	@override String get detailsPageTitle => 'Profil';
	@override String activeProfileNameSemanticLabel({required Object name}) => 'Aktif profil adı: "${name}".';
	@override String get activeProfileBtnSemanticLabel => 'Tüm profilleri görüntüleyin';
	@override String nonActiveProfileBtnSemanticLabel({required Object name}) => 'Aktif profil olarak "${name}" seçeneğini seçin.';
	@override late final TranslationsProfileSubscriptionTr subscription = TranslationsProfileSubscriptionTr._(_root);
	@override late final TranslationsProfileSortByTr sortBy = TranslationsProfileSortByTr._(_root);
	@override late final TranslationsProfileAddTr add = TranslationsProfileAddTr._(_root);
	@override late final TranslationsProfileUpdateTr update = TranslationsProfileUpdateTr._(_root);
	@override late final TranslationsProfileShareTr share = TranslationsProfileShareTr._(_root);
	@override late final TranslationsProfileEditTr edit = TranslationsProfileEditTr._(_root);
	@override late final TranslationsProfileDeleteTr delete = TranslationsProfileDeleteTr._(_root);
	@override late final TranslationsProfileSaveTr save = TranslationsProfileSaveTr._(_root);
	@override late final TranslationsProfileDetailsFormTr detailsForm = TranslationsProfileDetailsFormTr._(_root);
}

// Path: proxies
class TranslationsProxiesTr extends TranslationsProxiesEn {
	TranslationsProxiesTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Proxyler';
	@override String get emptyProxiesMsg => 'Kullanılabilir proxy yok';
	@override String get delayTestTooltip => 'Test Gecikmesi';
	@override String get sortTooltip => 'Proxy\'leri Sırala';
	@override late final TranslationsProxiesSortOptionsTr sortOptions = TranslationsProxiesSortOptionsTr._(_root);
}

// Path: logs
class TranslationsLogsTr extends TranslationsLogsEn {
	TranslationsLogsTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Log';
	@override String get filterHint => 'Filtre';
	@override String get allLevelsFilter => 'Tüm';
	@override String get shareCoreLogs => 'Çekirdek Loglarını Paylaş';
	@override String get shareAppLogs => 'Uygulama Loglarını paylaş';
	@override String get pauseTooltip => 'Duraklat';
	@override String get resumeTooltip => 'Devam et';
	@override String get clearTooltip => 'Temizle';
}

// Path: settings
class TranslationsSettingsTr extends TranslationsSettingsEn {
	TranslationsSettingsTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Ayarlar';
	@override String get requiresRestartMsg => 'Bunun etkili olması için uygulamayı yeniden başlatın';
	@override String get experimental => 'Deneysel';
	@override String get experimentalMsg => 'Deneysel işaretli özellikler hâlâ geliştirilme aşamasındadır ve sorunlara neden olabilir.';
	@override late final TranslationsSettingsGeneralTr general = TranslationsSettingsGeneralTr._(_root);
	@override late final TranslationsSettingsAdvancedTr advanced = TranslationsSettingsAdvancedTr._(_root);
	@override late final TranslationsSettingsNetworkTr network = TranslationsSettingsNetworkTr._(_root);
	@override late final TranslationsSettingsGeoAssetsTr geoAssets = TranslationsSettingsGeoAssetsTr._(_root);
}

// Path: about
class TranslationsAboutTr extends TranslationsAboutEn {
	TranslationsAboutTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Hakkında';
	@override String get version => 'Sürüm';
	@override String get sourceCode => 'Kaynak kodu';
	@override String get telegramChannel => 'Telegram Kanalı';
	@override String get checkForUpdate => 'Güncellemeleri kontrol et';
	@override String get privacyPolicy => 'Gizlilik Politikası';
	@override String get termsAndConditions => 'Şartlar ve koşullar';
}

// Path: appUpdate
class TranslationsAppUpdateTr extends TranslationsAppUpdateEn {
	TranslationsAppUpdateTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get notAvailableMsg => ' En son sürümü kullanıyorsunuz';
	@override String get dialogTitle => 'Yeni Güncell';
	@override String get updateMsg => '${_root.general.appTitle}\'ın yeni bir sürümü mevcut. Şimdi güncellemek ister misiniz?';
	@override String get currentVersionLbl => 'Şimdiki versiyon';
	@override String get newVersionLbl => 'Yeni versiyon';
	@override String get updateNowBtnTxt => 'Şimdi güncelle';
	@override String get laterBtnTxt => 'Daha sonra';
	@override String get ignoreBtnTxt => 'Görmezden gel';
}

// Path: tray
class TranslationsTrayTr extends TranslationsTrayEn {
	TranslationsTrayTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Gösterge Paneli';
	@override String get quit => 'Çıkış yap';
	@override String get open => 'Açık';
	@override late final TranslationsTrayStatusTr status = TranslationsTrayStatusTr._(_root);
}

// Path: failure
class TranslationsFailureTr extends TranslationsFailureEn {
	TranslationsFailureTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Beklenmeyen hata';
	@override late final TranslationsFailureClashTr clash = TranslationsFailureClashTr._(_root);
	@override late final TranslationsFailureSingboxTr singbox = TranslationsFailureSingboxTr._(_root);
	@override late final TranslationsFailureConnectivityTr connectivity = TranslationsFailureConnectivityTr._(_root);
	@override late final TranslationsFailureProfilesTr profiles = TranslationsFailureProfilesTr._(_root);
	@override late final TranslationsFailureConnectionTr connection = TranslationsFailureConnectionTr._(_root);
	@override late final TranslationsFailureGeoAssetsTr geoAssets = TranslationsFailureGeoAssetsTr._(_root);
}

// Path: play
class TranslationsPlayTr extends TranslationsPlayEn {
	TranslationsPlayTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hiddify (Önizleme)';
	@override String get short_description => 'Otomatik, SSH, VLESS, Vmess, Trojan, Reality, Sing-Box, Clash, Xray, Shadowsocks';
	@override String get full_description => 'Hiddify\'in temel hedefi güvenli, kullanıcı dostu ve verimli bir tünel istemcisi sağlamaktır. VPN Hizmeti iznini kullanarak tüm trafiği veya seçilen uygulama trafiğini seçtiğiniz uzak bir sunucuya yönlendirmenizi sağlar. Not: Herhangi bir sunucu sağlamıyoruz; kullanıcıların kendi barındırılan sunucularını veya güvenilir sunucularını kullanarak çevrimiçi etkinliklerinin gizli kalmasını sağlamaları gerekir. Sunucuları aşağıdakilerle destekliyoruz: - Normal V2ray/Xray Abonelik Bağlantısı - Clash Abonelik Bağlantısı - Sing-Box Abonelik Bağlantısı Benzersiz özelliklerimiz nelerdir? - Kullanıcı Dostu - Optimize Edilmiş ve Hızlı - En Düşük Ping\'i otomatik olarak seçin - Kullanıcı kullanım bilgilerini gösterin - Derin bağlantı kullanarak tek tıklamayla alt bağlantıyı kolayca içe aktarın - Ücretsiz ve ADS Yok - Kullanıcı alt bağlantılarını kolayca değiştirin - giderek daha fazla Destek: - Sing-Box tarafından desteklenen tüm Protokoller - VLESS + xtls gerçeklik, vizyon - VMESS - Trojan - ShoadowSocks - Reality - V2ray - Hystria2 - TUIC - SSH - ShadowTLS Kaynak kodu https://github.com/hiddify/Hiddify-Next adresinde mevcuttur. Uygulama çekirdeği açık tabanlıdır. kaynak şarkı kutusu. İzin Açıklaması: - VPN Hizmeti: Bu uygulamanın amacı güvenli, kullanıcı dostu ve verimli bir tünel istemcisi sağlamak olduğundan, trafiği tünel aracılığıyla uzak sunucuya yönlendirebilmek için bu izne ihtiyacımız var. - TÜM PAKETLERİ SORGULAYIN: Bu izin, kullanıcıların tünelleme için belirli uygulamaları dahil etmesine veya hariç tutmasına izin vermek için kullanılır. - ALMA ÖNYÜKLEME TAMAMLANDI: Bu izin, cihaz önyüklemesi sırasında bu uygulamayı etkinleştirmek için uygulama ayarlarından etkinleştirilebilir veya devre dışı bırakılabilir. - BİLDİRİMLER SONRASI: VPN hizmetinin sürekli çalışmasını sağlamak için bir ön plan hizmeti kullandığımız için bu izin önemlidir. - Bu uygulama reklam içermez. Analitik ve kilitlenme verileri yalnızca uygulamanın ilk kullanımında kullanıcının açık rızası ile gerçekleşir.';
}

// Path: connection
class TranslationsConnectionTr extends TranslationsConnectionEn {
	TranslationsConnectionTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get tapToConnect => 'Bağlanmak için dokunun';
	@override String get connecting => 'Bağlanıyor';
	@override String get disconnecting => 'Bağlantı kesiliyor';
	@override String get connected => 'Bağlandı';
	@override String get experimentalNotice => 'Kullanımdaki Deneysel Özellikler';
	@override String get experimentalNoticeMsg => 'Bağlantı kalitesini etkileyebilecek ve beklenmeyen hatalara neden olabilecek bazı deneysel özellikleri etkinleştirdiniz. Bu seçenekleri istediğiniz zaman Yapılandırma seçenekleri sayfasından değiştirebilir veya sıfırlayabilirsiniz.';
	@override String get disableExperimentalNotice => 'Bir daha gösterme';
}

// Path: config
class TranslationsConfigTr extends TranslationsConfigEn {
	TranslationsConfigTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get resetBtn => 'Ayarları sıfırla';
	@override String get serviceMode => 'Servis modu';
	@override late final TranslationsConfigServiceModesTr serviceModes = TranslationsConfigServiceModesTr._(_root);
	@override late final TranslationsConfigSectionTr section = TranslationsConfigSectionTr._(_root);
	@override late final TranslationsConfigWarpConsentTr warpConsent = TranslationsConfigWarpConsentTr._(_root);
	@override String get pageTitle => 'Yapılandırma Seçenekleri';
	@override String get logLevel => 'Log Seviyesi';
	@override String get resolveDestination => 'Hedefi Çöz';
	@override String get ipv6Mode => 'IPv6 Rotası';
	@override late final TranslationsConfigIpv6ModesTr ipv6Modes = TranslationsConfigIpv6ModesTr._(_root);
	@override String get remoteDnsAddress => 'Uzak DNS';
	@override String get remoteDnsDomainStrategy => 'Uzak DNS Domain Stratejisi';
	@override String get directDnsAddress => 'Doğrudan DNS';
	@override String get directDnsDomainStrategy => 'Doğrudan DNS Domain Stratejisi';
	@override String get mixedPort => 'Mixed Port';
	@override String get localDnsPort => 'Yerel DNS Bağlantı Noktası';
	@override String get allowConnectionFromLan => 'Allow Connection from LAN';
	@override String get tunImplementation => 'TUN İmplementasyonu';
	@override String get mtu => 'MTU';
	@override String get connectionTestUrl => 'Bağlantı Testi URL\'i';
	@override String get urlTestInterval => 'URL Test Aralığı';
	@override String get enableClashApi => 'Clash API\'yi etkinleştir';
	@override String get clashApiPort => 'Clash API Bağlantı Noktası';
	@override String get enableTun => 'TUN\'u etkinleştir';
	@override String get setSystemProxy => 'Sistem Proxy\'sini Ayarla';
	@override String get enableDnsRouting => 'Enable DNS Routing';
	@override String get enableFakeDns => 'Sahte DNS\'yi Etkinleştir';
	@override String get bypassLan => 'Lan\'ı Atla';
	@override String get strictRoute => 'Kesin Rota';
	@override String get enableTlsFragment => 'Enable TLS Fragment';
	@override String get tlsFragmentSize => 'TLS Fragment Size';
	@override String get tlsFragmentSleep => 'TLS Fragment Sleep';
	@override String get enableTlsMixedSniCase => 'Enable TLS Mixed SNI Case';
	@override String get enableTlsPadding => 'Enable TLS Padding';
	@override String get tlsPaddingSize => 'TLS Padding';
	@override String get enableMux => 'Enable Mux';
	@override String get muxProtocol => 'Mux Protocol';
	@override String get muxMaxStreams => 'Max Concurrent Streams';
	@override String get enableWarp => 'Enable WARP';
	@override String get warpDetourMode => 'Detour Mode';
	@override late final TranslationsConfigWarpDetourModesTr warpDetourModes = TranslationsConfigWarpDetourModesTr._(_root);
	@override String get warpLicenseKey => 'License Key';
	@override String get warpCleanIp => 'Clean IP';
	@override String get warpPort => 'Port';
	@override String get warpNoise => 'Noise';
}

// Path: general.toggle
class TranslationsGeneralToggleTr extends TranslationsGeneralToggleEn {
	TranslationsGeneralToggleTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get enabled => 'Etkin';
	@override String get disabled => 'Devre dışı';
}

// Path: general.state
class TranslationsGeneralStateTr extends TranslationsGeneralStateEn {
	TranslationsGeneralStateTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get disable => 'Devre dışı bırak';
}

// Path: profile.subscription
class TranslationsProfileSubscriptionTr extends TranslationsProfileSubscriptionEn {
	TranslationsProfileSubscriptionTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get traffic => 'Trafik';
	@override String updatedTimeAgo({required Object timeago}) => '${timeago} güncellendi';
	@override String remainingDuration({required Object duration}) => '${duration} Gün Kaldı';
	@override String remainingTrafficSemanticLabel({required Object consumed, required Object total}) => '${consumed}/${total} trafik tüketildi';
	@override String get expired => 'Süresi Doldu';
	@override String get noTraffic => 'Kotal Doldu';
}

// Path: profile.sortBy
class TranslationsProfileSortByTr extends TranslationsProfileSortByEn {
	TranslationsProfileSortByTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get lastUpdate => 'Yakın zamanda güncellendi';
	@override String get name => 'Alfabetik';
}

// Path: profile.add
class TranslationsProfileAddTr extends TranslationsProfileAddEn {
	TranslationsProfileAddTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Yeni profil';
	@override String get shortBtnTxt => 'Yeni profil';
	@override String get fromClipboard => 'Panodan Ekle';
	@override String get scanQr => 'QR kodunu tarayın';
	@override late final TranslationsProfileAddQrScannerTr qrScanner = TranslationsProfileAddQrScannerTr._(_root);
	@override String get manually => 'Manuel giriş';
	@override String get addingProfileMsg => 'Profil Ekleniyor';
	@override String get failureMsg => 'Profil eklenemedi';
}

// Path: profile.update
class TranslationsProfileUpdateTr extends TranslationsProfileUpdateEn {
	TranslationsProfileUpdateTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Güncelle';
	@override String get tooltip => 'Profili Güncelle';
	@override String get updateSubscriptions => 'Abonelikleri Güncelle';
	@override String get failureMsg => 'Profil güncellenemedi';
	@override String get successMsg => 'Profil başarıyla güncellendi';
	@override String namedFailureMsg({required Object name}) => '"${name}" güncellenemedi';
	@override String namedSuccessMsg({required Object name}) => '"${name}" başarıyla güncellendi';
}

// Path: profile.share
class TranslationsProfileShareTr extends TranslationsProfileShareEn {
	TranslationsProfileShareTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Paylaş';
	@override String get exportToClipboardSuccess => 'Panoya aktarıldı';
	@override String get exportSubLinkToClipboard => 'Abonelik bağlantısını panoya aktar';
	@override String get subLinkQrCode => 'QR kodun abonelik bağlantısı ';
	@override String get exportConfigToClipboard => 'Yapılandırmayı panoya aktar';
	@override String get exportConfigToClipboardSuccess => 'Yapılandırma panoya kopyalandı';
}

// Path: profile.edit
class TranslationsProfileEditTr extends TranslationsProfileEditEn {
	TranslationsProfileEditTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Düzenle';
	@override String get selectActiveTxt => 'Etkin profili seçin';
}

// Path: profile.delete
class TranslationsProfileDeleteTr extends TranslationsProfileDeleteEn {
	TranslationsProfileDeleteTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => 'Sil';
	@override String get confirmationMsg => 'Profil kalıcı olarak silinsin mi?';
	@override String get successMsg => 'Profil başarıyla silindi';
}

// Path: profile.save
class TranslationsProfileSaveTr extends TranslationsProfileSaveEn {
	TranslationsProfileSaveTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get buttonText => 'Kaydet';
	@override String get successMsg => 'Profil başarıyla kaydedildi';
	@override String get failureMsg => 'Profil kaydedilemedi';
}

// Path: profile.detailsForm
class TranslationsProfileDetailsFormTr extends TranslationsProfileDetailsFormEn {
	TranslationsProfileDetailsFormTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get nameLabel => 'İsim';
	@override String get nameHint => 'Profil ismi';
	@override String get urlLabel => 'URL';
	@override String get urlHint => 'Tam yapılandırma URL\'i';
	@override String get emptyNameMsg => 'İsim gerekli';
	@override String get invalidUrlMsg => 'Geçersiz URL';
	@override String get lastUpdate => 'Son Güncelleme';
	@override String get updateInterval => 'Otomatik güncelleme';
	@override String get updateIntervalDialogTitle => 'Otomatik Güncelleme Aralığı (saat olarak)';
}

// Path: proxies.sortOptions
class TranslationsProxiesSortOptionsTr extends TranslationsProxiesSortOptionsEn {
	TranslationsProxiesSortOptionsTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get unsorted => 'Varsayılan';
	@override String get name => 'Alfabetik olarak';
	@override String get delay => 'Gecikmeyle';
}

// Path: settings.general
class TranslationsSettingsGeneralTr extends TranslationsSettingsGeneralEn {
	TranslationsSettingsGeneralTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Genel';
	@override String get locale => 'Dil';
	@override String get region => 'Bölge';
	@override String get regionMsg => 'Yerel adresleri atlamak için varsayılan seçeneği seçebilirsin';
	@override late final TranslationsSettingsGeneralRegionsTr regions = TranslationsSettingsGeneralRegionsTr._(_root);
	@override String get themeMode => 'Tema Modu';
	@override late final TranslationsSettingsGeneralThemeModesTr themeModes = TranslationsSettingsGeneralThemeModesTr._(_root);
	@override String get enableAnalytics => 'Analitikleri Etkinleştir';
	@override String get enableAnalyticsMsg => 'Uygulamayı iyileştirmek için analiz toplama ve kilitlenme raporları göndermeye izni verin';
	@override String get autoStart => 'Önyüklemede Başlat';
	@override String get silentStart => 'Sessiz Başlatma';
	@override String get openWorkingDir => 'Çalışma Dizinini Aç';
	@override String get ignoreBatteryOptimizations => 'Pil Optimizasyonunu Devre Dışı Bırak';
	@override String get ignoreBatteryOptimizationsMsg => 'Optimum VPN performansı için kısıtlamaları kaldırın';
	@override String get dynamicNotification => 'Bildirimde hızı göster';
}

// Path: settings.advanced
class TranslationsSettingsAdvancedTr extends TranslationsSettingsAdvancedEn {
	TranslationsSettingsAdvancedTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => 'Gelişmiş';
	@override String get debugMode => 'Hata ayıklama modu';
	@override String get debugModeMsg => 'Bu değişikliği uygulamak için uygulamayı yeniden başlatın';
	@override String get memoryLimit => 'Bellek Sınırı';
	@override String get memoryLimitMsg => 'Yetersiz bellek hataları veya sık sık uygulama çökmesi yaşıyorsanız etkinleştirin';
	@override String get resetTunnel => 'VPN Profilini Sıfırla';
}

// Path: settings.network
class TranslationsSettingsNetworkTr extends TranslationsSettingsNetworkEn {
	TranslationsSettingsNetworkTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get perAppProxyPageTitle => 'Uygulama başına Proxy';
	@override late final TranslationsSettingsNetworkPerAppProxyModesTr perAppProxyModes = TranslationsSettingsNetworkPerAppProxyModesTr._(_root);
	@override String get showSystemApps => 'Sistem uygulamalarını göster';
	@override String get hideSystemApps => 'Sistem uygulamalarını gizle';
	@override String get clearSelection => 'Seçimi temizle';
}

// Path: settings.geoAssets
class TranslationsSettingsGeoAssetsTr extends TranslationsSettingsGeoAssetsEn {
	TranslationsSettingsGeoAssetsTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => 'Varlıkları Yönlendirme';
	@override String get geoip => 'GeoIP';
	@override String get geosite => 'Geosite';
	@override String version({required Object version}) => 'Sürüm ${version}';
	@override String get fileMissing => 'Eksik dosya';
	@override String get update => 'Güncelleme';
	@override String get download => 'İndirmek';
	@override String get failureMsg => 'Öğe güncellenemedi';
	@override String get successMsg => 'Öğe başarıyla güncellendi';
	@override String get addRecommended => 'Önerilen Varlıkları Ekle';
	@override String get missingGeoAssetsMsg => 'Seçilen yönlendirme varlıklarının dosyaları eksik. Bunları indirin veya mevcut olanları seçin.';
}

// Path: tray.status
class TranslationsTrayStatusTr extends TranslationsTrayStatusEn {
	TranslationsTrayStatusTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get connect => 'Bağlan';
	@override String get connecting => 'Bağlanıyor';
	@override String get disconnect => 'Bağlantıyı kes';
	@override String get disconnecting => 'Bağlantı kesiliyor';
}

// Path: failure.clash
class TranslationsFailureClashTr extends TranslationsFailureClashEn {
	TranslationsFailureClashTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Beklenmeyen hata';
	@override String core({required Object reason}) => 'Çakışma Hatası ${reason}';
}

// Path: failure.singbox
class TranslationsFailureSingboxTr extends TranslationsFailureSingboxEn {
	TranslationsFailureSingboxTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Beklenmedik Hizmet Hatası';
	@override String get serviceNotRunning => 'Servis çalışmıyor';
	@override String get missingPrivilege => 'Eksik Ayrıcalık';
	@override String get missingPrivilegeMsg => 'VPN modu yönetici ayrıcalıkları gerektirir. Uygulamayı yönetici olarak yeniden başlatın veya hizmet modunu değiştirin.';
	@override String get missingGeoAssets => 'Eksik Coğrafi Varlıklar';
	@override String get missingGeoAssetsMsg => 'Coğrafi öğeler eksik. Aktif varlığı değiştirmeyi veya ayarlarda seçileni indirmeyi düşünün.';
	@override String get invalidConfigOptions => 'Geçersiz yapılandırma seçenekleri';
	@override String get invalidConfig => 'Geçersiz Yapılandırma';
	@override String get create => 'Servis oluşturma hatası';
	@override String get start => 'Servis başlatma hatası';
}

// Path: failure.connectivity
class TranslationsFailureConnectivityTr extends TranslationsFailureConnectivityEn {
	TranslationsFailureConnectivityTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Beklenmedik Hata';
	@override String get missingVpnPermission => 'Eksik VPN İzni';
	@override String get missingNotificationPermission => 'Eksik Bildirim İzni';
	@override String get core => 'Temel Hata';
}

// Path: failure.profiles
class TranslationsFailureProfilesTr extends TranslationsFailureProfilesEn {
	TranslationsFailureProfilesTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Beklenmedik hata';
	@override String get notFound => 'Profil bulunamadı';
	@override String get invalidConfig => 'Geçersiz Yapılandırmalar';
	@override String get invalidUrl => 'Geçersiz URL';
}

// Path: failure.connection
class TranslationsFailureConnectionTr extends TranslationsFailureConnectionEn {
	TranslationsFailureConnectionTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Beklenmeyen bağlantı hatası';
	@override String get timeout => 'Bağlantı zamanaşımına uğradı';
	@override String get badResponse => 'Kötü yanıt';
	@override String get connectionError => 'Bağlantı hatası';
	@override String get badCertificate => 'Kötü sertifika';
}

// Path: failure.geoAssets
class TranslationsFailureGeoAssetsTr extends TranslationsFailureGeoAssetsEn {
	TranslationsFailureGeoAssetsTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'Beklenmeyen hata';
	@override String get notUpdate => 'Güncelleme mevcut değil';
	@override String get activeNotFound => 'Etkin Coğrafi Varlık Bulunamadı';
}

// Path: config.serviceModes
class TranslationsConfigServiceModesTr extends TranslationsConfigServiceModesEn {
	TranslationsConfigServiceModesTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get proxy => 'Proxy';
	@override String get systemProxy => 'Sistem Proxy';
	@override String get tun => 'VPN';
}

// Path: config.section
class TranslationsConfigSectionTr extends TranslationsConfigSectionEn {
	TranslationsConfigSectionTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get route => 'Rota Seçenekleri';
	@override String get dns => 'DNS Seçenekleri';
	@override String get inbound => 'Gelen Seçenekler';
	@override String get mux => 'Multiplexer';
	@override String get outbound => 'Outbound Options';
	@override String get tlsTricks => 'TLS Tricks';
	@override String get warp => 'WARP Options';
	@override String get misc => 'Çeşitli Seçenekler';
}

// Path: config.warpConsent
class TranslationsConfigWarpConsentTr extends TranslationsConfigWarpConsentEn {
	TranslationsConfigWarpConsentTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cloudflare WARP Onayı';
	@override TextSpan description({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
		const TextSpan(text: 'Cloudflare WARP ücretsiz bir WireGuard VPN sağlayıcısıdır. Bu seçeneği etkinleştirerek Cloudflare WARP\'ın '),
		tos('Hizmet Şartları'),
		const TextSpan(text: ' ve '),
		privacy('Gizlilik Politikası'),
		const TextSpan(text: '\'nı kabul etmiş olursunuz.'),
	]);
}

// Path: config.ipv6Modes
class TranslationsConfigIpv6ModesTr extends TranslationsConfigIpv6ModesEn {
	TranslationsConfigIpv6ModesTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get disable => 'Devre dışı bırak';
	@override String get enable => 'Etkinleştir';
	@override String get prefer => 'Tercih edilen';
	@override String get only => 'Özel';
}

// Path: config.warpDetourModes
class TranslationsConfigWarpDetourModesTr extends TranslationsConfigWarpDetourModesEn {
	TranslationsConfigWarpDetourModesTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get inbound => 'Detour WARP through proxies';
	@override String get outbound => 'Detour proxies through WARP';
}

// Path: profile.add.qrScanner
class TranslationsProfileAddQrScannerTr extends TranslationsProfileAddQrScannerEn {
	TranslationsProfileAddQrScannerTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get permissionDeniedError => 'İzin reddedildi';
	@override String get unexpectedError => 'Bir şeyler yanlış gitti';
	@override String get torchSemanticLabel => 'El feneri';
	@override String get facingSemanticLabel => 'Kameraya önü';
}

// Path: settings.general.regions
class TranslationsSettingsGeneralRegionsTr extends TranslationsSettingsGeneralRegionsEn {
	TranslationsSettingsGeneralRegionsTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get ir => 'İran (ir)';
	@override String get cn => 'Çin (cn)';
	@override String get ru => 'Rusya (ru)';
	@override String get af => 'Afghanistan (af)';
	@override String get other => 'Diğer';
}

// Path: settings.general.themeModes
class TranslationsSettingsGeneralThemeModesTr extends TranslationsSettingsGeneralThemeModesEn {
	TranslationsSettingsGeneralThemeModesTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get system => 'Sistem temasını takip et';
	@override String get dark => 'Karanlık mod';
	@override String get light => 'Işık modu';
	@override String get black => 'Siyah mod';
}

// Path: settings.network.perAppProxyModes
class TranslationsSettingsNetworkPerAppProxyModesTr extends TranslationsSettingsNetworkPerAppProxyModesEn {
	TranslationsSettingsNetworkPerAppProxyModesTr._(TranslationsTr root) : this._root = root, super._(root);

	@override final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get off => 'Tümü';
	@override String get offMsg => 'Proxy tüm uygulamalar';
	@override String get include => 'Proxy';
	@override String get includeMsg => 'Yalnızca proxy seçilen uygulamalar';
	@override String get exclude => 'Atlatma';
	@override String get excludeMsg => 'Seçilen uygulamalara proxy uygulama';
}

// Path: <root>
class TranslationsZhCn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhCn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final TranslationsZhCn _root = this; // ignore: unused_field

	// Translations
	@override late final TranslationsGeneralZhCn general = TranslationsGeneralZhCn._(_root);
	@override late final TranslationsIntroZhCn intro = TranslationsIntroZhCn._(_root);
	@override late final TranslationsHomeZhCn home = TranslationsHomeZhCn._(_root);
	@override late final TranslationsStatsZhCn stats = TranslationsStatsZhCn._(_root);
	@override late final TranslationsProfileZhCn profile = TranslationsProfileZhCn._(_root);
	@override late final TranslationsProxiesZhCn proxies = TranslationsProxiesZhCn._(_root);
	@override late final TranslationsLogsZhCn logs = TranslationsLogsZhCn._(_root);
	@override late final TranslationsSettingsZhCn settings = TranslationsSettingsZhCn._(_root);
	@override late final TranslationsAboutZhCn about = TranslationsAboutZhCn._(_root);
	@override late final TranslationsAppUpdateZhCn appUpdate = TranslationsAppUpdateZhCn._(_root);
	@override late final TranslationsTrayZhCn tray = TranslationsTrayZhCn._(_root);
	@override late final TranslationsFailureZhCn failure = TranslationsFailureZhCn._(_root);
	@override late final TranslationsPlayZhCn play = TranslationsPlayZhCn._(_root);
	@override late final TranslationsConnectionZhCn connection = TranslationsConnectionZhCn._(_root);
	@override late final TranslationsConfigZhCn config = TranslationsConfigZhCn._(_root);
	@override late final TranslationsSubscribeZhCn subscribe = TranslationsSubscribeZhCn._(_root);
	@override late final TranslationsCenterZhCn center = TranslationsCenterZhCn._(_root);
	@override late final TranslationsKnowledgeZhCn knowledge = TranslationsKnowledgeZhCn._(_root);
	@override late final TranslationsOrderZhCn order = TranslationsOrderZhCn._(_root);
	@override late final TranslationsInviteZhCn invite = TranslationsInviteZhCn._(_root);
	@override late final TranslationsNoticeZhCn notice = TranslationsNoticeZhCn._(_root);
	@override late final TranslationsLoginZhCn login = TranslationsLoginZhCn._(_root);
	@override late final TranslationsForgotPasswordZhCn forgotPassword = TranslationsForgotPasswordZhCn._(_root);
	@override late final TranslationsUpdateZhCn update = TranslationsUpdateZhCn._(_root);
	@override late final TranslationsErrorZhCn error = TranslationsErrorZhCn._(_root);
}

// Path: general
class TranslationsGeneralZhCn extends TranslationsGeneralEn {
	TranslationsGeneralZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Hiddify';
	@override String get reset => '重置';
	@override late final TranslationsGeneralToggleZhCn toggle = TranslationsGeneralToggleZhCn._(_root);
	@override late final TranslationsGeneralStateZhCn state = TranslationsGeneralStateZhCn._(_root);
	@override String get sort => '排序';
	@override String get sortBy => '排序方式';
	@override String get addToClipboard => '添加到剪贴板';
	@override String get notSet => '未设置';
	@override String get agree => '同意';
	@override String get decline => '拒绝';
	@override String get unknown => '未知';
	@override String get hidden => '隐藏';
	@override String get timeout => '超时';
	@override String get clipboardExportSuccessMsg => '已导出到剪切板';
	@override String get showMore => '显示更多';
	@override String get showLess => '显示更少';
	@override String get openAppSettings => '打开应用设置';
	@override String get grantPermission => '授予权限';
}

// Path: intro
class TranslationsIntroZhCn extends TranslationsIntroEn {
	TranslationsIntroZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override TextSpan termsAndPolicyCaution({required InlineSpanBuilder tap}) => TextSpan(children: [
		const TextSpan(text: '继续即表示您同意 '),
		tap(_root.about.termsAndConditions),
	]);
	@override String get start => '开始';
}

// Path: home
class TranslationsHomeZhCn extends TranslationsHomeEn {
	TranslationsHomeZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '主页';
	@override String get emptyProfilesMsg => '从添加订阅配置文件开始';
	@override String get noActiveProfileMsg => '选择配置文件';
}

// Path: stats
class TranslationsStatsZhCn extends TranslationsStatsEn {
	TranslationsStatsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get traffic => '流量';
	@override String get trafficLive => '实时流量';
	@override String get trafficTotal => '总流量';
	@override String get uplink => '上行';
	@override String get downlink => '下行';
	@override String get connection => '连接';
	@override String get speed => '速度';
	@override String get totalTransferred => '总传输量';
}

// Path: profile
class TranslationsProfileZhCn extends TranslationsProfileEn {
	TranslationsProfileZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get overviewPageTitle => '配置文件';
	@override String get detailsPageTitle => '配置文件';
	@override String activeProfileNameSemanticLabel({required Object name}) => '激活的配置文件名称：“${name}”。';
	@override String get activeProfileBtnSemanticLabel => '查看所有配置文件';
	@override String nonActiveProfileBtnSemanticLabel({required Object name}) => '选择 “${name}” 作为激活的配置文件';
	@override late final TranslationsProfileSubscriptionZhCn subscription = TranslationsProfileSubscriptionZhCn._(_root);
	@override late final TranslationsProfileSortByZhCn sortBy = TranslationsProfileSortByZhCn._(_root);
	@override late final TranslationsProfileAddZhCn add = TranslationsProfileAddZhCn._(_root);
	@override late final TranslationsProfileUpdateZhCn update = TranslationsProfileUpdateZhCn._(_root);
	@override late final TranslationsProfileShareZhCn share = TranslationsProfileShareZhCn._(_root);
	@override late final TranslationsProfileEditZhCn edit = TranslationsProfileEditZhCn._(_root);
	@override late final TranslationsProfileDeleteZhCn delete = TranslationsProfileDeleteZhCn._(_root);
	@override late final TranslationsProfileSaveZhCn save = TranslationsProfileSaveZhCn._(_root);
	@override late final TranslationsProfileDetailsFormZhCn detailsForm = TranslationsProfileDetailsFormZhCn._(_root);
}

// Path: proxies
class TranslationsProxiesZhCn extends TranslationsProxiesEn {
	TranslationsProxiesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '节点选择';
	@override String get title => '节点选择';
	@override String get emptyProxiesMsg => '无可用的代理';
	@override String get delayTestTooltip => '测试延迟';
	@override String get sortTooltip => '对代理进行排序';
	@override String get checkIp => '检测 IP 地址';
	@override String get unknownIp => '未知的 IP';
	@override late final TranslationsProxiesSortOptionsZhCn sortOptions = TranslationsProxiesSortOptionsZhCn._(_root);
	@override String get activeProxySemanticLabel => '当前选择的节点';
	@override late final TranslationsProxiesDelaySemanticsZhCn delaySemantics = TranslationsProxiesDelaySemanticsZhCn._(_root);
	@override late final TranslationsProxiesIpInfoSemanticsZhCn ipInfoSemantics = TranslationsProxiesIpInfoSemanticsZhCn._(_root);
}

// Path: logs
class TranslationsLogsZhCn extends TranslationsLogsEn {
	TranslationsLogsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '日志';
	@override String get filterHint => '筛选';
	@override String get allLevelsFilter => '全部';
	@override String get shareCoreLogs => '分享核心日志';
	@override String get shareAppLogs => '分享应用日志';
	@override String get pauseTooltip => '暂停';
	@override String get resumeTooltip => '恢复';
	@override String get clearTooltip => '清除';
}

// Path: settings
class TranslationsSettingsZhCn extends TranslationsSettingsEn {
	TranslationsSettingsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '设置';
	@override String get requiresRestartMsg => '要使其生效，请重新启动应用程序';
	@override String get experimental => '实验性选项';
	@override String get experimentalMsg => '带有实验标志的功能仍在开发中，可能会出现问题。';
	@override String get exportOptions => '导出选项到剪切板';
	@override String get exportAllOptions => '导出选项到剪切板（用于调试）';
	@override String get importOptions => '从剪切板导入选项';
	@override String get importOptionsMsg => '这将使用提供的值重写所有配置选项。您确定吗？';
	@override late final TranslationsSettingsGeneralZhCn general = TranslationsSettingsGeneralZhCn._(_root);
	@override late final TranslationsSettingsAdvancedZhCn advanced = TranslationsSettingsAdvancedZhCn._(_root);
	@override late final TranslationsSettingsNetworkZhCn network = TranslationsSettingsNetworkZhCn._(_root);
	@override late final TranslationsSettingsGeoAssetsZhCn geoAssets = TranslationsSettingsGeoAssetsZhCn._(_root);
}

// Path: about
class TranslationsAboutZhCn extends TranslationsAboutEn {
	TranslationsAboutZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '关于';
	@override String get version => '版本';
	@override String get sourceCode => '源代码';
	@override String get telegramChannel => 'Telegram 频道';
	@override String get checkForUpdate => '检查更新';
	@override String get privacyPolicy => '隐私政策';
	@override String get termsAndConditions => '条款和条件';
}

// Path: appUpdate
class TranslationsAppUpdateZhCn extends TranslationsAppUpdateEn {
	TranslationsAppUpdateZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get notAvailableMsg => '已是最新版本';
	@override String get dialogTitle => '有可用更新';
	@override String get updateMsg => '${_root.general.appTitle} 的新版本现已推出。您想现在更新吗？';
	@override String get currentVersionLbl => '当前版本';
	@override String get newVersionLbl => '新版本';
	@override String get updateNowBtnTxt => '现在更新';
	@override String get laterBtnTxt => '以后再说';
	@override String get ignoreBtnTxt => '忽略';
}

// Path: tray
class TranslationsTrayZhCn extends TranslationsTrayEn {
	TranslationsTrayZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get dashboard => '仪表板';
	@override String get quit => '退出';
	@override String get open => '打开';
	@override late final TranslationsTrayStatusZhCn status = TranslationsTrayStatusZhCn._(_root);
}

// Path: failure
class TranslationsFailureZhCn extends TranslationsFailureEn {
	TranslationsFailureZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外错误';
	@override late final TranslationsFailureClashZhCn clash = TranslationsFailureClashZhCn._(_root);
	@override late final TranslationsFailureSingboxZhCn singbox = TranslationsFailureSingboxZhCn._(_root);
	@override late final TranslationsFailureConnectivityZhCn connectivity = TranslationsFailureConnectivityZhCn._(_root);
	@override late final TranslationsFailureProfilesZhCn profiles = TranslationsFailureProfilesZhCn._(_root);
	@override late final TranslationsFailureConnectionZhCn connection = TranslationsFailureConnectionZhCn._(_root);
	@override late final TranslationsFailureGeoAssetsZhCn geoAssets = TranslationsFailureGeoAssetsZhCn._(_root);
}

// Path: play
class TranslationsPlayZhCn extends TranslationsPlayEn {
	TranslationsPlayZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hiddify（预览）';
	@override String get short_description => '自动，SSH, VLESS, Vmess, Trojan, Reality, Sing-Box, Clash, Xray, Shadowsocks';
	@override String get full_description => 'Hiddify 的主要目标是提供安全、用户友好且高效的隧道客户端。它使您能够利用 VPN 服务权限将所有流量或选定的应用程序流量路由到您选择的远程服务器。\n\n注：我们不提供任何服务器；用户需要使用自己托管的服务器或可信的服务器来确保您在线活动的私密性。\n \n我们支持以下类型的服务器：\n- 普通 V2ray/Xray 订阅链接\n- Clash 订阅链接\n- Sing-Box 订阅链接\n\n我们的特色是什么？\n\n- 用户友好\n- 优化和高速\n- 自动选择最低延迟\n- 显示用户使用信息\n- 通过一键链接轻松导入\n- 免费且无广告\n- 轻松切换线路\n- 等等\n\n支持：\n- Sing-Box 支持的所有协议\n- VLESS + XTLS Reality、Vision 协议\n- VMESS\n- Trojan\n- Shoadowsocks\n- Reality\n- WireGuard\n- V2ray\n- Hystria2\n- TUIC\n- SSH\n- ShadowTLS\n\n\n源代码位于 https://github.com/hiddify/Hiddify-Next\n应用程序核心基于开源的 Sing-Box。\n\n权限说明：\n\n- VPN 服务：由于此应用程序的目标是提供安全、用户友好和高效的隧道客户端，我们需要此权限以能够通过隧道将流量路由到远程服务器。\n获取应用程序列表：此权限用于允许用户包括或排除特定应用程序以进行隧道传输。\n- 接收开机广播：可以从应用程序设置中启用或禁用此权限，以便在设备启动时激活此应用程序。\n- 发送通知：此权限是必需的，因为我们使用前台服务来确保 VPN 服务的持续运行。\n- 本应用程序没有广告。分析和崩溃数据仅在首次使用应用程序时经用户明确同意的情况下发生。';
}

// Path: connection
class TranslationsConnectionZhCn extends TranslationsConnectionEn {
	TranslationsConnectionZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get tapToConnect => '点击连接';
	@override String get connecting => '正在连接';
	@override String get disconnecting => '正在断开连接';
	@override String get connected => '已连接';
	@override String get reconnect => '重新连接';
	@override String get connectAnyWay => '连接';
	@override String get experimentalNotice => '使用中的实验功能';
	@override String get experimentalNoticeMsg => '您启用了一些实验性功能，这些功能可能会影响连接质量并导致意外错误。您可以随时从“配置”页面更改或重置这些选项。';
	@override String get disableExperimentalNotice => '不再显示';
	@override String get reconnectMsg => '重新连接以使更改生效';
}

// Path: config
class TranslationsConfigZhCn extends TranslationsConfigEn {
	TranslationsConfigZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get resetBtn => '重置选项';
	@override String get serviceMode => '服务模式';
	@override String get quickSettings => '快速设置';
	@override String get setupWarp => '配置 WARP';
	@override String get allOptions => '全部配置选项';
	@override late final TranslationsConfigServiceModesZhCn serviceModes = TranslationsConfigServiceModesZhCn._(_root);
	@override late final TranslationsConfigShortServiceModesZhCn shortServiceModes = TranslationsConfigShortServiceModesZhCn._(_root);
	@override late final TranslationsConfigSectionZhCn section = TranslationsConfigSectionZhCn._(_root);
	@override late final TranslationsConfigWarpConsentZhCn warpConsent = TranslationsConfigWarpConsentZhCn._(_root);
	@override String get generateWarpConfig => '生成 WARP 配置文件';
	@override String get missingWarpConfig => 'WARP 配置文件缺失';
	@override String get warpConfigGenerated => 'WARP 配置文件已生成';
	@override String get pageTitle => '配置';
	@override String get logLevel => '日志级别';
	@override String get resolveDestination => '解析目标地址';
	@override String get ipv6Mode => 'IPv6 路由';
	@override late final TranslationsConfigIpv6ModesZhCn ipv6Modes = TranslationsConfigIpv6ModesZhCn._(_root);
	@override String get remoteDnsAddress => '远程 DNS';
	@override String get remoteDnsDomainStrategy => '远程 DNS 域名策略';
	@override String get directDnsAddress => '直连 DNS';
	@override String get directDnsDomainStrategy => '直连 DNS 域名策略';
	@override String get mixedPort => '混合端口';
	@override String get tproxyPort => '透明代理端口';
	@override String get localDnsPort => '本地 DNS 端口';
	@override String get allowConnectionFromLan => '允许局域网连接';
	@override String get tunImplementation => 'TUN 实现';
	@override String get mtu => 'MTU';
	@override String get connectionTestUrl => '连接测试网址';
	@override String get urlTestInterval => '网址测试间隔';
	@override String get enableClashApi => '启用 Clash API';
	@override String get clashApiPort => 'Clash API 端口';
	@override String get enableTun => '启用 TUN';
	@override String get setSystemProxy => '设置系统代理';
	@override String get enableDnsRouting => '启用 DNS 路由';
	@override String get enableFakeDns => '启用 Fake DNS';
	@override String get bypassLan => '绕过局域网';
	@override String get strictRoute => '严格路由';
	@override String get enableTlsFragment => '启用 TLS 数据分段';
	@override String get tlsFragmentSize => 'TLS 分段大小';
	@override String get tlsFragmentSleep => 'TLS 分段休眠';
	@override String get enableTlsMixedSniCase => '启用 TLS 混合 SNI 情形';
	@override String get enableTlsPadding => '启用 TLS 填充';
	@override String get tlsPaddingSize => 'TLS 填充';
	@override String get enableMux => '启用 Mux 多路复用';
	@override String get muxProtocol => 'Mux 协议';
	@override String get muxMaxStreams => 'Mux 最大并发数';
	@override String get enableWarp => '启用 WARP';
	@override String get warpDetourMode => '链式代理';
	@override late final TranslationsConfigWarpDetourModesZhCn warpDetourModes = TranslationsConfigWarpDetourModesZhCn._(_root);
	@override String get warpLicenseKey => '许可证密钥';
	@override String get warpCleanIp => '清理 IP';
	@override String get warpPort => '端口';
	@override String get warpNoise => '噪音计数';
	@override String get warpNoiseDelay => '噪音延迟';
}

// Path: subscribe
class TranslationsSubscribeZhCn extends TranslationsSubscribeEn {
	TranslationsSubscribeZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '订阅';
	@override String get buyNow => '立即购买';
	@override String get createOrder => '创建订单';
	@override String get subscribeNow => '立即订阅';
}

// Path: center
class TranslationsCenterZhCn extends TranslationsCenterEn {
	TranslationsCenterZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '个人中心';
	@override String get changePassword => '修改密码';
	@override String get myOrder => '我的订单';
	@override String get inviteReward => '邀请奖励';
	@override String get logout => '退出登录';
	@override String get mySubscribe => '我的订阅';
	@override String mySubscribeWithName({required Object name}) => '我的订阅：${name}';
	@override String get noSubscribe => '无订阅';
	@override String get expired => '订阅已过期，请续费';
	@override String remainingDays({required Object days}) => '有效期剩余：${days} 天';
	@override String usedTraffic({required Object used, required Object total}) => '已用流量：${used} / 总计流量：${total} GB';
	@override String get oldPassword => '旧密码';
	@override String get newPassword => '新密码';
	@override String get cancel => '取消';
	@override String get confirm => '确认';
}

// Path: knowledge
class TranslationsKnowledgeZhCn extends TranslationsKnowledgeEn {
	TranslationsKnowledgeZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '使用文档';
	@override String get noData => '暂无文档';
}

// Path: order
class TranslationsOrderZhCn extends TranslationsOrderEn {
	TranslationsOrderZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '订单列表';
	@override String get noOrder => '暂无订单';
	@override late final TranslationsOrderDetailZhCn detail = TranslationsOrderDetailZhCn._(_root);
	@override late final TranslationsOrderActionZhCn action = TranslationsOrderActionZhCn._(_root);
}

// Path: invite
class TranslationsInviteZhCn extends TranslationsInviteEn {
	TranslationsInviteZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '邀请';
	@override String get totalCommission => '总佣金';
	@override String get registeredUsers => '已注册用户';
	@override String get commissionRate => '佣金比例';
	@override String get pendingCommission => '确认中佣金';
	@override String get inviteCode => '邀请码';
	@override String get generateInviteCode => '生成邀请码';
}

// Path: notice
class TranslationsNoticeZhCn extends TranslationsNoticeEn {
	TranslationsNoticeZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '公告';
}

// Path: login
class TranslationsLoginZhCn extends TranslationsLoginEn {
	TranslationsLoginZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final TranslationsLoginTitleZhCn title = TranslationsLoginTitleZhCn._(_root);
	@override late final TranslationsLoginEmailZhCn email = TranslationsLoginEmailZhCn._(_root);
	@override late final TranslationsLoginPasswordZhCn password = TranslationsLoginPasswordZhCn._(_root);
	@override late final TranslationsLoginInviteCodeZhCn inviteCode = TranslationsLoginInviteCodeZhCn._(_root);
	@override late final TranslationsLoginEmailCodeZhCn emailCode = TranslationsLoginEmailCodeZhCn._(_root);
	@override late final TranslationsLoginActionZhCn action = TranslationsLoginActionZhCn._(_root);
	@override String get orLoginWith => '或通过以下方式登录';
}

// Path: forgotPassword
class TranslationsForgotPasswordZhCn extends TranslationsForgotPasswordEn {
	TranslationsForgotPasswordZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '忘记密码';
	@override String get resetPassword => '重置密码';
	@override String get subTitle => '请输入您的注册邮箱，我们将发送验证码帮助您重置密码';
	@override late final TranslationsForgotPasswordEmailZhCn email = TranslationsForgotPasswordEmailZhCn._(_root);
	@override late final TranslationsForgotPasswordEmailCodeZhCn emailCode = TranslationsForgotPasswordEmailCodeZhCn._(_root);
	@override late final TranslationsForgotPasswordNewPasswordZhCn newPassword = TranslationsForgotPasswordNewPasswordZhCn._(_root);
	@override late final TranslationsForgotPasswordConfirmPasswordZhCn confirmPassword = TranslationsForgotPasswordConfirmPasswordZhCn._(_root);
	@override late final TranslationsForgotPasswordActionZhCn action = TranslationsForgotPasswordActionZhCn._(_root);
}

// Path: update
class TranslationsUpdateZhCn extends TranslationsUpdateEn {
	TranslationsUpdateZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '更新可用';
	@override String get message => '新版本已经可用，请更新你的应用。';
	@override late final TranslationsUpdateActionZhCn action = TranslationsUpdateActionZhCn._(_root);
}

// Path: error
class TranslationsErrorZhCn extends TranslationsErrorEn {
	TranslationsErrorZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '错误';
	@override late final TranslationsErrorFieldZhCn field = TranslationsErrorFieldZhCn._(_root);
}

// Path: general.toggle
class TranslationsGeneralToggleZhCn extends TranslationsGeneralToggleEn {
	TranslationsGeneralToggleZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get enabled => '启用';
	@override String get disabled => '禁用';
}

// Path: general.state
class TranslationsGeneralStateZhCn extends TranslationsGeneralStateEn {
	TranslationsGeneralStateZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get disable => '禁用';
}

// Path: profile.subscription
class TranslationsProfileSubscriptionZhCn extends TranslationsProfileSubscriptionEn {
	TranslationsProfileSubscriptionZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get traffic => '流量';
	@override String updatedTimeAgo({required Object timeago}) => '更新于 ${timeago}';
	@override String remainingDuration({required Object duration}) => '剩余 ${duration} 天';
	@override String remainingTrafficSemanticLabel({required Object consumed, required Object total}) => '已使用 ${consumed} 流量，共 ${total} 流量。';
	@override String get expired => '已过期';
	@override String get noTraffic => '超出配额';
	@override String get upload => '上传';
	@override String get download => '下载';
	@override String get total => '总流量';
	@override String get expireDate => '到期时间';
	@override late final TranslationsProfileSubscriptionStatusZhCn status = TranslationsProfileSubscriptionStatusZhCn._(_root);
}

// Path: profile.sortBy
class TranslationsProfileSortByZhCn extends TranslationsProfileSortByEn {
	TranslationsProfileSortByZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get lastUpdate => '最近更新';
	@override String get name => '字母顺序';
}

// Path: profile.add
class TranslationsProfileAddZhCn extends TranslationsProfileAddEn {
	TranslationsProfileAddZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get buttonText => '新的配置文件';
	@override String get shortBtnTxt => '新的配置文件';
	@override String get fromClipboard => '从剪贴板添加';
	@override String get scanQr => '扫描二维码';
	@override late final TranslationsProfileAddQrScannerZhCn qrScanner = TranslationsProfileAddQrScannerZhCn._(_root);
	@override String get manually => '手动输入';
	@override String get addingProfileMsg => '添加配置文件';
	@override String get failureMsg => '添加配置文件失败';
}

// Path: profile.update
class TranslationsProfileUpdateZhCn extends TranslationsProfileUpdateEn {
	TranslationsProfileUpdateZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => '更新';
	@override String get tooltip => '更新配置文件';
	@override String get updateSubscriptions => '更新订阅';
	@override String get failureMsg => '更新配置文件失败';
	@override String get successMsg => '配置文件更新成功';
	@override String namedFailureMsg({required Object name}) => '无法更新"${name}"';
	@override String namedSuccessMsg({required Object name}) => '"${name}" 更新成功';
}

// Path: profile.share
class TranslationsProfileShareZhCn extends TranslationsProfileShareEn {
	TranslationsProfileShareZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get buttonText => '分享';
	@override String get exportToClipboardSuccess => '导出到剪贴板';
	@override String get exportSubLinkToClipboard => '将订阅链接导出到剪贴板';
	@override String get subLinkQrCode => '订阅链接二维码';
	@override String get exportConfigToClipboard => '将配置导出到剪贴板';
	@override String get exportConfigToClipboardSuccess => '配置已复制到剪贴板';
}

// Path: profile.edit
class TranslationsProfileEditZhCn extends TranslationsProfileEditEn {
	TranslationsProfileEditZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => '编辑';
	@override String get selectActiveTxt => '选择并激活配置文件';
}

// Path: profile.delete
class TranslationsProfileDeleteZhCn extends TranslationsProfileDeleteEn {
	TranslationsProfileDeleteZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => '删除';
	@override String get confirmationMsg => '要永久删除配置文件吗？';
	@override String get successMsg => '配置文件删除成功';
}

// Path: profile.save
class TranslationsProfileSaveZhCn extends TranslationsProfileSaveEn {
	TranslationsProfileSaveZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get buttonText => '保存';
	@override String get successMsg => '配置文件保存成功';
	@override String get failureMsg => '配置文件保存失败';
}

// Path: profile.detailsForm
class TranslationsProfileDetailsFormZhCn extends TranslationsProfileDetailsFormEn {
	TranslationsProfileDetailsFormZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get nameLabel => '名称';
	@override String get nameHint => '配置文件名称';
	@override String get urlLabel => '网址';
	@override String get urlHint => '完整配置网址';
	@override String get emptyNameMsg => '名称为必填项';
	@override String get invalidUrlMsg => '无效的网址';
	@override String get lastUpdate => '最后更新';
	@override String get updateInterval => '自动更新';
	@override String get updateIntervalDialogTitle => '自动更新间隔（小时）';
}

// Path: proxies.sortOptions
class TranslationsProxiesSortOptionsZhCn extends TranslationsProxiesSortOptionsEn {
	TranslationsProxiesSortOptionsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unsorted => '默认';
	@override String get name => '按字母顺序';
	@override String get delay => '按延迟顺序';
}

// Path: proxies.delaySemantics
class TranslationsProxiesDelaySemanticsZhCn extends TranslationsProxiesDelaySemanticsEn {
	TranslationsProxiesDelaySemanticsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String result({required Object delay}) => '延迟: ${delay}ms';
	@override String get timeout => '延迟测试超时';
	@override String get testing => '正在测试延迟';
}

// Path: proxies.ipInfoSemantics
class TranslationsProxiesIpInfoSemanticsZhCn extends TranslationsProxiesIpInfoSemanticsEn {
	TranslationsProxiesIpInfoSemanticsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get address => 'IP 地址';
	@override String get country => '国家';
}

// Path: settings.general
class TranslationsSettingsGeneralZhCn extends TranslationsSettingsGeneralEn {
	TranslationsSettingsGeneralZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => '一般选项';
	@override String get locale => '语言';
	@override String get region => '地区';
	@override String get regionMsg => '帮助设置默认选项以绕过国内地址';
	@override late final TranslationsSettingsGeneralRegionsZhCn regions = TranslationsSettingsGeneralRegionsZhCn._(_root);
	@override String get themeMode => '主题模式';
	@override late final TranslationsSettingsGeneralThemeModesZhCn themeModes = TranslationsSettingsGeneralThemeModesZhCn._(_root);
	@override String get enableAnalytics => '启用分析';
	@override String get enableAnalyticsMsg => '授予收集分析并发送崩溃报告以改进应用程序的权限';
	@override String get autoStart => '开机启动';
	@override String get silentStart => '静默启动';
	@override String get openWorkingDir => '打开工作目录';
	@override String get ignoreBatteryOptimizations => '禁用电池优化';
	@override String get ignoreBatteryOptimizationsMsg => '消除限制以获得最佳 VPN 性能';
	@override String get dynamicNotification => '在通知中显示网络速度';
	@override String get hapticFeedback => '触觉反馈';
	@override String get autoIpCheck => '自动检查连接的 IP';
}

// Path: settings.advanced
class TranslationsSettingsAdvancedZhCn extends TranslationsSettingsAdvancedEn {
	TranslationsSettingsAdvancedZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => '高级选项';
	@override String get debugMode => '调试模式';
	@override String get debugModeMsg => '重新启动应用程序以应用此更改';
	@override String get memoryLimit => '内存限制';
	@override String get memoryLimitMsg => '如果您遇到内存不足错误或频繁应用程序崩溃，请启用';
	@override String get resetTunnel => '重置 VPN 配置文件';
}

// Path: settings.network
class TranslationsSettingsNetworkZhCn extends TranslationsSettingsNetworkEn {
	TranslationsSettingsNetworkZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get perAppProxyPageTitle => '分应用代理';
	@override late final TranslationsSettingsNetworkPerAppProxyModesZhCn perAppProxyModes = TranslationsSettingsNetworkPerAppProxyModesZhCn._(_root);
	@override String get showSystemApps => '显示系统应用程序';
	@override String get hideSystemApps => '隐藏系统应用程序';
	@override String get clearSelection => '清空选项';
}

// Path: settings.geoAssets
class TranslationsSettingsGeoAssetsZhCn extends TranslationsSettingsGeoAssetsEn {
	TranslationsSettingsGeoAssetsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '路由资源文件';
	@override String get geoip => 'GeoIP';
	@override String get geosite => 'Geosite';
	@override String version({required Object version}) => '版本 ${version}';
	@override String get fileMissing => '文件丢失';
	@override String get update => '更新';
	@override String get download => '下载';
	@override String get failureMsg => '更新资源文件失败';
	@override String get successMsg => '已成功更新资源文件';
	@override String get addRecommended => '添加建议的资源文件';
	@override String get missingGeoAssetsMsg => '所选路由资源的文件丢失。下载它们或选择现有的。';
}

// Path: tray.status
class TranslationsTrayStatusZhCn extends TranslationsTrayStatusEn {
	TranslationsTrayStatusZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get connect => '连接';
	@override String get connecting => '正在连接';
	@override String get disconnect => '断开连接';
	@override String get disconnecting => '正在断开连接';
}

// Path: failure.clash
class TranslationsFailureClashZhCn extends TranslationsFailureClashEn {
	TranslationsFailureClashZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外错误';
	@override String core({required Object reason}) => 'Clash 错误 ${reason}';
}

// Path: failure.singbox
class TranslationsFailureSingboxZhCn extends TranslationsFailureSingboxEn {
	TranslationsFailureSingboxZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外服务错误';
	@override String get serviceNotRunning => '服务未运行';
	@override String get missingPrivilege => '缺少权限';
	@override String get missingPrivilegeMsg => 'VPN 模式需要管理员权限。以管理员身份重新启动应用程序或更改服务模式';
	@override String get missingGeoAssets => '缺失 GEO 资源文件';
	@override String get missingGeoAssetsMsg => '缺失 GEO 资源文件。请考虑更改激活的资源文件或在设置中下载所选资源文件。';
	@override String get invalidConfigOptions => '配置选项无效';
	@override String get invalidConfig => '无效配置';
	@override String get create => '服务创建错误';
	@override String get start => '服务启动错误';
}

// Path: failure.connectivity
class TranslationsFailureConnectivityZhCn extends TranslationsFailureConnectivityEn {
	TranslationsFailureConnectivityZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外失败';
	@override String get missingVpnPermission => '缺少 VPN 权限';
	@override String get missingNotificationPermission => '缺少通知权限';
	@override String get core => '核心错误';
}

// Path: failure.profiles
class TranslationsFailureProfilesZhCn extends TranslationsFailureProfilesEn {
	TranslationsFailureProfilesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外错误';
	@override String get notFound => '未找到配置文件';
	@override String get invalidConfig => '无效配置';
	@override String get invalidUrl => '网址无效';
}

// Path: failure.connection
class TranslationsFailureConnectionZhCn extends TranslationsFailureConnectionEn {
	TranslationsFailureConnectionZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外连接错误';
	@override String get timeout => '连接超时';
	@override String get badResponse => '错误响应';
	@override String get connectionError => '连接错误';
	@override String get badCertificate => '证书无效';
}

// Path: failure.geoAssets
class TranslationsFailureGeoAssetsZhCn extends TranslationsFailureGeoAssetsEn {
	TranslationsFailureGeoAssetsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外错误';
	@override String get notUpdate => '无可用更新';
	@override String get activeNotFound => '未找到激活的 GEO 资源文件';
}

// Path: config.serviceModes
class TranslationsConfigServiceModesZhCn extends TranslationsConfigServiceModesEn {
	TranslationsConfigServiceModesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get proxy => '仅代理';
	@override String get systemProxy => '系统代理';
	@override String get tun => 'VPN';
	@override String get tunService => 'VPN 服务';
}

// Path: config.shortServiceModes
class TranslationsConfigShortServiceModesZhCn extends TranslationsConfigShortServiceModesEn {
	TranslationsConfigShortServiceModesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get proxy => '仅代理';
	@override String get systemProxy => '系统代理';
	@override String get tun => 'VPN';
	@override String get tunService => 'VPN 服务';
}

// Path: config.section
class TranslationsConfigSectionZhCn extends TranslationsConfigSectionEn {
	TranslationsConfigSectionZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get route => '路由选项';
	@override String get dns => 'DNS 选项';
	@override String get inbound => '入站选项';
	@override String get mux => '多路复用';
	@override String get outbound => '出站选项';
	@override String get tlsTricks => 'TLS 特性';
	@override String get warp => 'WARP 选项';
	@override String get misc => '其它选项';
}

// Path: config.warpConsent
class TranslationsConfigWarpConsentZhCn extends TranslationsConfigWarpConsentEn {
	TranslationsConfigWarpConsentZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cloudflare WARP 许可条款';
	@override TextSpan description({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
		const TextSpan(text: 'Cloudflare WARP 是一个免费的 WireGuard VPN 提供商。启用此选项即表示您同意 Cloudflare WARP 的 '),
		tos('服务条款'),
		const TextSpan(text: ' 和 '),
		privacy('隐私政策'),
	]);
}

// Path: config.ipv6Modes
class TranslationsConfigIpv6ModesZhCn extends TranslationsConfigIpv6ModesEn {
	TranslationsConfigIpv6ModesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get disable => '禁用';
	@override String get enable => '启用';
	@override String get prefer => '首选';
	@override String get only => '仅限';
}

// Path: config.warpDetourModes
class TranslationsConfigWarpDetourModesZhCn extends TranslationsConfigWarpDetourModesEn {
	TranslationsConfigWarpDetourModesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get proxyOverWarp => '通过 WARP 连接代理';
	@override String get warpOverProxy => '通过代理连接 WARP';
	@override String get inbound => '通过代理绕过 WARP';
	@override String get outbound => '通过 WARP 绕过代理';
}

// Path: order.detail
class TranslationsOrderDetailZhCn extends TranslationsOrderDetailEn {
	TranslationsOrderDetailZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '订单详情';
	@override late final TranslationsOrderDetailStatusZhCn status = TranslationsOrderDetailStatusZhCn._(_root);
	@override String product({required Object name}) => '产品：${name}';
	@override String price({required Object amount}) => '产品价格：${amount}';
	@override String orderNumber({required Object number}) => '订单编号：${number}';
	@override String createTime({required Object time}) => '创建时间：${time}';
}

// Path: order.action
class TranslationsOrderActionZhCn extends TranslationsOrderActionEn {
	TranslationsOrderActionZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get cancel => '取消订单';
	@override String get pay => '立即支付';
}

// Path: login.title
class TranslationsLoginTitleZhCn extends TranslationsLoginTitleEn {
	TranslationsLoginTitleZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get register => '创建新账号';
	@override String get login => '欢迎回来';
}

// Path: login.email
class TranslationsLoginEmailZhCn extends TranslationsLoginEmailEn {
	TranslationsLoginEmailZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '邮箱';
	@override String get hint => '请输入邮箱地址';
}

// Path: login.password
class TranslationsLoginPasswordZhCn extends TranslationsLoginPasswordEn {
	TranslationsLoginPasswordZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '密码';
	@override late final TranslationsLoginPasswordHintZhCn hint = TranslationsLoginPasswordHintZhCn._(_root);
}

// Path: login.inviteCode
class TranslationsLoginInviteCodeZhCn extends TranslationsLoginInviteCodeEn {
	TranslationsLoginInviteCodeZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '邀请码';
	@override String get hint => '选填';
}

// Path: login.emailCode
class TranslationsLoginEmailCodeZhCn extends TranslationsLoginEmailCodeEn {
	TranslationsLoginEmailCodeZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '邮箱验证码';
	@override String get hint => '请输入验证码';
	@override String get send => '获取验证码';
}

// Path: login.action
class TranslationsLoginActionZhCn extends TranslationsLoginActionEn {
	TranslationsLoginActionZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get register => '注册账号';
	@override String get login => '登录';
	@override String get forgotPassword => '忘记密码？';
	@override String get switchToLogin => '已有账号？返回登录';
	@override String get switchToRegister => '没有账号？立即注册';
}

// Path: forgotPassword.email
class TranslationsForgotPasswordEmailZhCn extends TranslationsForgotPasswordEmailEn {
	TranslationsForgotPasswordEmailZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '邮箱';
	@override String get hint => '请输入邮箱地址';
}

// Path: forgotPassword.emailCode
class TranslationsForgotPasswordEmailCodeZhCn extends TranslationsForgotPasswordEmailCodeEn {
	TranslationsForgotPasswordEmailCodeZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '邮箱验证码';
	@override String get hint => '请输入验证码';
	@override String get send => '获取验证码';
}

// Path: forgotPassword.newPassword
class TranslationsForgotPasswordNewPasswordZhCn extends TranslationsForgotPasswordNewPasswordEn {
	TranslationsForgotPasswordNewPasswordZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '新密码';
	@override String get hint => '请输入新密码';
}

// Path: forgotPassword.confirmPassword
class TranslationsForgotPasswordConfirmPasswordZhCn extends TranslationsForgotPasswordConfirmPasswordEn {
	TranslationsForgotPasswordConfirmPasswordZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '确认密码';
	@override String get hint => '请再次输入新密码';
}

// Path: forgotPassword.action
class TranslationsForgotPasswordActionZhCn extends TranslationsForgotPasswordActionEn {
	TranslationsForgotPasswordActionZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get send => '发送';
	@override String get switchToLogin => '已有账号？返回登录';
}

// Path: update.action
class TranslationsUpdateActionZhCn extends TranslationsUpdateActionEn {
	TranslationsUpdateActionZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get update => '更新';
	@override String get later => '稍后';
}

// Path: error.field
class TranslationsErrorFieldZhCn extends TranslationsErrorFieldEn {
	TranslationsErrorFieldZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get email => '邮箱';
	@override String get password => '密码';
}

// Path: profile.subscription.status
class TranslationsProfileSubscriptionStatusZhCn extends TranslationsProfileSubscriptionStatusEn {
	TranslationsProfileSubscriptionStatusZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get permanent => '长期有效';
	@override String get expired => '订阅已过期，请续费';
	@override String remainingDays({required Object days}) => '有效期剩余 ${days} 天';
}

// Path: profile.add.qrScanner
class TranslationsProfileAddQrScannerZhCn extends TranslationsProfileAddQrScannerEn {
	TranslationsProfileAddQrScannerZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get permissionDeniedError => '权限不足';
	@override String get unexpectedError => '出了些问题';
	@override String get torchSemanticLabel => '闪光灯';
	@override String get facingSemanticLabel => '切换摄像头';
	@override String get permissionRequest => '授予相机权限以允许扫描二维码';
}

// Path: settings.general.regions
class TranslationsSettingsGeneralRegionsZhCn extends TranslationsSettingsGeneralRegionsEn {
	TranslationsSettingsGeneralRegionsZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get ir => '伊朗 (ir)';
	@override String get cn => '中国 (cn)';
	@override String get ru => '俄罗斯 (ru)';
	@override String get af => '阿富汗 (af)';
	@override String get other => '其它';
}

// Path: settings.general.themeModes
class TranslationsSettingsGeneralThemeModesZhCn extends TranslationsSettingsGeneralThemeModesEn {
	TranslationsSettingsGeneralThemeModesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get system => '遵循系统主题';
	@override String get dark => '暗色';
	@override String get light => '浅色';
	@override String get black => '黑色';
}

// Path: settings.network.perAppProxyModes
class TranslationsSettingsNetworkPerAppProxyModesZhCn extends TranslationsSettingsNetworkPerAppProxyModesEn {
	TranslationsSettingsNetworkPerAppProxyModesZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get off => '全部';
	@override String get offMsg => '代理所有应用程序';
	@override String get include => '代理';
	@override String get includeMsg => '仅代理选定的应用程序';
	@override String get exclude => '绕过';
	@override String get excludeMsg => '不代理选中的应用程序';
}

// Path: order.detail.status
class TranslationsOrderDetailStatusZhCn extends TranslationsOrderDetailStatusEn {
	TranslationsOrderDetailStatusZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pending => '待支付';
	@override String get processing => '开通中';
	@override String get cancelled => '已取消';
	@override String get completed => '已完成';
	@override String get refunded => '已折抵';
}

// Path: login.password.hint
class TranslationsLoginPasswordHintZhCn extends TranslationsLoginPasswordHintEn {
	TranslationsLoginPasswordHintZhCn._(TranslationsZhCn root) : this._root = root, super._(root);

	@override final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get register => '请设置密码';
	@override String get login => '请输入密码';
}

// Path: <root>
class TranslationsZhTw extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhTw.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zhTw,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-TW>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final TranslationsZhTw _root = this; // ignore: unused_field

	// Translations
	@override late final TranslationsGeneralZhTw general = TranslationsGeneralZhTw._(_root);
	@override late final TranslationsIntroZhTw intro = TranslationsIntroZhTw._(_root);
	@override late final TranslationsHomeZhTw home = TranslationsHomeZhTw._(_root);
	@override late final TranslationsStatsZhTw stats = TranslationsStatsZhTw._(_root);
	@override late final TranslationsProfileZhTw profile = TranslationsProfileZhTw._(_root);
	@override late final TranslationsProxiesZhTw proxies = TranslationsProxiesZhTw._(_root);
	@override late final TranslationsLogsZhTw logs = TranslationsLogsZhTw._(_root);
	@override late final TranslationsSettingsZhTw settings = TranslationsSettingsZhTw._(_root);
	@override late final TranslationsAboutZhTw about = TranslationsAboutZhTw._(_root);
	@override late final TranslationsAppUpdateZhTw appUpdate = TranslationsAppUpdateZhTw._(_root);
	@override late final TranslationsTrayZhTw tray = TranslationsTrayZhTw._(_root);
	@override late final TranslationsFailureZhTw failure = TranslationsFailureZhTw._(_root);
	@override late final TranslationsPlayZhTw play = TranslationsPlayZhTw._(_root);
	@override late final TranslationsConnectionZhTw connection = TranslationsConnectionZhTw._(_root);
	@override late final TranslationsConfigZhTw config = TranslationsConfigZhTw._(_root);
}

// Path: general
class TranslationsGeneralZhTw extends TranslationsGeneralEn {
	TranslationsGeneralZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Hiddify';
	@override String get reset => '重置';
	@override late final TranslationsGeneralToggleZhTw toggle = TranslationsGeneralToggleZhTw._(_root);
	@override late final TranslationsGeneralStateZhTw state = TranslationsGeneralStateZhTw._(_root);
	@override String get sort => '排序';
	@override String get sortBy => '排序方式';
	@override String get addToClipboard => '新增至剪貼簿';
	@override String get timeout => '暫停';
}

// Path: intro
class TranslationsIntroZhTw extends TranslationsIntroEn {
	TranslationsIntroZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override TextSpan termsAndPolicyCaution({required InlineSpanBuilder tap}) => TextSpan(children: [
		const TextSpan(text: '繼續即表示您同意協議 '),
		tap(_root.about.termsAndConditions),
	]);
	@override String get start => '開始';
}

// Path: home
class TranslationsHomeZhTw extends TranslationsHomeEn {
	TranslationsHomeZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '主頁';
	@override String get emptyProfilesMsg => '首先新增訂閱設定檔';
	@override String get noActiveProfileMsg => '選擇設定檔';
}

// Path: stats
class TranslationsStatsZhTw extends TranslationsStatsEn {
	TranslationsStatsZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get trafficLive => '即時流量';
	@override String get trafficTotal => '總流量';
	@override String get uplink => '上行';
	@override String get downlink => '下行';
}

// Path: profile
class TranslationsProfileZhTw extends TranslationsProfileEn {
	TranslationsProfileZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get overviewPageTitle => '設定檔';
	@override String get detailsPageTitle => '設定檔';
	@override String activeProfileNameSemanticLabel({required Object name}) => '活動設定檔名稱：“${name}”。';
	@override String get activeProfileBtnSemanticLabel => '查看所有設定檔。';
	@override String nonActiveProfileBtnSemanticLabel({required Object name}) => '選擇“${name}”作為活動設定檔。';
	@override late final TranslationsProfileSubscriptionZhTw subscription = TranslationsProfileSubscriptionZhTw._(_root);
	@override late final TranslationsProfileSortByZhTw sortBy = TranslationsProfileSortByZhTw._(_root);
	@override late final TranslationsProfileAddZhTw add = TranslationsProfileAddZhTw._(_root);
	@override late final TranslationsProfileUpdateZhTw update = TranslationsProfileUpdateZhTw._(_root);
	@override late final TranslationsProfileShareZhTw share = TranslationsProfileShareZhTw._(_root);
	@override late final TranslationsProfileEditZhTw edit = TranslationsProfileEditZhTw._(_root);
	@override late final TranslationsProfileDeleteZhTw delete = TranslationsProfileDeleteZhTw._(_root);
	@override late final TranslationsProfileSaveZhTw save = TranslationsProfileSaveZhTw._(_root);
	@override late final TranslationsProfileDetailsFormZhTw detailsForm = TranslationsProfileDetailsFormZhTw._(_root);
}

// Path: proxies
class TranslationsProxiesZhTw extends TranslationsProxiesEn {
	TranslationsProxiesZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '代理';
	@override String get emptyProxiesMsg => '沒有可用的代理';
	@override String get delayTestTooltip => '測試延遲';
	@override String get sortTooltip => '對代理進行排序';
	@override late final TranslationsProxiesSortOptionsZhTw sortOptions = TranslationsProxiesSortOptionsZhTw._(_root);
}

// Path: logs
class TranslationsLogsZhTw extends TranslationsLogsEn {
	TranslationsLogsZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '日誌';
	@override String get filterHint => '篩選';
	@override String get allLevelsFilter => '全部';
	@override String get shareCoreLogs => '分享核心日誌';
	@override String get shareAppLogs => '共享應用程式日誌';
	@override String get pauseTooltip => '暫停';
	@override String get resumeTooltip => '恢復';
	@override String get clearTooltip => '清除';
}

// Path: settings
class TranslationsSettingsZhTw extends TranslationsSettingsEn {
	TranslationsSettingsZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '設定';
	@override String get requiresRestartMsg => '若要使其生效，請重新啟動應用程式';
	@override String get experimental => '實驗性的';
	@override String get experimentalMsg => '帶有實驗標誌的功能仍在開發中，可能會導致問題。';
	@override late final TranslationsSettingsGeneralZhTw general = TranslationsSettingsGeneralZhTw._(_root);
	@override late final TranslationsSettingsAdvancedZhTw advanced = TranslationsSettingsAdvancedZhTw._(_root);
	@override late final TranslationsSettingsNetworkZhTw network = TranslationsSettingsNetworkZhTw._(_root);
	@override late final TranslationsSettingsGeoAssetsZhTw geoAssets = TranslationsSettingsGeoAssetsZhTw._(_root);
}

// Path: about
class TranslationsAboutZhTw extends TranslationsAboutEn {
	TranslationsAboutZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '關於';
	@override String get version => '版本';
	@override String get sourceCode => '原始代碼';
	@override String get telegramChannel => 'Telegram 頻道';
	@override String get checkForUpdate => '檢查更新';
	@override String get privacyPolicy => '隱私政策';
	@override String get termsAndConditions => '條款與條件';
}

// Path: appUpdate
class TranslationsAppUpdateZhTw extends TranslationsAppUpdateEn {
	TranslationsAppUpdateZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get notAvailableMsg => '已經是最新版本';
	@override String get dialogTitle => '有可用更新';
	@override String get updateMsg => '${_root.general.appTitle} 的更新版本現已推出。您想現在更新嗎？';
	@override String get currentVersionLbl => '目前版本';
	@override String get newVersionLbl => '新版本';
	@override String get updateNowBtnTxt => '現在更新';
	@override String get laterBtnTxt => '之後再說';
	@override String get ignoreBtnTxt => '忽略';
}

// Path: tray
class TranslationsTrayZhTw extends TranslationsTrayEn {
	TranslationsTrayZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get dashboard => '儀表板';
	@override String get quit => '退出';
	@override String get open => '打開';
	@override late final TranslationsTrayStatusZhTw status = TranslationsTrayStatusZhTw._(_root);
}

// Path: failure
class TranslationsFailureZhTw extends TranslationsFailureEn {
	TranslationsFailureZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外錯誤';
	@override late final TranslationsFailureClashZhTw clash = TranslationsFailureClashZhTw._(_root);
	@override late final TranslationsFailureSingboxZhTw singbox = TranslationsFailureSingboxZhTw._(_root);
	@override late final TranslationsFailureConnectivityZhTw connectivity = TranslationsFailureConnectivityZhTw._(_root);
	@override late final TranslationsFailureProfilesZhTw profiles = TranslationsFailureProfilesZhTw._(_root);
	@override late final TranslationsFailureConnectionZhTw connection = TranslationsFailureConnectionZhTw._(_root);
	@override late final TranslationsFailureGeoAssetsZhTw geoAssets = TranslationsFailureGeoAssetsZhTw._(_root);
}

// Path: play
class TranslationsPlayZhTw extends TranslationsPlayEn {
	TranslationsPlayZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hiddify（預覽）';
	@override String get short_description => '自動、SSH、VLESS、Vmess、Trojan、Reality、Sing-Box、Clash、Xray、Shadowsocks';
	@override String get full_description => 'Hiddify 的主要目標是提供安全、使用者友好且高效率的隧道用戶端。它使您能夠利用 VPN 服務權限將所有流量或選定的應用程式流量路由到您選擇的遠端伺服器。\n\n註：我們不提供任何伺服器；使用者需要使用自己的自託管伺服器或受信任的伺服器來確保其線上活動的隱私。\n\n我們透過以下方式支援伺服器：\n - 普通 V2ray/Xray 訂閱連結\n - Clash 訂閱連結\n - Sing-Box 訂閱連結\n\n 我們的獨特功能是什麼？\n - 使用者友善\n - 最佳化且快速\n - 自動選擇最低延遲\n - 顯示使用者使用資訊\n - 使用一鍵連結輕鬆導入\n - 免費且無廣告\n - 輕鬆切換線路\n - 等等\n 支援：\n - Sing-Box 支援的所有協定 \n - VLESS + XTLS Reality、Vision 協定 \n - VMESS\n - Trojan\n - ShoadowSocks\n - Reality\n - WireGuard\n - V2ray\n - Hystria2\n - TUIC \n - SSH\n - ShadowTLS\n\n\n 原始碼位於 https://github.com/hiddify/Hiddify-Next\n 應用程式核心基於開源的 Sing-Box。\n\n權限說明：\n\n - VPN 服務：由於此應用程式的目標是提供安全性、使用者友好且高效的隧道用戶端，因此我們需要此權限才能透過隧道將流量路由到遠端伺服器。\n - 獲取應用程式列表：此權限用於允許使用者包含或排除隧道的特定應用程式。\n - 接收啟動廣播：可以從應用程式設定中啟用或停用此權限，以在裝置啟動時啟動此應用程式。\n - 發送通知：此權限至關重要，因為我們使用前台服務來確保 VPN 服務的持續運作。\n - 該應用程式沒有廣告。分析和崩潰數據僅在用戶首次使用應用程式時明確同意的情況下才會出現。';
}

// Path: connection
class TranslationsConnectionZhTw extends TranslationsConnectionEn {
	TranslationsConnectionZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get tapToConnect => '點擊以連接';
	@override String get connecting => '連接中';
	@override String get disconnecting => '斷連中';
	@override String get connected => '已連接';
	@override String get experimentalNotice => '使用中的實驗性功能';
	@override String get experimentalNoticeMsg => '您啟用了一些實驗性功能，這些功能可能會影響連線品質並導致某些意外錯誤。您始終可以從「配置選項」頁面變更或重設這些選項。';
	@override String get disableExperimentalNotice => '不再提示';
}

// Path: config
class TranslationsConfigZhTw extends TranslationsConfigEn {
	TranslationsConfigZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get resetBtn => '重置選項';
	@override String get serviceMode => '服務模式';
	@override String get quickSettings => '快速設定';
	@override String get setupWarp => '配置 WARP';
	@override late final TranslationsConfigServiceModesZhTw serviceModes = TranslationsConfigServiceModesZhTw._(_root);
	@override late final TranslationsConfigSectionZhTw section = TranslationsConfigSectionZhTw._(_root);
	@override late final TranslationsConfigWarpConsentZhTw warpConsent = TranslationsConfigWarpConsentZhTw._(_root);
	@override String get generateWarpConfig => '生成 WARP 配置檔案';
	@override String get missingWarpConfig => 'WARP 配置檔案缺失';
	@override String get warpConfigGenerated => 'WARP 配置檔案已生成';
	@override String get pageTitle => '配置選項';
	@override String get logLevel => '日誌等級';
	@override String get resolveDestination => '解析目標地址';
	@override String get ipv6Mode => 'IPv6 路由';
	@override late final TranslationsConfigIpv6ModesZhTw ipv6Modes = TranslationsConfigIpv6ModesZhTw._(_root);
	@override String get remoteDnsAddress => '遠端 DNS';
	@override String get remoteDnsDomainStrategy => '遠端 DNS 網域策略';
	@override String get directDnsAddress => '直連 DNS';
	@override String get directDnsDomainStrategy => '直連 DNS 網域策略';
	@override String get mixedPort => '混合連接埠';
	@override String get tproxyPort => '透明代理埠';
	@override String get localDnsPort => '本地 DNS 連接埠';
	@override String get allowConnectionFromLan => '允許區域網連線';
	@override String get tunImplementation => 'TUN 實現';
	@override String get mtu => 'MTU';
	@override String get connectionTestUrl => '連接測試網址';
	@override String get urlTestInterval => 'URL 測試間隔';
	@override String get enableClashApi => '啟用 Clash API';
	@override String get clashApiPort => 'Clash API 連接埠';
	@override String get enableTun => '啟用 TUN';
	@override String get setSystemProxy => '設定系統代理';
	@override String get enableDnsRouting => '啟用 DNS 路由';
	@override String get enableFakeDns => '啟用 Fake DNS';
	@override String get bypassLan => '繞過區域網路';
	@override String get strictRoute => '嚴格路由';
	@override String get enableTlsFragment => '啟用 TLS 分段';
	@override String get tlsFragmentSize => 'TLS 分段大小';
	@override String get tlsFragmentSleep => 'TLS 分段睡眠';
	@override String get enableTlsMixedSniCase => '啟用 TLS 混合 SNI 情況';
	@override String get enableTlsPadding => '啟用 TLS 填充';
	@override String get tlsPaddingSize => 'TLS 填充';
	@override String get enableMux => '啟用復用器';
	@override String get muxProtocol => '復用器控制';
	@override String get muxMaxStreams => '最大並發數';
	@override String get enableWarp => '啟用 WARP';
	@override String get warpDetourMode => '鏈式代理';
	@override late final TranslationsConfigWarpDetourModesZhTw warpDetourModes = TranslationsConfigWarpDetourModesZhTw._(_root);
	@override String get warpLicenseKey => '許可證金鑰';
	@override String get warpCleanIp => '清理 IP';
	@override String get warpPort => '埠';
	@override String get warpNoise => '噪音計數';
	@override String get warpNoiseDelay => '噪音延遲';
}

// Path: general.toggle
class TranslationsGeneralToggleZhTw extends TranslationsGeneralToggleEn {
	TranslationsGeneralToggleZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get enabled => '啟用';
	@override String get disabled => '停用';
}

// Path: general.state
class TranslationsGeneralStateZhTw extends TranslationsGeneralStateEn {
	TranslationsGeneralStateZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get disable => '停用';
}

// Path: profile.subscription
class TranslationsProfileSubscriptionZhTw extends TranslationsProfileSubscriptionEn {
	TranslationsProfileSubscriptionZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get traffic => '流量';
	@override String updatedTimeAgo({required Object timeago}) => '更新${timeago}';
	@override String remainingDuration({required Object duration}) => '剩餘 ${duration} 天';
	@override String remainingTrafficSemanticLabel({required Object consumed, required Object total}) => '已使用 ${consumed} 流量，總共 ${total} 流量。';
	@override String get expired => '已到期';
	@override String get noTraffic => '超過配額';
}

// Path: profile.sortBy
class TranslationsProfileSortByZhTw extends TranslationsProfileSortByEn {
	TranslationsProfileSortByZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get lastUpdate => '最近更新';
	@override String get name => '按字母順序';
}

// Path: profile.add
class TranslationsProfileAddZhTw extends TranslationsProfileAddEn {
	TranslationsProfileAddZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get buttonText => '新的設定檔';
	@override String get shortBtnTxt => '新的設定檔';
	@override String get fromClipboard => '從剪貼簿添加';
	@override String get scanQr => '掃描 QR code';
	@override late final TranslationsProfileAddQrScannerZhTw qrScanner = TranslationsProfileAddQrScannerZhTw._(_root);
	@override String get manually => '手動輸入';
	@override String get addingProfileMsg => '新增設定檔';
	@override String get failureMsg => '新增設定檔失敗';
}

// Path: profile.update
class TranslationsProfileUpdateZhTw extends TranslationsProfileUpdateEn {
	TranslationsProfileUpdateZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => '更新';
	@override String get tooltip => '更新設定檔';
	@override String get updateSubscriptions => '更新訂閱';
	@override String get failureMsg => '更新設定檔失敗';
	@override String get successMsg => '設定檔更新成功';
	@override String namedFailureMsg({required Object name}) => '無法更新“${name}”';
	@override String namedSuccessMsg({required Object name}) => '“${name}” 更新成功';
}

// Path: profile.share
class TranslationsProfileShareZhTw extends TranslationsProfileShareEn {
	TranslationsProfileShareZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get buttonText => '分享';
	@override String get exportToClipboardSuccess => '匯出到剪貼簿';
	@override String get exportSubLinkToClipboard => '將訂閱連結匯出到剪貼簿';
	@override String get subLinkQrCode => '訂閱連結 QR code';
	@override String get exportConfigToClipboard => '將配置匯出到剪貼簿';
	@override String get exportConfigToClipboardSuccess => '配置已複製到剪貼簿';
}

// Path: profile.edit
class TranslationsProfileEditZhTw extends TranslationsProfileEditEn {
	TranslationsProfileEditZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => '編輯';
	@override String get selectActiveTxt => '選擇並激活設定檔';
}

// Path: profile.delete
class TranslationsProfileDeleteZhTw extends TranslationsProfileDeleteEn {
	TranslationsProfileDeleteZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get buttonTxt => '刪除';
	@override String get confirmationMsg => '永久刪除設定檔嗎？';
	@override String get successMsg => '設定檔刪除成功';
}

// Path: profile.save
class TranslationsProfileSaveZhTw extends TranslationsProfileSaveEn {
	TranslationsProfileSaveZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get buttonText => '儲存';
	@override String get successMsg => '設定檔儲存成功';
	@override String get failureMsg => '設定檔儲存失敗';
}

// Path: profile.detailsForm
class TranslationsProfileDetailsFormZhTw extends TranslationsProfileDetailsFormEn {
	TranslationsProfileDetailsFormZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get nameLabel => '名稱';
	@override String get nameHint => '設定檔名稱';
	@override String get urlLabel => '網址';
	@override String get urlHint => '完整配置網址';
	@override String get emptyNameMsg => '名稱為必填項';
	@override String get invalidUrlMsg => '無效的網址';
	@override String get lastUpdate => '最後更新';
	@override String get updateInterval => '自動更新';
	@override String get updateIntervalDialogTitle => '自動更新間隔（以小時為單位）';
}

// Path: proxies.sortOptions
class TranslationsProxiesSortOptionsZhTw extends TranslationsProxiesSortOptionsEn {
	TranslationsProxiesSortOptionsZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get unsorted => '預設';
	@override String get name => '按字母排序';
	@override String get delay => '按延遲排序';
}

// Path: settings.general
class TranslationsSettingsGeneralZhTw extends TranslationsSettingsGeneralEn {
	TranslationsSettingsGeneralZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => '一般的';
	@override String get locale => '語言';
	@override String get region => '地區';
	@override String get regionMsg => '幫助設定預設選項以繞過國內地址';
	@override late final TranslationsSettingsGeneralRegionsZhTw regions = TranslationsSettingsGeneralRegionsZhTw._(_root);
	@override String get themeMode => '主題模式';
	@override late final TranslationsSettingsGeneralThemeModesZhTw themeModes = TranslationsSettingsGeneralThemeModesZhTw._(_root);
	@override String get enableAnalytics => '啟用分析';
	@override String get enableAnalyticsMsg => '授予收集分析並發送崩潰報告以改進應用程式的權限';
	@override String get autoStart => '隨系統啟動';
	@override String get silentStart => '啟動最小化';
	@override String get openWorkingDir => '開啟工作目錄';
	@override String get ignoreBatteryOptimizations => '停用電池優化';
	@override String get ignoreBatteryOptimizationsMsg => '消除限制以獲得最佳 VPN 效能';
	@override String get dynamicNotification => '在通知中顯示速度';
}

// Path: settings.advanced
class TranslationsSettingsAdvancedZhTw extends TranslationsSettingsAdvancedEn {
	TranslationsSettingsAdvancedZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get sectionTitle => '高級設定';
	@override String get debugMode => '偵錯模式';
	@override String get debugModeMsg => '重新啟動應用程式以應用此更改';
	@override String get memoryLimit => '記憶體限制';
	@override String get memoryLimitMsg => '如果您遇到記憶體不足錯誤或頻繁應用程式崩潰，請啟用';
	@override String get resetTunnel => '重置 VPN 設定檔';
}

// Path: settings.network
class TranslationsSettingsNetworkZhTw extends TranslationsSettingsNetworkEn {
	TranslationsSettingsNetworkZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get perAppProxyPageTitle => '應用程式 VPN 模式';
	@override late final TranslationsSettingsNetworkPerAppProxyModesZhTw perAppProxyModes = TranslationsSettingsNetworkPerAppProxyModesZhTw._(_root);
	@override String get showSystemApps => '顯示系統應用程式';
	@override String get hideSystemApps => '隱藏系統應用程式';
	@override String get clearSelection => '清空選項';
}

// Path: settings.geoAssets
class TranslationsSettingsGeoAssetsZhTw extends TranslationsSettingsGeoAssetsEn {
	TranslationsSettingsGeoAssetsZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get pageTitle => '路由資源文件';
	@override String get geoip => 'GeoIP';
	@override String get geosite => 'Geosite';
	@override String version({required Object version}) => '版本${version}';
	@override String get fileMissing => '文件遺失';
	@override String get update => '更新';
	@override String get download => '下載';
	@override String get failureMsg => '更新資源文件失敗';
	@override String get successMsg => '已成功更新資源文件';
	@override String get addRecommended => '新增推薦的資源文件';
	@override String get missingGeoAssetsMsg => '所選路由資源的檔案遺失。下載它們或選擇現有的。';
}

// Path: tray.status
class TranslationsTrayStatusZhTw extends TranslationsTrayStatusEn {
	TranslationsTrayStatusZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get connect => '連接';
	@override String get connecting => '連接中';
	@override String get disconnect => '斷開連接';
	@override String get disconnecting => '斷連中';
}

// Path: failure.clash
class TranslationsFailureClashZhTw extends TranslationsFailureClashEn {
	TranslationsFailureClashZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外錯誤';
	@override String core({required Object reason}) => 'Clash 錯誤 ${reason}';
}

// Path: failure.singbox
class TranslationsFailureSingboxZhTw extends TranslationsFailureSingboxEn {
	TranslationsFailureSingboxZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外服務錯誤';
	@override String get serviceNotRunning => '服務未運行';
	@override String get missingPrivilege => '缺乏權限';
	@override String get missingPrivilegeMsg => 'VPN 模式需要管理員權限。以管理員身分重新啟動應用程式或變更服務模式。';
	@override String get missingGeoAssets => '缺少 GEO 資源文件';
	@override String get missingGeoAssetsMsg => 'GEO 資源文件缺失。請考慮更改活動資源文件或在設定中下載選定的資源文件。';
	@override String get invalidConfigOptions => '配置選項無效';
	@override String get invalidConfig => '無效配置';
	@override String get create => '服務建立錯誤';
	@override String get start => '服務啟動錯誤';
}

// Path: failure.connectivity
class TranslationsFailureConnectivityZhTw extends TranslationsFailureConnectivityEn {
	TranslationsFailureConnectivityZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外失敗';
	@override String get missingVpnPermission => '缺少 VPN 權限';
	@override String get missingNotificationPermission => '缺少通知權限';
	@override String get core => '核心錯誤';
}

// Path: failure.profiles
class TranslationsFailureProfilesZhTw extends TranslationsFailureProfilesEn {
	TranslationsFailureProfilesZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外錯誤';
	@override String get notFound => '未找到設定檔';
	@override String get invalidConfig => '無效配置';
	@override String get invalidUrl => '無效網址';
}

// Path: failure.connection
class TranslationsFailureConnectionZhTw extends TranslationsFailureConnectionEn {
	TranslationsFailureConnectionZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外連線錯誤';
	@override String get timeout => '連線超時';
	@override String get badResponse => '錯誤反應';
	@override String get connectionError => '連線錯誤';
	@override String get badCertificate => '無效證書';
}

// Path: failure.geoAssets
class TranslationsFailureGeoAssetsZhTw extends TranslationsFailureGeoAssetsEn {
	TranslationsFailureGeoAssetsZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '意外錯誤';
	@override String get notUpdate => '暫無可用更新';
	@override String get activeNotFound => '未找到活動 GEO 資源文件';
}

// Path: config.serviceModes
class TranslationsConfigServiceModesZhTw extends TranslationsConfigServiceModesEn {
	TranslationsConfigServiceModesZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get proxy => '僅代理';
	@override String get systemProxy => '系統代理';
	@override String get tun => 'VPN';
	@override String get tunService => 'VPN 服務';
}

// Path: config.section
class TranslationsConfigSectionZhTw extends TranslationsConfigSectionEn {
	TranslationsConfigSectionZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get route => '路由選項';
	@override String get dns => 'DNS 選項';
	@override String get inbound => '入站選項';
	@override String get mux => '復用器';
	@override String get outbound => '出站選項';
	@override String get tlsTricks => 'TLS Tricks';
	@override String get misc => '其他選項';
}

// Path: config.warpConsent
class TranslationsConfigWarpConsentZhTw extends TranslationsConfigWarpConsentEn {
	TranslationsConfigWarpConsentZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cloudflare WARP 許可條款';
}

// Path: config.ipv6Modes
class TranslationsConfigIpv6ModesZhTw extends TranslationsConfigIpv6ModesEn {
	TranslationsConfigIpv6ModesZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get disable => '停用';
	@override String get enable => '啟用';
	@override String get prefer => '首選';
	@override String get only => '僅限';
}

// Path: config.warpDetourModes
class TranslationsConfigWarpDetourModesZhTw extends TranslationsConfigWarpDetourModesEn {
	TranslationsConfigWarpDetourModesZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get proxyOverWarp => '透過 WARP 連線代理';
	@override String get warpOverProxy => '透過代理連線 WARP';
	@override String get inbound => '透過代理繞過 WARP';
	@override String get outbound => '透過 WARP 繞過代理';
}

// Path: profile.add.qrScanner
class TranslationsProfileAddQrScannerZhTw extends TranslationsProfileAddQrScannerEn {
	TranslationsProfileAddQrScannerZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get permissionDeniedError => '沒有權限';
	@override String get unexpectedError => '出了點問題';
	@override String get torchSemanticLabel => '手電筒';
	@override String get facingSemanticLabel => '相機朝向';
}

// Path: settings.general.regions
class TranslationsSettingsGeneralRegionsZhTw extends TranslationsSettingsGeneralRegionsEn {
	TranslationsSettingsGeneralRegionsZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get ir => '伊朗 (ir)';
	@override String get cn => '中國大陸 (cn)';
	@override String get ru => '俄羅斯 (ru)';
	@override String get af => '阿富汗 (af)';
	@override String get other => '其他地區';
}

// Path: settings.general.themeModes
class TranslationsSettingsGeneralThemeModesZhTw extends TranslationsSettingsGeneralThemeModesEn {
	TranslationsSettingsGeneralThemeModesZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get system => '遵循系統主題';
	@override String get dark => '深色';
	@override String get light => '淺色';
	@override String get black => '黑色';
}

// Path: settings.network.perAppProxyModes
class TranslationsSettingsNetworkPerAppProxyModesZhTw extends TranslationsSettingsNetworkPerAppProxyModesEn {
	TranslationsSettingsNetworkPerAppProxyModesZhTw._(TranslationsZhTw root) : this._root = root, super._(root);

	@override final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get off => '全部';
	@override String get offMsg => '代理所有應用程式';
	@override String get include => '代理';
	@override String get includeMsg => '僅代理選定的應用程式';
	@override String get exclude => '略過';
	@override String get excludeMsg => '不代理選定的應用程式';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'Hiddify';
			case 'general.reset': return 'Reset';
			case 'general.toggle.enabled': return 'Enabled';
			case 'general.toggle.disabled': return 'Disabled';
			case 'general.state.disable': return 'Disable';
			case 'general.sort': return 'Sort';
			case 'general.sortBy': return 'Sort by';
			case 'general.addToClipboard': return 'Add To Clipboard';
			case 'general.notSet': return 'Not Set';
			case 'general.agree': return 'Agree';
			case 'general.decline': return 'Decline';
			case 'general.unknown': return 'Unknown';
			case 'general.hidden': return 'Hidden';
			case 'general.timeout': return 'Timeout';
			case 'general.clipboardExportSuccessMsg': return 'Added To Clipboard';
			case 'general.showMore': return 'Show More';
			case 'general.showLess': return 'Show Less';
			case 'general.openAppSettings': return 'Open App Settings';
			case 'general.grantPermission': return 'Grant Permission';
			case 'intro.termsAndPolicyCaution': return ({required InlineSpanBuilder tap}) => TextSpan(children: [
				const TextSpan(text: 'By Continuing You Agree With '),
				tap(_root.about.termsAndConditions),
			]);
			case 'intro.start': return 'Start';
			case 'home.pageTitle': return 'Home';
			case 'home.emptyProfilesMsg': return 'Begin by Adding a Subscription Profile';
			case 'home.noActiveProfileMsg': return 'Choose a Profile';
			case 'stats.traffic': return 'Traffic';
			case 'stats.trafficLive': return 'Live Traffic';
			case 'stats.trafficTotal': return 'Total Traffic';
			case 'stats.uplink': return 'Uplink';
			case 'stats.downlink': return 'Downlink';
			case 'stats.connection': return 'Connection';
			case 'stats.speed': return 'Speed';
			case 'stats.totalTransferred': return 'Total Transferred';
			case 'profile.overviewPageTitle': return 'Profiles';
			case 'profile.detailsPageTitle': return 'Profile';
			case 'profile.activeProfileNameSemanticLabel': return ({required Object name}) => 'Active Profile Name: "${name}".';
			case 'profile.activeProfileBtnSemanticLabel': return 'View All Profiles';
			case 'profile.nonActiveProfileBtnSemanticLabel': return ({required Object name}) => 'Select "${name}" as Active Profile';
			case 'profile.subscription.traffic': return 'Traffic';
			case 'profile.subscription.updatedTimeAgo': return ({required Object timeago}) => 'Updated ${timeago}';
			case 'profile.subscription.remainingDuration': return ({required Object duration}) => '${duration} Days Remaining';
			case 'profile.subscription.remainingTrafficSemanticLabel': return ({required Object consumed, required Object total}) => '${consumed} of ${total} Traffic Consumed';
			case 'profile.subscription.expired': return 'Expired';
			case 'profile.subscription.noTraffic': return 'Out of Quota';
			case 'profile.subscription.upload': return 'Upload';
			case 'profile.subscription.download': return 'Download';
			case 'profile.subscription.total': return 'Total';
			case 'profile.subscription.expireDate': return 'Expire Date';
			case 'profile.subscription.status.permanent': return 'Permanent';
			case 'profile.subscription.status.expired': return 'Subscription expired, please renew';
			case 'profile.subscription.status.remainingDays': return ({required Object days}) => '${days} days remaining';
			case 'profile.sortBy.lastUpdate': return 'Recently Updated';
			case 'profile.sortBy.name': return 'Alphabetically';
			case 'profile.add.buttonText': return 'New Profile';
			case 'profile.add.shortBtnTxt': return 'New Profile';
			case 'profile.add.fromClipboard': return 'Add From Clipboard';
			case 'profile.add.scanQr': return 'Scan QR Code';
			case 'profile.add.qrScanner.permissionDeniedError': return 'Permission Denied';
			case 'profile.add.qrScanner.unexpectedError': return 'Something Went Wrong';
			case 'profile.add.qrScanner.torchSemanticLabel': return 'Flash Light';
			case 'profile.add.qrScanner.facingSemanticLabel': return 'Camera Facing';
			case 'profile.add.qrScanner.permissionRequest': return 'Permission to camera to scan QR Code';
			case 'profile.add.manually': return 'Manual Entry';
			case 'profile.add.addingProfileMsg': return 'Adding Profile';
			case 'profile.add.failureMsg': return 'Failed to Add Profile';
			case 'profile.update.buttonTxt': return 'Update';
			case 'profile.update.tooltip': return 'Update Profile';
			case 'profile.update.updateSubscriptions': return 'Update Subscriptions';
			case 'profile.update.failureMsg': return 'Failed to Update Profile';
			case 'profile.update.successMsg': return 'Profile Updated Successfully';
			case 'profile.update.namedFailureMsg': return ({required Object name}) => 'Failed to Update "${name}"';
			case 'profile.update.namedSuccessMsg': return ({required Object name}) => '"${name}" Updated Successfully';
			case 'profile.share.buttonText': return 'Share';
			case 'profile.share.exportToClipboardSuccess': return 'Exported to Clipboard';
			case 'profile.share.exportSubLinkToClipboard': return 'Export Subscription Link to Clipboard';
			case 'profile.share.subLinkQrCode': return 'Subscription Link QR Code';
			case 'profile.share.exportConfigToClipboard': return 'Export Configuration to Clipboard';
			case 'profile.share.exportConfigToClipboardSuccess': return 'Configuration Copied to Clipboard';
			case 'profile.edit.buttonTxt': return 'Edit';
			case 'profile.edit.selectActiveTxt': return 'Select Active Profile';
			case 'profile.delete.buttonTxt': return 'Delete';
			case 'profile.delete.confirmationMsg': return 'Delete Profile Permanently?';
			case 'profile.delete.successMsg': return 'Profile Deleted Successfully';
			case 'profile.save.buttonText': return 'Save';
			case 'profile.save.successMsg': return 'Profile Saved Successfully';
			case 'profile.save.failureMsg': return 'Failed to Save Profile';
			case 'profile.detailsForm.nameLabel': return 'Name';
			case 'profile.detailsForm.nameHint': return 'Profile Name';
			case 'profile.detailsForm.urlLabel': return 'URL';
			case 'profile.detailsForm.urlHint': return 'Full Config URL';
			case 'profile.detailsForm.emptyNameMsg': return 'Name Is Required';
			case 'profile.detailsForm.invalidUrlMsg': return 'Invalid URL';
			case 'profile.detailsForm.lastUpdate': return 'Last Update';
			case 'profile.detailsForm.updateInterval': return 'Auto Update';
			case 'profile.detailsForm.updateIntervalDialogTitle': return 'Auto Update Interval (in Hours)';
			case 'proxies.pageTitle': return 'Proxies';
			case 'proxies.title': return 'Select Node';
			case 'proxies.emptyProxiesMsg': return 'No Proxies Available';
			case 'proxies.delayTestTooltip': return 'Test Delay';
			case 'proxies.sortTooltip': return 'Sort Proxies';
			case 'proxies.checkIp': return 'Check IP';
			case 'proxies.unknownIp': return 'Unknown IP';
			case 'proxies.sortOptions.unsorted': return 'Default';
			case 'proxies.sortOptions.name': return 'Alphabetically';
			case 'proxies.sortOptions.delay': return 'By Delay';
			case 'proxies.activeProxySemanticLabel': return 'Currently Selected Node';
			case 'proxies.delaySemantics.result': return ({required Object delay}) => 'Delay: ${delay}ms';
			case 'proxies.delaySemantics.timeout': return 'Delay Test Timeout';
			case 'proxies.delaySemantics.testing': return 'Delay: Testing...';
			case 'proxies.ipInfoSemantics.address': return 'IP Address';
			case 'proxies.ipInfoSemantics.country': return 'Country';
			case 'logs.pageTitle': return 'Logs';
			case 'logs.filterHint': return 'Filter';
			case 'logs.allLevelsFilter': return 'All';
			case 'logs.shareCoreLogs': return 'Share Core Logs';
			case 'logs.shareAppLogs': return 'Share App Logs';
			case 'logs.pauseTooltip': return 'Pause';
			case 'logs.resumeTooltip': return 'Resume';
			case 'logs.clearTooltip': return 'Clear';
			case 'settings.pageTitle': return 'Settings';
			case 'settings.requiresRestartMsg': return 'For this to take effect restart the app';
			case 'settings.experimental': return 'Experimental';
			case 'settings.experimentalMsg': return 'Features with Experimental flag are still in development and might cause issues.';
			case 'settings.exportOptions': return 'Export Options to Clipboard';
			case 'settings.exportAllOptions': return 'Export Options to Clipboard (Debug)';
			case 'settings.importOptions': return 'Import Options From Clipboard';
			case 'settings.importOptionsMsg': return 'This will rewrite all config options with provided values. Are you sure?';
			case 'settings.general.sectionTitle': return 'General';
			case 'settings.general.locale': return 'Language';
			case 'settings.general.region': return 'Region';
			case 'settings.general.regionMsg': return 'Helps set default options to bypass domestic addresses';
			case 'settings.general.regions.ir': return 'Iran (ir)';
			case 'settings.general.regions.cn': return 'China (cn)';
			case 'settings.general.regions.ru': return 'Russia (ru)';
			case 'settings.general.regions.af': return 'Afghanistan (af)';
			case 'settings.general.regions.other': return 'Other';
			case 'settings.general.themeMode': return 'Theme Mode';
			case 'settings.general.themeModes.system': return 'Follow System Theme';
			case 'settings.general.themeModes.dark': return 'Dark Mode';
			case 'settings.general.themeModes.light': return 'Light Mode';
			case 'settings.general.themeModes.black': return 'Black Mode';
			case 'settings.general.enableAnalytics': return 'Enable Analytics';
			case 'settings.general.enableAnalyticsMsg': return 'Give permission to collect analytics and send crash reports to improve the app';
			case 'settings.general.autoStart': return 'Start At Login';
			case 'settings.general.silentStart': return 'Start Minimized';
			case 'settings.general.openWorkingDir': return 'Open Working Directory';
			case 'settings.general.ignoreBatteryOptimizations': return 'Disable Battery Optimization';
			case 'settings.general.ignoreBatteryOptimizationsMsg': return 'Remove Restrictions For Optimal VPN Performance';
			case 'settings.general.dynamicNotification': return 'Display Speed in Notification';
			case 'settings.general.hapticFeedback': return 'Haptic Feedback';
			case 'settings.general.autoIpCheck': return 'Automatically Check Connection IP';
			case 'settings.advanced.sectionTitle': return 'Advanced';
			case 'settings.advanced.debugMode': return 'Debug Mode';
			case 'settings.advanced.debugModeMsg': return 'Restart the app for applying this change';
			case 'settings.advanced.memoryLimit': return 'Memory Limit';
			case 'settings.advanced.memoryLimitMsg': return 'Enable if you\'re experiencing out of memory errors or frequent app crash';
			case 'settings.advanced.resetTunnel': return 'Reset VPN Profile';
			case 'settings.network.perAppProxyPageTitle': return 'Per-App Proxy';
			case 'settings.network.perAppProxyModes.off': return 'All';
			case 'settings.network.perAppProxyModes.offMsg': return 'Proxy All Apps';
			case 'settings.network.perAppProxyModes.include': return 'Proxy';
			case 'settings.network.perAppProxyModes.includeMsg': return 'Proxy Only Selected Apps';
			case 'settings.network.perAppProxyModes.exclude': return 'Bypass';
			case 'settings.network.perAppProxyModes.excludeMsg': return 'Do Not Proxy Selected Apps';
			case 'settings.network.showSystemApps': return 'Show System Apps';
			case 'settings.network.hideSystemApps': return 'Hide System Apps';
			case 'settings.network.clearSelection': return 'Clear Selection';
			case 'settings.geoAssets.pageTitle': return 'Routing Assets';
			case 'settings.geoAssets.geoip': return 'GeoIP';
			case 'settings.geoAssets.geosite': return 'GeoSite';
			case 'settings.geoAssets.version': return ({required Object version}) => 'Version ${version}';
			case 'settings.geoAssets.fileMissing': return 'File Missing';
			case 'settings.geoAssets.update': return 'Update';
			case 'settings.geoAssets.download': return 'Download';
			case 'settings.geoAssets.failureMsg': return 'Failed to Update Asset';
			case 'settings.geoAssets.successMsg': return 'Successfully Updated Asset';
			case 'settings.geoAssets.addRecommended': return 'Add Recommended Assets';
			case 'settings.geoAssets.missingGeoAssetsMsg': return 'Selected Routing Assets\' files are missing. Either download them or choose existing ones';
			case 'about.pageTitle': return 'About';
			case 'about.version': return 'Version';
			case 'about.sourceCode': return 'Source Code';
			case 'about.telegramChannel': return 'Telegram Channel';
			case 'about.checkForUpdate': return 'Check For Update';
			case 'about.privacyPolicy': return 'Privacy Policy';
			case 'about.termsAndConditions': return 'Terms and Conditions';
			case 'appUpdate.notAvailableMsg': return 'Already Using The Latest Version';
			case 'appUpdate.dialogTitle': return 'Update Available';
			case 'appUpdate.updateMsg': return 'A new version of ${_root.general.appTitle} is available. Would you like to update now?';
			case 'appUpdate.currentVersionLbl': return 'Current Version';
			case 'appUpdate.newVersionLbl': return 'New Version';
			case 'appUpdate.updateNowBtnTxt': return 'Update Now';
			case 'appUpdate.laterBtnTxt': return 'Later';
			case 'appUpdate.ignoreBtnTxt': return 'Ignore';
			case 'tray.dashboard': return 'Dashboard';
			case 'tray.quit': return 'Quit';
			case 'tray.open': return 'Open';
			case 'tray.status.connect': return 'Connect';
			case 'tray.status.connecting': return 'Connecting';
			case 'tray.status.disconnect': return 'Disconnect';
			case 'tray.status.disconnecting': return 'Disconnecting';
			case 'failure.unexpected': return 'Unexpected Error';
			case 'failure.clash.unexpected': return 'Unexpected Error';
			case 'failure.clash.core': return ({required Object reason}) => 'Clash Error ${reason}';
			case 'failure.singbox.unexpected': return 'Unexpected Service Error';
			case 'failure.singbox.serviceNotRunning': return 'Service is Not Running';
			case 'failure.singbox.missingPrivilege': return 'Missing Privilege';
			case 'failure.singbox.missingPrivilegeMsg': return 'VPN Mode Requires Administrator Privileges. Either relaunch the app as administrator or change service mode.';
			case 'failure.singbox.missingGeoAssets': return 'Missing Geo Assets';
			case 'failure.singbox.missingGeoAssetsMsg': return 'Geo Assets Are Missing. Consider changing active asset or download selected one in the settings.';
			case 'failure.singbox.invalidConfigOptions': return 'Invalid Configuration Options';
			case 'failure.singbox.invalidConfig': return 'Invalid Configuration';
			case 'failure.singbox.create': return 'Service Creation Error';
			case 'failure.singbox.start': return 'Service Startup Error';
			case 'failure.connectivity.unexpected': return 'Unexpected Failure';
			case 'failure.connectivity.missingVpnPermission': return 'Missing VPN Permission';
			case 'failure.connectivity.missingNotificationPermission': return 'Missing Notification Permission';
			case 'failure.connectivity.core': return 'Core Error';
			case 'failure.profiles.unexpected': return 'Unexpected Error';
			case 'failure.profiles.notFound': return 'Profile Not Found';
			case 'failure.profiles.invalidConfig': return 'Invalid Configs';
			case 'failure.profiles.invalidUrl': return 'Invalid URL';
			case 'failure.connection.unexpected': return 'Unexpected Connection Error';
			case 'failure.connection.timeout': return 'Connection Timeout';
			case 'failure.connection.badResponse': return 'Bad Response';
			case 'failure.connection.connectionError': return 'Connection Error';
			case 'failure.connection.badCertificate': return 'Bad Certificate';
			case 'failure.geoAssets.unexpected': return 'Unexpected Error';
			case 'failure.geoAssets.notUpdate': return 'No Update Available';
			case 'failure.geoAssets.activeNotFound': return 'Active Geo Asset Not Found';
			case 'play.title': return 'Hiddify (Preview)';
			case 'play.short_description': return 'Auto, SSH, VLESS, VMess, Trojan, Reality, Sing-Box, Clash, XRay, Shadowsocks';
			case 'play.full_description': return 'The key goal of Hiddify is to provide a secure, user-friendly and efficient tunneling client. It enables you to route all traffic or selected app traffic to a remote server of your choose, utilizing VPN-Service permission.\n\nNote: We do not provide any server; users are required to ensure their online activities stay private by using use their own self-hosted server or trusted servers. \n \nWe Support Servers With:\n- Normal V2Ray/XRay Subscription Link\n- Clash Subscription Link\n- Sing-Box Subscription Link\n\nWhat is our unique features?\n - User Friendly\n - Optimized and Fast\n - Automatically select LowestPing \n - Show user usage information\n - Easily import sublink by one click using deeplinking \n - Free and No ADS\n - Easily switch user sublinks\n - More and more\n\nSupport:\n- All Protocols Supported by Sing-Box \n- VLESS + XTLS Reality, Vision\n- VMess\n- Trojan\n- ShoadowSocks\n- Reality\n- WireGuard\n- V2Ray\n- Hysteria2\n- TUICv5\n- SSH\n- ShadowTLS\n\n\nThe source code exist in https://github.com/hiddify/Hiddify-Next\nThe application core is based on open-source Sing-Box.\n\nPermission Description:\n- VPN Service: As the goal of this application is to provide a secure, user-friendly and efficient tunneling client, we need this permission to be able to route the traffic via tunnel to the remote server. \n- QUERY ALL PACKAGES: This permission is used to allow users to include or exclude specific applications for tunneling.\n- RECEIVE BOOT COMPLETED: This permission can be enabled or disabled from app settings to activate this application upon device boot.\n- POST NOTIFICATIONS: This permission is essential as we employ a foreground service to ensure the continuous operation of the VPN service.\n- This application is free from advertisements. The analytics and crash data only occurs with the explicit consent of the user in the first use of application.';
			case 'connection.tapToConnect': return 'Tap To Connect';
			case 'connection.connecting': return 'Connecting';
			case 'connection.disconnecting': return 'Disconnecting';
			case 'connection.connected': return 'Connected';
			case 'connection.reconnect': return 'Reconnect';
			case 'connection.connectAnyWay': return 'Connect';
			case 'connection.experimentalNotice': return 'Experimental Features In Use';
			case 'connection.experimentalNoticeMsg': return 'You\'ve enabled some experimental features which might affect connection quality and cause unexpected errors. You can always change or reset these options from Config options page.';
			case 'connection.disableExperimentalNotice': return 'Don\'t Show Again';
			case 'connection.reconnectMsg': return 'Reconnect for Changes to Take Effect';
			case 'config.resetBtn': return 'Reset Options';
			case 'config.serviceMode': return 'Service Mode';
			case 'config.quickSettings': return 'Quick Settings';
			case 'config.setupWarp': return 'Setup WARP';
			case 'config.allOptions': return 'All Config Options';
			case 'config.serviceModes.proxy': return 'Proxy Service Only';
			case 'config.serviceModes.systemProxy': return 'Set System Proxy';
			case 'config.serviceModes.tun': return 'VPN';
			case 'config.serviceModes.tunService': return 'VPN Service';
			case 'config.shortServiceModes.proxy': return 'Proxy';
			case 'config.shortServiceModes.systemProxy': return 'System Proxy';
			case 'config.shortServiceModes.tun': return 'VPN';
			case 'config.shortServiceModes.tunService': return 'VPN Service';
			case 'config.section.route': return 'Route Options';
			case 'config.section.dns': return 'DNS Options';
			case 'config.section.inbound': return 'Inbound Options';
			case 'config.section.mux': return 'MultiPlexer';
			case 'config.section.outbound': return 'Outbound Options';
			case 'config.section.tlsTricks': return 'TLS Tricks';
			case 'config.section.warp': return 'WARP Options';
			case 'config.section.misc': return 'Misc Options';
			case 'config.warpConsent.title': return 'Cloudflare WARP Consent';
			case 'config.warpConsent.description': return ({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
				const TextSpan(text: 'Cloudflare WARP is a Free WireGuard VPN Provider. By enabling this option you are agreeing to the Cloudflare WARP\'s '),
				tos('Terms of Service'),
				const TextSpan(text: ' and '),
				privacy('Privacy Policy'),
				const TextSpan(text: '.'),
			]);
			case 'config.generateWarpConfig': return 'Generate WARP Config';
			case 'config.missingWarpConfig': return 'Missing WARP Config';
			case 'config.warpConfigGenerated': return 'WARP Config Generated';
			case 'config.pageTitle': return 'Config Options';
			case 'config.logLevel': return 'Log Level';
			case 'config.resolveDestination': return 'Resolve Destination';
			case 'config.ipv6Mode': return 'IPv6 Route';
			case 'config.ipv6Modes.disable': return 'Disable';
			case 'config.ipv6Modes.enable': return 'Enable';
			case 'config.ipv6Modes.prefer': return 'Preferred';
			case 'config.ipv6Modes.only': return 'Exclusive';
			case 'config.remoteDnsAddress': return 'Remote DNS';
			case 'config.remoteDnsDomainStrategy': return 'Remote DNS Domain Strategy';
			case 'config.directDnsAddress': return 'Direct DNS';
			case 'config.directDnsDomainStrategy': return 'Direct DNS Domain Strategy';
			case 'config.mixedPort': return 'Mixed Port';
			case 'config.tproxyPort': return 'Transparent Proxy Port';
			case 'config.localDnsPort': return 'Local DNS Port';
			case 'config.allowConnectionFromLan': return 'Share VPN in Local Network';
			case 'config.tunImplementation': return 'TUN Implementation';
			case 'config.mtu': return 'MTU';
			case 'config.connectionTestUrl': return 'Connection Test URL';
			case 'config.urlTestInterval': return 'URL Test Interval';
			case 'config.enableClashApi': return 'Enable Clash API';
			case 'config.clashApiPort': return 'Clash API Port';
			case 'config.enableTun': return 'Enable TUN';
			case 'config.setSystemProxy': return 'Set System Proxy';
			case 'config.enableDnsRouting': return 'Enable DNS Routing';
			case 'config.enableFakeDns': return 'Enable Fake DNS';
			case 'config.bypassLan': return 'Bypass Lan';
			case 'config.strictRoute': return 'Strict Route';
			case 'config.enableTlsFragment': return 'Enable TLS Fragment';
			case 'config.tlsFragmentSize': return 'TLS Fragment Size';
			case 'config.tlsFragmentSleep': return 'TLS Fragment Sleep';
			case 'config.enableTlsMixedSniCase': return 'Enable TLS Mixed SNI Case';
			case 'config.enableTlsPadding': return 'Enable TLS Padding';
			case 'config.tlsPaddingSize': return 'TLS Padding';
			case 'config.enableMux': return 'Enable Mux';
			case 'config.muxProtocol': return 'Mux Protocol';
			case 'config.muxMaxStreams': return 'Max Concurrent Streams';
			case 'config.enableWarp': return 'Enable WARP';
			case 'config.warpDetourMode': return 'Detour Mode';
			case 'config.warpDetourModes.proxyOverWarp': return 'Detour Proxies Through WARP';
			case 'config.warpDetourModes.warpOverProxy': return 'Detour WARP Through Proxies';
			case 'config.warpDetourModes.inbound': return 'Detour WARP Through Proxies';
			case 'config.warpDetourModes.outbound': return 'Detour Proxies Through WARP';
			case 'config.warpLicenseKey': return 'License Key';
			case 'config.warpCleanIp': return 'Clean IP';
			case 'config.warpPort': return 'Port';
			case 'config.warpNoise': return 'Noise Count';
			case 'config.warpNoiseDelay': return 'Noise Delay';
			case 'subscribe.pageTitle': return 'Subscribe';
			case 'subscribe.buyNow': return 'Buy Now';
			case 'subscribe.createOrder': return 'Create Order';
			case 'subscribe.subscribeNow': return 'Subscribe Now';
			case 'center.pageTitle': return 'Profile';
			case 'center.changePassword': return 'Change Password';
			case 'center.myOrder': return 'My Order';
			case 'center.inviteReward': return 'Invite Reward';
			case 'center.logout': return 'Logout';
			case 'center.mySubscribe': return 'My Subscribe';
			case 'center.mySubscribeWithName': return ({required Object name}) => 'My Subscribe: ${name}';
			case 'center.noSubscribe': return 'No Subscription';
			case 'center.expired': return 'Subscription expired, please renew';
			case 'center.remainingDays': return ({required Object days}) => 'Remaining days: ${days}';
			case 'center.usedTraffic': return ({required Object used, required Object total}) => 'Used: ${used} / Total: ${total} GB';
			case 'center.oldPassword': return 'Old Password';
			case 'center.newPassword': return 'New Password';
			case 'center.cancel': return 'Cancel';
			case 'center.confirm': return 'Confirm';
			case 'knowledge.pageTitle': return 'Documentation';
			case 'knowledge.noData': return 'No Documentation Available';
			case 'order.pageTitle': return 'Order List';
			case 'order.noOrder': return 'No Orders';
			case 'order.detail.pageTitle': return 'Order Details';
			case 'order.detail.status.pending': return 'Pending Payment';
			case 'order.detail.status.processing': return 'Processing';
			case 'order.detail.status.cancelled': return 'Cancelled';
			case 'order.detail.status.completed': return 'Completed';
			case 'order.detail.status.refunded': return 'Refunded';
			case 'order.detail.product': return ({required Object name}) => 'Product: ${name}';
			case 'order.detail.price': return ({required Object amount}) => 'Price: ${amount}';
			case 'order.detail.orderNumber': return ({required Object number}) => 'Order No.: ${number}';
			case 'order.detail.createTime': return ({required Object time}) => 'Created: ${time}';
			case 'order.action.cancel': return 'Cancel Order';
			case 'order.action.pay': return 'Pay Now';
			case 'invite.pageTitle': return 'Invite';
			case 'invite.totalCommission': return 'Total Commission';
			case 'invite.registeredUsers': return 'Registered Users';
			case 'invite.commissionRate': return 'Commission Rate';
			case 'invite.pendingCommission': return 'Pending Commission';
			case 'invite.inviteCode': return 'Invite Code';
			case 'invite.generateInviteCode': return 'Generate Code';
			case 'notice.pageTitle': return 'Notice';
			case 'login.title.register': return 'Create Account';
			case 'login.title.login': return 'Welcome Back';
			case 'login.email.label': return 'Email';
			case 'login.email.hint': return 'Enter your email address';
			case 'login.password.label': return 'Password';
			case 'login.password.hint.register': return 'Set your password';
			case 'login.password.hint.login': return 'Enter your password';
			case 'login.inviteCode.label': return 'Invite Code';
			case 'login.inviteCode.hint': return 'Optional';
			case 'login.emailCode.label': return 'Email Code';
			case 'login.emailCode.hint': return 'Enter verification code';
			case 'login.emailCode.send': return 'Get Code';
			case 'login.action.register': return 'Register';
			case 'login.action.login': return 'Login';
			case 'login.action.forgotPassword': return 'Forgot Password?';
			case 'login.action.switchToLogin': return 'Have an account? Login';
			case 'login.action.switchToRegister': return 'No account? Register';
			case 'login.orLoginWith': return 'Or login with';
			case 'forgotPassword.pageTitle': return 'Forgot Password';
			case 'forgotPassword.resetPassword': return 'Reset Password';
			case 'forgotPassword.subTitle': return 'Please enter your registered email address, we will send you a verification code to help you reset your password';
			case 'forgotPassword.email.label': return 'Email';
			case 'forgotPassword.email.hint': return 'Enter your email address';
			case 'forgotPassword.emailCode.label': return 'Email Code';
			case 'forgotPassword.emailCode.hint': return 'Enter verification code';
			case 'forgotPassword.emailCode.send': return 'Get Code';
			case 'forgotPassword.newPassword.label': return 'New Password';
			case 'forgotPassword.newPassword.hint': return 'Enter new password';
			case 'forgotPassword.confirmPassword.label': return 'Confirm Password';
			case 'forgotPassword.confirmPassword.hint': return 'Enter new password again';
			case 'forgotPassword.action.send': return 'Send';
			case 'forgotPassword.action.switchToLogin': return 'Have an account? Login';
			case 'update.title': return 'Update Available';
			case 'update.message': return 'A new version is available. Please update your app.';
			case 'update.action.update': return 'Update';
			case 'update.action.later': return 'Later';
			case 'error.title': return 'Error';
			case 'error.field.email': return 'Email';
			case 'error.field.password': return 'Password';
			default: return null;
		}
	}
}

extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'Hiddify';
			case 'general.reset': return 'Renicio';
			case 'general.toggle.enabled': return 'Activado';
			case 'general.toggle.disabled': return 'Desactivado';
			case 'general.state.disable': return 'Desactivar';
			case 'general.sort': return 'Clasificar';
			case 'general.sortBy': return 'Ordenar por';
			case 'general.addToClipboard': return 'Añadir al portapapeles';
			case 'general.notSet': return 'No establecido';
			case 'general.agree': return 'Aceptar';
			case 'general.decline': return 'Rechazar';
			case 'general.unknown': return 'Desconocido';
			case 'general.timeout': return 'Se acabó el tiempo';
			case 'intro.termsAndPolicyCaution': return ({required InlineSpanBuilder tap}) => TextSpan(children: [
				const TextSpan(text: 'al continuar, aceptas '),
				tap(_root.about.termsAndConditions),
			]);
			case 'intro.start': return 'Comenzar';
			case 'home.pageTitle': return 'Hogar';
			case 'home.emptyProfilesMsg': return 'Comience agregando un perfil de suscripción';
			case 'home.noActiveProfileMsg': return 'Elige un perfil';
			case 'profile.overviewPageTitle': return 'Perfiles';
			case 'profile.detailsPageTitle': return 'Perfil';
			case 'profile.activeProfileNameSemanticLabel': return ({required Object name}) => 'Nombre del perfil activo: "${name}".';
			case 'profile.activeProfileBtnSemanticLabel': return 'Ver todos los perfiles';
			case 'profile.nonActiveProfileBtnSemanticLabel': return ({required Object name}) => 'Seleccione "${name}" como perfil activo.';
			case 'profile.subscription.traffic': return 'Tráfico';
			case 'profile.subscription.updatedTimeAgo': return ({required Object timeago}) => 'Actualizado ${timeago}';
			case 'profile.subscription.remainingDuration': return ({required Object duration}) => '${duration} días restantes';
			case 'profile.subscription.remainingTrafficSemanticLabel': return ({required Object consumed, required Object total}) => '${consumed} de ${total} Tráfico Consumido';
			case 'profile.subscription.expired': return 'Caducado';
			case 'profile.subscription.noTraffic': return 'Fuera de cuota';
			case 'profile.sortBy.lastUpdate': return 'Recientemente actualizado';
			case 'profile.sortBy.name': return 'Alfabéticamente';
			case 'profile.add.buttonText': return 'Nuevo perfil';
			case 'profile.add.shortBtnTxt': return 'Nuevo perfil';
			case 'profile.add.fromClipboard': return 'Agregar desde el portapapeles';
			case 'profile.add.scanQr': return 'Escanear código QR';
			case 'profile.add.qrScanner.permissionDeniedError': return 'Permiso Denegado';
			case 'profile.add.qrScanner.unexpectedError': return 'Algo salió mal';
			case 'profile.add.qrScanner.torchSemanticLabel': return 'Linterna';
			case 'profile.add.qrScanner.facingSemanticLabel': return 'Frente a la cámara';
			case 'profile.add.manually': return 'Entrada manual';
			case 'profile.add.addingProfileMsg': return 'Agregar perfil';
			case 'profile.add.failureMsg': return 'No se pudo agregar el perfil';
			case 'profile.update.buttonTxt': return 'Actualizar';
			case 'profile.update.tooltip': return 'Actualización del perfil';
			case 'profile.update.updateSubscriptions': return 'Actualizar suscripciones';
			case 'profile.update.failureMsg': return 'No se pudo actualizar el perfil';
			case 'profile.update.successMsg': return 'Perfil actualizado con éxito';
			case 'profile.update.namedFailureMsg': return ({required Object name}) => 'No se pudo actualizar "${name}"';
			case 'profile.update.namedSuccessMsg': return ({required Object name}) => '"${name}" actualizado exitosamente';
			case 'profile.share.buttonText': return 'Compartir';
			case 'profile.share.exportToClipboardSuccess': return 'Exportado al portapapeles';
			case 'profile.share.exportSubLinkToClipboard': return 'Exportar enlace de suscripción al portapapeles';
			case 'profile.share.subLinkQrCode': return 'Código QR del enlace de suscripción';
			case 'profile.share.exportConfigToClipboard': return 'Exportar configuración al portapapeles';
			case 'profile.share.exportConfigToClipboardSuccess': return 'Configuración copiada al portapapeles';
			case 'profile.edit.buttonTxt': return 'Editar';
			case 'profile.edit.selectActiveTxt': return 'Seleccionar perfil activo';
			case 'profile.delete.buttonTxt': return 'Borrar';
			case 'profile.delete.confirmationMsg': return '¿Eliminar perfil permanentemente?';
			case 'profile.delete.successMsg': return 'Perfil eliminado exitosamente';
			case 'profile.save.buttonText': return 'Ahorrar';
			case 'profile.save.successMsg': return 'Perfil guardado exitosamente';
			case 'profile.save.failureMsg': return 'No se pudo guardar el perfil';
			case 'profile.detailsForm.nameLabel': return 'Nombre';
			case 'profile.detailsForm.nameHint': return 'Nombre de perfil';
			case 'profile.detailsForm.urlLabel': return 'URL';
			case 'profile.detailsForm.urlHint': return 'URL de configuración completa';
			case 'profile.detailsForm.emptyNameMsg': return 'Se requiere el nombre';
			case 'profile.detailsForm.invalidUrlMsg': return 'URL invalida';
			case 'profile.detailsForm.lastUpdate': return 'Última actualización';
			case 'profile.detailsForm.updateInterval': return 'Actualización automática';
			case 'profile.detailsForm.updateIntervalDialogTitle': return 'Intervalo de actualización automática (en horas)';
			case 'proxies.pageTitle': return 'Proxies';
			case 'proxies.emptyProxiesMsg': return 'No proxies disponibles';
			case 'proxies.delayTestTooltip': return 'Prueba de Restraso';
			case 'proxies.sortTooltip': return 'Ordenar Proxies';
			case 'proxies.sortOptions.unsorted': return 'Por Defecto';
			case 'proxies.sortOptions.name': return 'Alfabéticamente';
			case 'proxies.sortOptions.delay': return 'Por retraso';
			case 'logs.pageTitle': return 'Registros';
			case 'logs.filterHint': return 'Filtrar';
			case 'logs.allLevelsFilter': return 'Todo';
			case 'logs.shareCoreLogs': return 'Compartir registros principales';
			case 'logs.shareAppLogs': return 'Compartir registros de aplicaciones';
			case 'logs.pauseTooltip': return 'Pausa';
			case 'logs.resumeTooltip': return 'reanudar';
			case 'logs.clearTooltip': return 'Claro';
			case 'settings.pageTitle': return 'Ajustes';
			case 'settings.requiresRestartMsg': return 'Para que esto surta efecto, reinicie la aplicación.';
			case 'settings.experimental': return 'Experimental';
			case 'settings.experimentalMsg': return 'Las funciones con el indicador Experimental aún están en desarrollo y pueden causar problemas.';
			case 'settings.general.sectionTitle': return 'General';
			case 'settings.general.locale': return 'Idioma';
			case 'settings.general.region': return 'Región';
			case 'settings.general.regionMsg': return 'Ayuda a configurar opciones predeterminadas para omitir direcciones nacionales';
			case 'settings.general.regions.ir': return 'Irán (ir)';
			case 'settings.general.regions.cn': return 'China (CN)';
			case 'settings.general.regions.ru': return 'Rusia (ru)';
			case 'settings.general.regions.af': return 'Afganistán (af)';
			case 'settings.general.regions.other': return 'Otro';
			case 'settings.general.themeMode': return 'Modo temático';
			case 'settings.general.themeModes.system': return 'Seguir el tema del sistema';
			case 'settings.general.themeModes.dark': return 'Modo Oscuro';
			case 'settings.general.themeModes.light': return 'Modo Claro';
			case 'settings.general.themeModes.black': return 'Modo Negro';
			case 'settings.general.enableAnalytics': return 'Habilitar análisis';
			case 'settings.general.enableAnalyticsMsg': return 'Dar permiso para recopilar análisis y enviar informes de fallos para mejorar la aplicación.';
			case 'settings.general.autoStart': return 'Inicie en el arranque';
			case 'settings.general.silentStart': return 'Inicio Silencioso';
			case 'settings.general.openWorkingDir': return 'Abrir directorio de trabajo';
			case 'settings.general.ignoreBatteryOptimizations': return 'Deshabilitar la optimización de la batería';
			case 'settings.general.ignoreBatteryOptimizationsMsg': return 'Elimine las restricciones para un rendimiento VPN óptimo';
			case 'settings.general.dynamicNotification': return 'Mostrar velocidad en la notificación';
			case 'settings.advanced.sectionTitle': return 'Avanzado';
			case 'settings.advanced.debugMode': return 'Modo de depuración';
			case 'settings.advanced.debugModeMsg': return 'Reinicie la aplicación para aplicar este cambio.';
			case 'settings.advanced.memoryLimit': return 'Limite de memoria';
			case 'settings.advanced.memoryLimitMsg': return 'Habilítelo si experimenta errores de falta de memoria o fallas frecuentes de la aplicación';
			case 'settings.advanced.resetTunnel': return 'Restablecer perfil VPN';
			case 'settings.network.perAppProxyPageTitle': return 'Proxy por aplicación';
			case 'settings.network.perAppProxyModes.off': return 'Todo';
			case 'settings.network.perAppProxyModes.offMsg': return 'Proxy en todas las aplicaciones';
			case 'settings.network.perAppProxyModes.include': return 'Proxy';
			case 'settings.network.perAppProxyModes.includeMsg': return 'Proxy solo en aplicaciones seleccionadas';
			case 'settings.network.perAppProxyModes.exclude': return 'Bypass';
			case 'settings.network.perAppProxyModes.excludeMsg': return 'No hacer proxy de aplicaciones seleccionadas';
			case 'settings.network.showSystemApps': return 'Mostrar aplicaciones del sistema';
			case 'settings.network.hideSystemApps': return 'Ocultar aplicaciones del sistema';
			case 'settings.network.clearSelection': return 'Selección clara';
			case 'settings.geoAssets.pageTitle': return 'Activos de enrutamiento';
			case 'settings.geoAssets.geoip': return 'GeoIP';
			case 'settings.geoAssets.geosite': return 'Geosite';
			case 'settings.geoAssets.version': return ({required Object version}) => 'Versión ${version}';
			case 'settings.geoAssets.fileMissing': return 'Archivo faltante';
			case 'settings.geoAssets.update': return 'Actualizar';
			case 'settings.geoAssets.download': return 'Descargar';
			case 'settings.geoAssets.failureMsg': return 'No se pudo actualizar el activo';
			case 'settings.geoAssets.successMsg': return 'Activo actualizado correctamente';
			case 'settings.geoAssets.addRecommended': return 'Agregar activos recomendados';
			case 'settings.geoAssets.missingGeoAssetsMsg': return 'Faltan los archivos de los recursos de enrutamiento seleccionados. Descárgalos o elige los existentes.';
			case 'about.pageTitle': return 'Acerca de';
			case 'about.version': return 'Versión';
			case 'about.sourceCode': return 'Código fuente';
			case 'about.telegramChannel': return 'Canal de telegramas';
			case 'about.checkForUpdate': return 'Buscar actualizaciones';
			case 'about.privacyPolicy': return 'Política de privacidad';
			case 'about.termsAndConditions': return 'Términos y condiciones';
			case 'appUpdate.notAvailableMsg': return 'Ya estas usando la última versión.';
			case 'appUpdate.dialogTitle': return 'Actualización disponible';
			case 'appUpdate.updateMsg': return 'Hay disponible una nueva versión de ${_root.general.appTitle}. ¿Te gustaría actualizar ahora?';
			case 'appUpdate.currentVersionLbl': return 'Versión actual';
			case 'appUpdate.newVersionLbl': return 'Nueva versión';
			case 'appUpdate.updateNowBtnTxt': return 'Actualizar ahora';
			case 'appUpdate.laterBtnTxt': return 'Más tarde';
			case 'appUpdate.ignoreBtnTxt': return 'Ignorar';
			case 'tray.dashboard': return 'Panel';
			case 'tray.quit': return 'Abandonar';
			case 'tray.open': return 'Abierto';
			case 'tray.status.connect': return 'Conectar';
			case 'tray.status.connecting': return 'Conectando';
			case 'tray.status.disconnect': return 'Desconectado';
			case 'tray.status.disconnecting': return 'Desconectando';
			case 'failure.unexpected': return 'Error inesperado';
			case 'failure.clash.unexpected': return 'Error inesperado';
			case 'failure.clash.core': return ({required Object reason}) => 'Error de choque ${reason}';
			case 'failure.singbox.unexpected': return 'Error de servicio inesperado';
			case 'failure.singbox.serviceNotRunning': return 'El servicio no está funcionando';
			case 'failure.singbox.missingPrivilege': return 'Privilegio perdido';
			case 'failure.singbox.missingPrivilegeMsg': return 'El modo VPN requiere privilegios de administrador. Reinicie la aplicación como administrador o cambie el modo de servicio.';
			case 'failure.singbox.missingGeoAssets': return 'Recursos geográficos faltantes';
			case 'failure.singbox.missingGeoAssetsMsg': return 'Faltan recursos geográficos. considere cambiar el activo activo o descargar uno seleccionado en la configuración.';
			case 'failure.singbox.invalidConfigOptions': return 'Opciones de configuración no válidas';
			case 'failure.singbox.invalidConfig': return 'Configuración no válida';
			case 'failure.singbox.create': return 'Error de creación del servicio';
			case 'failure.singbox.start': return 'Error de inicio del servicio';
			case 'failure.connectivity.unexpected': return 'Falla inesperada';
			case 'failure.connectivity.missingVpnPermission': return 'Permiso VPN faltante';
			case 'failure.connectivity.missingNotificationPermission': return 'Permiso de notificación faltante';
			case 'failure.connectivity.core': return 'Error central';
			case 'failure.profiles.unexpected': return 'Error Inesperado';
			case 'failure.profiles.notFound': return 'Perfil no encontrado';
			case 'failure.profiles.invalidConfig': return 'Configuracion Invalida';
			case 'failure.profiles.invalidUrl': return 'URL Invalido';
			case 'failure.connection.unexpected': return 'Error de conexión inesperado';
			case 'failure.connection.timeout': return 'El tiempo de conexión expiro';
			case 'failure.connection.badResponse': return 'Mala respuesta';
			case 'failure.connection.connectionError': return 'Error de conexión';
			case 'failure.connection.badCertificate': return 'Certificado malo';
			case 'failure.geoAssets.unexpected': return 'Error inesperado';
			case 'failure.geoAssets.notUpdate': return 'Actualización no disponible';
			case 'failure.geoAssets.activeNotFound': return 'Activo geográfico activo no encontrado';
			case 'play.title': return 'Hiddify Next (vista previa)';
			case 'play.short_description': return 'Auto, SSH, VLESS, VMess, Trojan, Reality, Sing-Box, Clash, XRay, Shadowsocks';
			case 'play.full_description': return 'El objetivo clave de HiddifyNext es proporcionar un cliente de túnel seguro, fácil de usar y eficiente. Le permite enrutar todo el tráfico o el tráfico de aplicaciones seleccionadas a un servidor remoto de su elección, utilizando el permiso del servicio VPN.Nota: No proporcionamos ningún servidor; Los usuarios deben garantizar que sus actividades en línea permanezcan privadas mediante el uso de su propio servidor autohospedado o servidores confiables. Soportamos servidores con:- Enlace de suscripción normal a V2ray/Xray- Enlace de suscripción a Choque- Enlace de suscripción a Sing-Box¿Cuáles son nuestras características únicas? - Fácil de usar - Optimizado y Rápido - Seleccionar automáticamente LowestPing - Mostrar información de uso del usuario. - Importe fácilmente un subvínculo con un solo clic mediante enlaces profundos - Gratis y sin anuncios - Cambie fácilmente los subvínculos de usuario - más y másApoyo:- Todos los protocolos soportados por Sing-Box- VLESS + xtls realidad, visión- VMESS- troyano- Calcetines Shoadow- Realidad-V2ray-Histria2-TUIC-SSH- SombraTLSEl código fuente existe en https://github.com/hiddify/Hiddify-NextEl núcleo de la aplicación se basa en sing-box de código abierto.Descripción del permiso:- Servicio VPN: como el objetivo de esta aplicación es proporcionar un cliente de túnel seguro, fácil de usar y eficiente, necesitamos este permiso para poder enrutar el tráfico a través del túnel al servidor remoto.- CONSULTAR TODOS LOS PAQUETES: este permiso se utiliza para permitir a los usuarios incluir o excluir aplicaciones específicas para la tunelización.- RECIBIR ARRANQUE COMPLETADO: este permiso se puede habilitar o deshabilitar desde la configuración de la aplicación para activar esta aplicación al iniciar el dispositivo.- PUBLICAR NOTIFICACIONES: este permiso es esencial ya que empleamos un servicio en primer plano para garantizar el funcionamiento continuo del servicio VPN.- Esta aplicación está libre de publicidad. Los datos analíticos y de fallos solo se producen con el consentimiento explícito del usuario en el primer uso de la aplicación.';
			case 'connection.tapToConnect': return 'Toque para conectarse';
			case 'connection.connecting': return 'Conectando';
			case 'connection.disconnecting': return 'Desconectando';
			case 'connection.connected': return 'Conectado';
			case 'connection.experimentalNotice': return 'Funciones experimentales en uso';
			case 'connection.experimentalNoticeMsg': return 'Ha habilitado algunas funciones experimentales que podrían afectar la calidad de la conexión y provocar errores inesperados. Siempre puede cambiar o restablecer estas opciones desde la página de opciones de configuración.';
			case 'connection.disableExperimentalNotice': return 'No volver a mostrar';
			case 'config.resetBtn': return 'Restablecer opciones';
			case 'config.serviceMode': return 'Modo de servicio';
			case 'config.serviceModes.proxy': return 'Proxy';
			case 'config.serviceModes.systemProxy': return 'Sistema Proxy';
			case 'config.serviceModes.tun': return 'VPN';
			case 'config.section.route': return 'Opciones de ruta';
			case 'config.section.dns': return 'Opciones de DNS';
			case 'config.section.inbound': return 'Opciones entrantes';
			case 'config.section.mux': return 'Multiplexer';
			case 'config.section.outbound': return 'Opciones de salida';
			case 'config.section.tlsTricks': return 'Trucos TLS';
			case 'config.section.warp': return 'WARP Options';
			case 'config.section.misc': return 'Opciones varias';
			case 'config.warpConsent.title': return 'Consentimiento WARP de Cloudflare';
			case 'config.warpConsent.description': return ({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
				const TextSpan(text: 'Cloudflare WARP es un proveedor de VPN WireGuard gratuito. Al habilitar esta opción, acepta los '),
				tos('Términos de servicio'),
				const TextSpan(text: ' y '),
				privacy('Política de privacidad'),
				const TextSpan(text: ' de Cloudflare WARP.'),
			]);
			case 'config.pageTitle': return 'Opciones de configuración';
			case 'config.logLevel': return 'Registro del Nivel';
			case 'config.resolveDestination': return 'Resolver Destino';
			case 'config.ipv6Mode': return 'Ruta IPv6';
			case 'config.ipv6Modes.disable': return 'Desactivar';
			case 'config.ipv6Modes.enable': return 'Activar';
			case 'config.ipv6Modes.prefer': return 'Preferido';
			case 'config.ipv6Modes.only': return 'Exclusivo';
			case 'config.remoteDnsAddress': return 'DNS Remoto';
			case 'config.remoteDnsDomainStrategy': return 'Estrategia de dominio DNS remoto';
			case 'config.directDnsAddress': return 'DNS Directo';
			case 'config.directDnsDomainStrategy': return 'Estrategia de dominio DNS directo';
			case 'config.mixedPort': return 'Puerto Mixto';
			case 'config.localDnsPort': return 'Puerto DNS local';
			case 'config.allowConnectionFromLan': return 'Permitir conexión desde LAN';
			case 'config.tunImplementation': return 'Implementación de TUN';
			case 'config.mtu': return 'MTU';
			case 'config.connectionTestUrl': return 'URL de prueba de conexión';
			case 'config.urlTestInterval': return 'URL Prueba de Intervalo';
			case 'config.enableClashApi': return 'Habilitar API de choque';
			case 'config.clashApiPort': return 'Puerto API de choque';
			case 'config.enableTun': return 'Habilitar sintonización';
			case 'config.setSystemProxy': return 'Establecer proxy del sistema';
			case 'config.enableDnsRouting': return 'Habilitar enrutamiento DNS';
			case 'config.enableFakeDns': return 'Habilitar DNS falso';
			case 'config.bypassLan': return 'Omitir LAN';
			case 'config.strictRoute': return 'Ruta estricta';
			case 'config.enableTlsFragment': return 'Habilitar fragmento TLS';
			case 'config.tlsFragmentSize': return 'Tamaño del fragmento TLS';
			case 'config.tlsFragmentSleep': return 'Sueño de fragmento TLS';
			case 'config.enableTlsMixedSniCase': return 'Habilitar caso SNI mixto TLS';
			case 'config.enableTlsPadding': return 'Habilitar el relleno TLS';
			case 'config.tlsPaddingSize': return 'Relleno TLS';
			case 'config.enableMux': return 'Enable Mux';
			case 'config.muxProtocol': return 'Mux Protocol';
			case 'config.muxMaxStreams': return 'Max Concurrent Streams';
			case 'config.enableWarp': return 'Enable WARP';
			case 'config.warpDetourMode': return 'Detour Mode';
			case 'config.warpDetourModes.inbound': return 'Detour WARP through proxies';
			case 'config.warpDetourModes.outbound': return 'Detour proxies through WARP';
			case 'config.warpLicenseKey': return 'License Key';
			case 'config.warpCleanIp': return 'Clean IP';
			case 'config.warpPort': return 'Port';
			case 'config.warpNoise': return 'Noise';
			default: return null;
		}
	}
}

extension on TranslationsFa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'هیدیفای';
			case 'general.reset': return 'بازنشانی';
			case 'general.toggle.enabled': return 'فعال';
			case 'general.toggle.disabled': return 'غیرفعال';
			case 'general.state.disable': return 'غیرفعال';
			case 'general.sort': return 'مرتب‌سازی';
			case 'general.sortBy': return 'مرتب‌سازی براساس';
			case 'general.addToClipboard': return 'افزودن به کلیپ‌بورد';
			case 'general.notSet': return 'تنظیم نشده است';
			case 'general.agree': return 'پذیرفتن';
			case 'general.decline': return 'صرف‌نظر کردن';
			case 'general.unknown': return 'ناشناخته';
			case 'general.hidden': return 'پنهان';
			case 'general.timeout': return 'عدم ارتباط';
			case 'general.clipboardExportSuccessMsg': return 'به کلیپ‌بورد افزوده شد';
			case 'general.showMore': return 'نمایش بیشتر';
			case 'general.showLess': return 'نمایش کمتر';
			case 'general.openAppSettings': return 'باز کردن تنظیمات برنامه';
			case 'general.grantPermission': return 'اجازه دادن';
			case 'intro.termsAndPolicyCaution': return ({required InlineSpanBuilder tap}) => TextSpan(children: [
				const TextSpan(text: 'در صورت ادامه با '),
				tap(_root.about.termsAndConditions),
				const TextSpan(text: ' موافقت می‌کنید'),
			]);
			case 'intro.start': return 'آغاز';
			case 'home.pageTitle': return 'خانه';
			case 'home.emptyProfilesMsg': return 'با افزودن یک پروفایل اشتراک شروع کنید';
			case 'home.noActiveProfileMsg': return 'یک پروفایل انتخاب کنید';
			case 'stats.traffic': return 'مصرف';
			case 'stats.trafficLive': return 'مصرف لحظه‌ای';
			case 'stats.trafficTotal': return 'مصرف کل';
			case 'stats.uplink': return 'ارسال';
			case 'stats.downlink': return 'دریافت';
			case 'stats.connection': return 'اتصال';
			case 'stats.speed': return 'سرعت';
			case 'stats.totalTransferred': return 'کل تبادل';
			case 'profile.overviewPageTitle': return 'پروفایل‌ها';
			case 'profile.detailsPageTitle': return 'پروفایل';
			case 'profile.activeProfileNameSemanticLabel': return ({required Object name}) => 'نام پروفایل فعال: ${name}';
			case 'profile.activeProfileBtnSemanticLabel': return 'نمایش همه‌ی پروفایل‌ها';
			case 'profile.nonActiveProfileBtnSemanticLabel': return ({required Object name}) => 'انتخاب ${name} به‌عنوان پروفایل فعال';
			case 'profile.subscription.traffic': return 'ترافیک';
			case 'profile.subscription.updatedTimeAgo': return ({required Object timeago}) => '${timeago} به‌روزرسانی شد';
			case 'profile.subscription.remainingDuration': return ({required Object duration}) => '${duration} روز باقی مانده';
			case 'profile.subscription.remainingTrafficSemanticLabel': return ({required Object consumed, required Object total}) => '${consumed} از ${total} ترافیک مصرف شده';
			case 'profile.subscription.expired': return 'منقضی شده';
			case 'profile.subscription.noTraffic': return 'اتمام سهمیه';
			case 'profile.subscription.upload': return 'آپلود';
			case 'profile.subscription.download': return 'دانلود';
			case 'profile.subscription.total': return 'کل ترافیک';
			case 'profile.subscription.expireDate': return 'تاریخ انقضاء';
			case 'profile.sortBy.lastUpdate': return 'اخیراً به‌روز شده';
			case 'profile.sortBy.name': return 'بر اساس نام';
			case 'profile.add.buttonText': return 'افزودن پروفایل جدید';
			case 'profile.add.shortBtnTxt': return 'پروفایل جدید';
			case 'profile.add.fromClipboard': return 'افزودن از کلیپ‌بورد';
			case 'profile.add.scanQr': return 'اسکن کد QR';
			case 'profile.add.qrScanner.permissionDeniedError': return 'دسترسی داده نشد';
			case 'profile.add.qrScanner.unexpectedError': return 'خطایی رخ داده است';
			case 'profile.add.qrScanner.torchSemanticLabel': return 'نور فلاش';
			case 'profile.add.qrScanner.facingSemanticLabel': return 'جهت دوربین';
			case 'profile.add.qrScanner.permissionRequest': return 'دسترسی به دوربین برای اسکن کد QR';
			case 'profile.add.manually': return 'افزودن دستی';
			case 'profile.add.addingProfileMsg': return 'در حال افزودن پروفایل';
			case 'profile.add.failureMsg': return 'افزودن پروفایل ناموفق بود';
			case 'profile.update.buttonTxt': return 'به‌روزرسانی';
			case 'profile.update.tooltip': return 'به‌روزرسانی پروفایل';
			case 'profile.update.updateSubscriptions': return 'به‌روزرسانی اشتراک‌ها';
			case 'profile.update.failureMsg': return 'به‌روزرسانی پروفایل ناموفق بود';
			case 'profile.update.successMsg': return 'پروفایل با موفقیت به‌روزرسانی شد';
			case 'profile.update.namedFailureMsg': return ({required Object name}) => 'به‌روزرسانی "${name}" ناموفق بود';
			case 'profile.update.namedSuccessMsg': return ({required Object name}) => '"${name}" با موفقیت به‌روز شد';
			case 'profile.share.buttonText': return 'اشتراک‌گذاری';
			case 'profile.share.exportToClipboardSuccess': return 'به کلیپ‌بورد اضافه شد';
			case 'profile.share.exportSubLinkToClipboard': return 'صادر کردن لینک اشتراک به کلیپ‌بورد';
			case 'profile.share.subLinkQrCode': return 'کد QR لینک اشتراک';
			case 'profile.share.exportConfigToClipboard': return 'افزودن پیکربندی به کلیپ‌بورد';
			case 'profile.share.exportConfigToClipboardSuccess': return 'پیکربندی در کلیپ‌بورد کپی شد';
			case 'profile.edit.buttonTxt': return 'ویرایش';
			case 'profile.edit.selectActiveTxt': return 'انتخاب پروفایل فعال';
			case 'profile.delete.buttonTxt': return 'حذف';
			case 'profile.delete.confirmationMsg': return 'پروفایل برای همیشه حذف شود؟';
			case 'profile.delete.successMsg': return 'پروفایل با موفقیت حذف شد';
			case 'profile.save.buttonText': return 'ذخیره';
			case 'profile.save.successMsg': return 'پروفایل با موفقیت ذخیره شد';
			case 'profile.save.failureMsg': return 'خطا در ذخیره‌ی پروفایل';
			case 'profile.detailsForm.nameLabel': return 'نام';
			case 'profile.detailsForm.nameHint': return 'نام پروفایل';
			case 'profile.detailsForm.urlLabel': return 'لینک';
			case 'profile.detailsForm.urlHint': return 'لینک کامل پیکربندی';
			case 'profile.detailsForm.emptyNameMsg': return 'نام نمی‌تواند خالی باشد';
			case 'profile.detailsForm.invalidUrlMsg': return 'لینک نامعتبر است';
			case 'profile.detailsForm.lastUpdate': return 'آخرین به‌روزرسانی';
			case 'profile.detailsForm.updateInterval': return 'به‌روزرسانی خودکار';
			case 'profile.detailsForm.updateIntervalDialogTitle': return 'فاصله‌ی زمانی به‌روزرسانی خودکار (ساعت)';
			case 'proxies.pageTitle': return 'پروکسی‌ها';
			case 'proxies.emptyProxiesMsg': return 'هیچ پروکسی موجود نیست';
			case 'proxies.delayTestTooltip': return 'تست تأخیر';
			case 'proxies.sortTooltip': return 'مرتب‌سازی پروکسی‌ها';
			case 'proxies.checkIp': return 'بررسی آی‌پی';
			case 'proxies.unknownIp': return 'آی‌پی ناشناخته';
			case 'proxies.sortOptions.unsorted': return 'پیش‌فرض';
			case 'proxies.sortOptions.name': return 'براساس نام';
			case 'proxies.sortOptions.delay': return 'براساس تأخیر';
			case 'proxies.activeProxySemanticLabel': return 'پروکسی فعال';
			case 'proxies.delaySemantics.result': return ({required Object delay}) => 'تأخیر: ${delay}ms';
			case 'proxies.delaySemantics.timeout': return 'مهلت تست تأخیر به اتمام رسید';
			case 'proxies.delaySemantics.testing': return 'تأخیر: در حال آزمایش...';
			case 'proxies.ipInfoSemantics.address': return 'آدرس آی‌پی';
			case 'proxies.ipInfoSemantics.country': return 'کشور';
			case 'logs.pageTitle': return 'گزارش‌ها';
			case 'logs.filterHint': return 'فیلتر';
			case 'logs.allLevelsFilter': return 'همه';
			case 'logs.shareCoreLogs': return 'اشتراک‌گذاری گزارش‌های هسته';
			case 'logs.shareAppLogs': return 'اشتراک‌گذاری گزارش‌های برنامه';
			case 'logs.pauseTooltip': return 'مکث';
			case 'logs.resumeTooltip': return 'ادامه دادن';
			case 'logs.clearTooltip': return 'پاک‌سازی';
			case 'settings.pageTitle': return 'تنظیمات';
			case 'settings.requiresRestartMsg': return 'برای اعمال این تنظیم، برنامه را دوباره راه‌اندازی کنید';
			case 'settings.experimental': return 'آزمایشی';
			case 'settings.experimentalMsg': return 'تنظیماتی که عنوان آزمایشی دارند، هم‌چنان در دست توسعه هستند و فعال‌سازی آن‌ها می‌تواند باعث بروز مشکلاتی شود. ';
			case 'settings.exportOptions': return 'صادر کردن تنظیمات به کلیپ‌بورد';
			case 'settings.exportAllOptions': return 'صادر کردن تنظیمات به کلیپ‌بورد (اشکال‌زدایی)';
			case 'settings.importOptions': return 'وارد کردن تنظیمات از کلیپ‌بورد';
			case 'settings.importOptionsMsg': return 'این اقدام همه‌ی تنظیمات پیکربندی را با مقادیر اولیه بازنویسی می‌کند. آیا مطمئن هستید؟';
			case 'settings.general.sectionTitle': return 'عمومی';
			case 'settings.general.locale': return 'زبان';
			case 'settings.general.region': return 'منطقه';
			case 'settings.general.regionMsg': return 'به انتخاب تنظیمات پیش‌فرض برای دور زدن آدرس‌های داخلی کمک می‌کند';
			case 'settings.general.regions.ir': return 'ایران (ir)';
			case 'settings.general.regions.cn': return 'چین (cn)';
			case 'settings.general.regions.ru': return 'روسیه (ru)';
			case 'settings.general.regions.af': return 'افغانستان (af)';
			case 'settings.general.regions.other': return 'سایر';
			case 'settings.general.themeMode': return 'حالت پوسته';
			case 'settings.general.themeModes.system': return 'پیروی از پوسته‌ی دستگاه';
			case 'settings.general.themeModes.dark': return 'حالت تیره';
			case 'settings.general.themeModes.light': return 'حالت روشن';
			case 'settings.general.themeModes.black': return 'حالت سیاه';
			case 'settings.general.enableAnalytics': return 'فعال‌سازی تجزیه و تحلیل‌ها';
			case 'settings.general.enableAnalyticsMsg': return 'ارائه‌ی دسترسی جمع‌آوری تجزیه و تحلیل‌ها و ارسال گزارش‌های خطا برای بهبود عملکرد برنامه';
			case 'settings.general.autoStart': return 'راه‌اندازی هنگام شروع سیستم';
			case 'settings.general.silentStart': return 'اجرای ساکت';
			case 'settings.general.openWorkingDir': return 'باز کردن دایرکتوری فعال';
			case 'settings.general.ignoreBatteryOptimizations': return 'غیرفعال کردن بهینه‌سازی باتری';
			case 'settings.general.ignoreBatteryOptimizationsMsg': return 'برطرف کردن محدودیت‌ها برای عملکرد بهینه‌ی VPN';
			case 'settings.general.dynamicNotification': return 'نمایش سرعت در نوار اعلان';
			case 'settings.general.hapticFeedback': return 'بازخورد لمسی';
			case 'settings.general.autoIpCheck': return 'بررسی خودکار آی‌پی اتصال';
			case 'settings.advanced.sectionTitle': return 'پیشرفته';
			case 'settings.advanced.debugMode': return 'حالت اشکال‌زدایی';
			case 'settings.advanced.debugModeMsg': return 'برنامه را برای اعمال این تغییر دوباره راه‌اندازی کنید';
			case 'settings.advanced.memoryLimit': return 'محدودیت حافظه';
			case 'settings.advanced.memoryLimitMsg': return 'اگر با خطاهای کمبود حافظه یا خرابی مکرر برنامه مواجه می‌شوید، این گزینه را فعال کنید';
			case 'settings.advanced.resetTunnel': return '‌بازنشانی پروفایل VPN';
			case 'settings.network.perAppProxyPageTitle': return 'پروکسی براساس برنامه';
			case 'settings.network.perAppProxyModes.off': return 'همه';
			case 'settings.network.perAppProxyModes.offMsg': return 'همه‌ی برنامه‌ها پروکسی شوند';
			case 'settings.network.perAppProxyModes.include': return 'پروکسی';
			case 'settings.network.perAppProxyModes.includeMsg': return 'تنها برنامه‌های انتخاب‌شده پروکسی شوند';
			case 'settings.network.perAppProxyModes.exclude': return 'کنار گذاشتن';
			case 'settings.network.perAppProxyModes.excludeMsg': return 'برنامه‌های انتخاب‌شده پروکسی نشوند';
			case 'settings.network.showSystemApps': return 'نمایش برنامه‌های سیستمی';
			case 'settings.network.hideSystemApps': return 'پنهان کردن برنامه‌های سیستمی';
			case 'settings.network.clearSelection': return 'پاک کردن انتخاب‌ها';
			case 'settings.geoAssets.pageTitle': return 'فایل‌های مسیریابی';
			case 'settings.geoAssets.geoip': return 'ژئو آی‌پی';
			case 'settings.geoAssets.geosite': return 'ژئو سایت';
			case 'settings.geoAssets.version': return ({required Object version}) => 'نسخه ${version}';
			case 'settings.geoAssets.fileMissing': return 'فایل موجود نیست';
			case 'settings.geoAssets.update': return 'به‌روزرسانی';
			case 'settings.geoAssets.download': return 'دانلود';
			case 'settings.geoAssets.failureMsg': return 'به‌روزرسانی فایل ناموفق بود';
			case 'settings.geoAssets.successMsg': return 'فایل‌ با موفقیت به‌روزرسانی شد';
			case 'settings.geoAssets.addRecommended': return 'افزودن فایل‌های توصیه‌شده';
			case 'settings.geoAssets.missingGeoAssetsMsg': return 'فایل‌های مسیریابی انتخاب شده وجود ندارند. یا آن‌ها را دانلود کنید و یا یکی از موارد موجود را انتخاب کنید';
			case 'about.pageTitle': return 'درباره';
			case 'about.version': return 'نسخه';
			case 'about.sourceCode': return 'کد منبع';
			case 'about.telegramChannel': return 'کانال تلگرام';
			case 'about.checkForUpdate': return 'بررسی برای به‌روزرسانی';
			case 'about.privacyPolicy': return 'سیاست‌های حفظ حریم خصوصی';
			case 'about.termsAndConditions': return 'شرایط و ضوابط استفاده';
			case 'appUpdate.notAvailableMsg': return 'در حال استفاده از آخرین نسخه هستید';
			case 'appUpdate.dialogTitle': return 'به‌روزرسانی موجود است';
			case 'appUpdate.updateMsg': return 'نسخه‌ی جدیدی از general.appTitle در دسترس است. آیا می‌خواهید آن را به‌روزرسانی کنید؟';
			case 'appUpdate.currentVersionLbl': return 'نسخه‌ی فعلی';
			case 'appUpdate.newVersionLbl': return 'نسخه‌ی جدید';
			case 'appUpdate.updateNowBtnTxt': return 'هم‌اکنون به‌روزرسانی شود';
			case 'appUpdate.laterBtnTxt': return 'بعداً';
			case 'appUpdate.ignoreBtnTxt': return 'نادیده‌گرفتن';
			case 'tray.dashboard': return 'داشبورد';
			case 'tray.quit': return 'خروج';
			case 'tray.open': return 'باز کردن';
			case 'tray.status.connect': return 'اتصال';
			case 'tray.status.connecting': return 'در حال اتصال';
			case 'tray.status.disconnect': return 'قطع اتصال';
			case 'tray.status.disconnecting': return 'در حال قطع اتصال';
			case 'failure.unexpected': return 'خطای غیرمنتظره';
			case 'failure.clash.unexpected': return 'خطای غیرمنتظره';
			case 'failure.clash.core': return ({required Object reason}) => 'خطای Clash ${reason}';
			case 'failure.singbox.unexpected': return 'خطای غیرمنتظره در سرویس';
			case 'failure.singbox.serviceNotRunning': return 'سرویس در حال اجرا نیست';
			case 'failure.singbox.missingPrivilege': return 'نیازمند دسترسی';
			case 'failure.singbox.missingPrivilegeMsg': return 'حالت VPN به دسترسی ادمین نیاز دارد. یا برنامه را دوباره به‌عنوان ادمین راه‌اندازی کنید یا حالت سرویس را تغییر دهید.';
			case 'failure.singbox.missingGeoAssets': return 'فایل‌های جغرافیایی وجود ندارد';
			case 'failure.singbox.missingGeoAssetsMsg': return 'فایل‌های جغرافیایی وجود ندارند. یا فایل فعال را تغییر دهید و یا فایل های انتخاب شده را دانلود کنید. ';
			case 'failure.singbox.invalidConfigOptions': return 'تنظیمات پیکربندی نامعتبر';
			case 'failure.singbox.invalidConfig': return 'پیکربندی نامعتبر';
			case 'failure.singbox.create': return 'خطای ایجاد سرویس';
			case 'failure.singbox.start': return 'خطای راه‌اندازی سرویس';
			case 'failure.connectivity.unexpected': return 'خطای غیرمنتظره';
			case 'failure.connectivity.missingVpnPermission': return 'مجوز VPN وجود ندارد';
			case 'failure.connectivity.missingNotificationPermission': return 'مجوز اعلان وجود ندارد';
			case 'failure.connectivity.core': return 'خطای هسته';
			case 'failure.profiles.unexpected': return 'خطای غیرمنتظره';
			case 'failure.profiles.notFound': return 'پروفایل یافت نشد';
			case 'failure.profiles.invalidConfig': return 'پیکربندی‌ها نامعتبر هستند';
			case 'failure.profiles.invalidUrl': return 'لینک نامعتبر است';
			case 'failure.connection.unexpected': return ' خطای غیرمنتظره در اتصال';
			case 'failure.connection.timeout': return 'مهلت اتصال به پایان رسید';
			case 'failure.connection.badResponse': return 'پاسخ نامعتبر';
			case 'failure.connection.connectionError': return 'خطای اتصال';
			case 'failure.connection.badCertificate': return 'خطای اعتبارسنجی';
			case 'failure.geoAssets.unexpected': return 'خطای غیرمنتظره';
			case 'failure.geoAssets.notUpdate': return 'هیچ به‌روزرسانی موجود نیست';
			case 'failure.geoAssets.activeNotFound': return 'فایل جغرافیایی فعال یافت نشد';
			case 'play.title': return 'هیدیفای (آزمایشی)';
			case 'play.short_description': return 'Auto, SSH, VLESS, VMess, Trojan, Reality, Sing-Box, Clash, XRay, Shadowsocks';
			case 'play.full_description': return 'هدف اصلی هیدیفای ارائه یک کلاینت ضدفیلتر ایمن، کاربرپسند و کارآمد است. این به شما امکان می‌دهد تا با استفاده از مجوز سرویس VPN، تمام ترافیک یا ترافیک برنامه‌ی انتخابی را به یک سرور راه دور مورد نظر خود هدایت کنید.\n\nتوجه: ما هیچ سروری ارائه نمی‌دهیم. کاربران موظف هستند با استفاده از سرورهای خود، هاست یا سرورهای مورد اعتماد، فعالیت‌های آنلاین خود را خصوصی نگه دارند. \n\nما از این سرورها پشتیبانی می‌کنیم:\n- لینک اشتراک V2Ray/XRay معمولی\n- لینک اشتراک کلش\n- لینک اشتراک Sing-Box\n\nویژگی‌های منحصر به فرد این برنامه چیست؟\n- کاربر پسند  \n- بهینه و سریع  \n- انتخاب کمترین پینگ به صورت خودکار\n- نمایش اطلاعات استفاده کاربر\n- به راحتی لینک فرعی را با یک کلیک با استفاده از دیپ لینک وارد کنید  \n- رایگان و بدون تبلیغات  \n- به‌راحتی لینک های فرعی کاربر را تغییر دهید  \n- بیشتر و بیشتر\n\nپشتیبانی از:\n- همه‌ی پروتکل‌های پشتیبانی‌شده توسط Sing-Box- VLESS + XTLS Reality، Vision- VMess- Trojan- ShadowSocks- Reality- WireGuard- V2Ray- Hysteria2- TUICv5- SSH- ShadowTLS\n\nکد منبع در https://github.com/hiddify/Hiddify-Next موجود بوده و هسته‌ی برنامه مبتنی بر منبع باز Sing-Box است.\n\nتوضیحات مجوز:\n- VPN Service: از آن‌جا که هدف این برنامه ارائه‌ی یک کلاینت ضدفیلتر ایمن، کاربر پسند و کارآمد است، ما به این مجوز نیاز داریم تا بتوانیم ترافیک را از طریق تونل به سرور راه دور هدایت کنیم.\n- QUERY ALL PACKAGES: این مجوز برای اجازه دادن به کاربران برای گنجاندن یا حذف برنامه‌های کاربردی خاص برای تونل‌زدن استفاده می‌شود.\n- RECEIVE BOOT COMPLETED: این مجوز را می‌توان از تنظیمات برنامه فعال یا غیرفعال کرد تا این برنامه پس از شروع به کار دستگاه فعال شود.\n- POST NOTIFICATIONS: این مجوز ضروری است زیرا برای اطمینان از عملکرد یکسره VPN نیاز است از یک سرویس پس زمینه استفاده کنیم. \n- این برنامه بدون تبلیغات است. تجزیه و تحلیل و داده‌های خرابی فقط با رضایت صریح کاربر در اولین استفاده از برنامه اتفاق می‌افتد.';
			case 'connection.tapToConnect': return 'برای اتصال ضربه بزنید';
			case 'connection.connecting': return 'در حال اتصال';
			case 'connection.disconnecting': return 'در حال قطع اتصال';
			case 'connection.connected': return 'متصل شد';
			case 'connection.reconnect': return 'اتصال دوباره';
			case 'connection.connectAnyWay': return 'متصل کردن';
			case 'connection.experimentalNotice': return 'ویژگی‌های آزمایشی در حال استفاده';
			case 'connection.experimentalNoticeMsg': return 'شما برخی از ویژگی‌های آزمایشی را فعال کرده‌اید که ممکن است بر کیفیت اتصال تأثیر گذاشته و باعث بروز خطاهای غیرمنتظره شود. شما همیشه می‌توانید این گزینه‌ها را از صفحه‌ی تنظیمات پیکربندی تغییر دهید یا بازنشانی کنید.';
			case 'connection.disableExperimentalNotice': return 'دیگر نشان نده';
			case 'connection.reconnectMsg': return 'دوباره متصل شوید تا تغییرات اعمال شوند';
			case 'config.resetBtn': return 'بازنشانی تنظیمات';
			case 'config.serviceMode': return 'حالت سرویس';
			case 'config.quickSettings': return 'تنظیمات سریع';
			case 'config.setupWarp': return 'راه‌اندازی WARP';
			case 'config.allOptions': return 'همه‌ی تنظیمات پیکربندی';
			case 'config.serviceModes.proxy': return 'تنها سرویس پروکسی';
			case 'config.serviceModes.systemProxy': return 'تنظیم پروکسی سیستم';
			case 'config.serviceModes.tun': return 'VPN';
			case 'config.serviceModes.tunService': return 'سرویس VPN';
			case 'config.shortServiceModes.proxy': return 'پروکسی';
			case 'config.shortServiceModes.systemProxy': return 'پروکسی سیستم';
			case 'config.shortServiceModes.tun': return 'VPN';
			case 'config.shortServiceModes.tunService': return 'سرویس VPN';
			case 'config.section.route': return 'تنظیمات مسیریابی';
			case 'config.section.dns': return 'تنظیمات DNS';
			case 'config.section.inbound': return 'تنظیمات ورودی';
			case 'config.section.mux': return 'مالتی پلکسر';
			case 'config.section.outbound': return 'تنظیمات خروجی';
			case 'config.section.tlsTricks': return 'ترفندهای TLS';
			case 'config.section.warp': return 'تنظیمات WARP';
			case 'config.section.misc': return 'تنظیمات متفرقه';
			case 'config.warpConsent.title': return 'توافق‌نامه‌ی Cloudflare WARP';
			case 'config.warpConsent.description': return ({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
				const TextSpan(text: 'Cloudflare WARP یک ارائه‌دهنده‌ی رایگان WireGuard VPN است. با فعال کردن این گزینه، با '),
				tos('شرایط خدمات'),
				const TextSpan(text: ' و '),
				privacy('خط‌ مشی رازداری'),
				const TextSpan(text: ' Cloudflare WARP موافقت می‌کنید.'),
			]);
			case 'config.generateWarpConfig': return 'ایجاد پیکربندی WARP';
			case 'config.missingWarpConfig': return 'پیکربندی WARP موجود نیست';
			case 'config.warpConfigGenerated': return 'پیکربندی WARP ایجاد شد';
			case 'config.pageTitle': return 'تنظیمات پیکربندی';
			case 'config.logLevel': return 'سطح گزارش';
			case 'config.resolveDestination': return 'جایگذاری مقصد';
			case 'config.ipv6Mode': return 'مسیریابی IPv6';
			case 'config.ipv6Modes.disable': return 'غیرفعال';
			case 'config.ipv6Modes.enable': return 'فعال';
			case 'config.ipv6Modes.prefer': return 'ترجیح داده شده';
			case 'config.ipv6Modes.only': return 'اختصاصی';
			case 'config.remoteDnsAddress': return 'DNS خارجی';
			case 'config.remoteDnsDomainStrategy': return 'استراتژی دامنه DNS خارجی';
			case 'config.directDnsAddress': return 'DNS مستقیم';
			case 'config.directDnsDomainStrategy': return 'استراتژی دامنه DNS مستقیم';
			case 'config.mixedPort': return 'پورت چندمنظوره';
			case 'config.tproxyPort': return 'پورت پروکسی نامرئی';
			case 'config.localDnsPort': return 'پورت DNS داخلی';
			case 'config.allowConnectionFromLan': return 'اشتراک VPN در شبکه داخلی';
			case 'config.tunImplementation': return 'پیاده‌سازی TUN';
			case 'config.mtu': return 'سایز بسته‌ها (MTU) ';
			case 'config.connectionTestUrl': return 'لینک بررسی اتصال';
			case 'config.urlTestInterval': return 'فاصله‌ی زمانی بررسی لینک';
			case 'config.enableClashApi': return 'فعال‌سازی Clash API';
			case 'config.clashApiPort': return 'پورت Clash API';
			case 'config.enableTun': return 'فعال‌سازی TUN';
			case 'config.setSystemProxy': return 'تنظیم پروکسی سیستم';
			case 'config.enableDnsRouting': return 'فعال‌سازی مسیریابی DNS';
			case 'config.enableFakeDns': return 'فعال‌سازی DNS جعلی';
			case 'config.bypassLan': return 'دور زدن LAN';
			case 'config.strictRoute': return 'مسیر دقیق';
			case 'config.enableTlsFragment': return 'فعال‌سازی TLS Fragment';
			case 'config.tlsFragmentSize': return 'اندازه‌ی TLS Fragment ';
			case 'config.tlsFragmentSleep': return 'کنار گذاشتن TLS Fragment';
			case 'config.enableTlsMixedSniCase': return 'فعال‌سازی TLS Mixed SNI Case';
			case 'config.enableTlsPadding': return 'فعال‌سازی TLS Padding';
			case 'config.tlsPaddingSize': return 'اندازه‌ی TLS Padding';
			case 'config.enableMux': return 'فعال‌سازی Mux';
			case 'config.muxProtocol': return 'پروتکل Mux';
			case 'config.muxMaxStreams': return 'حداکثر جریان‌های هم‌زمان';
			case 'config.enableWarp': return 'فعال‌سازی WARP';
			case 'config.warpDetourMode': return 'حالت وارپ';
			case 'config.warpDetourModes.proxyOverWarp': return 'عبور پروکسی‌ها از طریق WARP';
			case 'config.warpDetourModes.warpOverProxy': return 'عبور WARP از طریق پروکسی‌ها';
			case 'config.warpDetourModes.inbound': return 'عبور WARP از طریق پروکسی‌ها';
			case 'config.warpDetourModes.outbound': return 'عبور پروکسی‌ها از طریق WARP';
			case 'config.warpLicenseKey': return 'کلید لایسنس';
			case 'config.warpCleanIp': return 'آی‌پی تمیز';
			case 'config.warpPort': return 'پورت';
			case 'config.warpNoise': return 'تعداد نویز';
			case 'config.warpNoiseDelay': return 'تأخیر نویز';
			default: return null;
		}
	}
}

extension on TranslationsId {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'Hiddify';
			case 'general.reset': return 'Set Ulang';
			case 'general.toggle.enabled': return 'Mengaktifkan';
			case 'general.toggle.disabled': return 'Menonaktifkan';
			case 'general.state.disable': return 'Menonaktifkan';
			case 'general.sort': return 'Urutkan';
			case 'general.sortBy': return 'Urut Berdasarkan';
			case 'general.addToClipboard': return 'Tambah ke Clipboard';
			case 'general.notSet': return 'Tidak Diatur';
			case 'general.agree': return 'Setuju';
			case 'general.decline': return 'Tolak';
			case 'general.unknown': return 'Tidak Dikenal';
			case 'general.timeout': return 'Waktu habis';
			case 'intro.termsAndPolicyCaution': return ({required InlineSpanBuilder tap}) => TextSpan(children: [
				const TextSpan(text: 'lanjut berarti setuju dengan '),
				tap(_root.about.termsAndConditions),
			]);
			case 'intro.start': return 'Mulai';
			case 'home.pageTitle': return 'Utama';
			case 'home.emptyProfilesMsg': return 'Mulai menambahkan langganan profil';
			case 'home.noActiveProfileMsg': return 'Pilih profil';
			case 'stats.traffic': return 'Trafik Langsung';
			case 'stats.trafficTotal': return 'Total Trafik';
			case 'stats.uplink': return 'Uplink';
			case 'stats.downlink': return 'Downlink';
			case 'stats.connection': return 'Sambungan';
			case 'profile.overviewPageTitle': return 'Beberapa Profil';
			case 'profile.detailsPageTitle': return 'Profil';
			case 'profile.activeProfileNameSemanticLabel': return ({required Object name}) => 'Nama profil aktif: "${name}".';
			case 'profile.activeProfileBtnSemanticLabel': return 'Tampilkan semua profil.';
			case 'profile.nonActiveProfileBtnSemanticLabel': return ({required Object name}) => 'Pilih "${name}" sebagai profil aktif.';
			case 'profile.subscription.traffic': return 'Trafik';
			case 'profile.subscription.updatedTimeAgo': return ({required Object timeago}) => '${timeago} diperbarui';
			case 'profile.subscription.remainingDuration': return ({required Object duration}) => 'Tersisa ${duration} hari lagi';
			case 'profile.subscription.remainingTrafficSemanticLabel': return ({required Object consumed, required Object total}) => '${consumed}/${total} trafik terpakai';
			case 'profile.subscription.expired': return 'Kadaluarsa';
			case 'profile.subscription.noTraffic': return 'Kuota Habis';
			case 'profile.sortBy.lastUpdate': return 'Baru diperbaharui';
			case 'profile.sortBy.name': return 'Alphabetikal';
			case 'profile.add.buttonText': return 'Profil Baru';
			case 'profile.add.shortBtnTxt': return 'Profil Baru';
			case 'profile.add.fromClipboard': return 'Tambah dari Clipboard';
			case 'profile.add.scanQr': return 'Pindai QR';
			case 'profile.add.qrScanner.permissionDeniedError': return 'Izin ditolak';
			case 'profile.add.qrScanner.unexpectedError': return 'Terjadi masalah';
			case 'profile.add.qrScanner.torchSemanticLabel': return 'Lampu Flash';
			case 'profile.add.qrScanner.facingSemanticLabel': return 'Hadap Kamera';
			case 'profile.add.manually': return 'Isian Manual';
			case 'profile.add.addingProfileMsg': return 'Tambahkan Profil';
			case 'profile.add.failureMsg': return 'Gagal tambahkan profil';
			case 'profile.update.buttonTxt': return 'Perbarui';
			case 'profile.update.tooltip': return 'Profil terbaru';
			case 'profile.update.updateSubscriptions': return 'Perbarui Langganan';
			case 'profile.update.failureMsg': return 'Gagal perbarui profil';
			case 'profile.update.successMsg': return 'Sukses perbarui profil';
			case 'profile.update.namedFailureMsg': return ({required Object name}) => 'Gagal perbarui "${name}"';
			case 'profile.update.namedSuccessMsg': return ({required Object name}) => 'Sukses perbarui "${name}"';
			case 'profile.share.buttonText': return 'Bagi';
			case 'profile.share.exportToClipboardSuccess': return 'Taruh ke clipboard';
			case 'profile.share.exportSubLinkToClipboard': return 'Taruh link langganan ke clipboard';
			case 'profile.share.subLinkQrCode': return 'Link Langganan QR';
			case 'profile.share.exportConfigToClipboard': return 'Taruh konfigurasi ke clipboard';
			case 'profile.share.exportConfigToClipboardSuccess': return 'Salin konfigurasi ke clipboard';
			case 'profile.edit.buttonTxt': return 'Ubah';
			case 'profile.edit.selectActiveTxt': return 'Pilih profil aktif';
			case 'profile.delete.buttonTxt': return 'Hapus';
			case 'profile.delete.confirmationMsg': return 'Hapus profil permanen?';
			case 'profile.delete.successMsg': return 'Sukses hapus profil';
			case 'profile.save.buttonText': return 'Simpan';
			case 'profile.save.successMsg': return 'Sukses simpan profil';
			case 'profile.save.failureMsg': return 'Gagal simpan profil';
			case 'profile.detailsForm.nameLabel': return 'Nama';
			case 'profile.detailsForm.nameHint': return 'Nama Profil';
			case 'profile.detailsForm.urlLabel': return 'URL';
			case 'profile.detailsForm.urlHint': return 'URL Lengkap';
			case 'profile.detailsForm.emptyNameMsg': return 'Nama diwajibkan';
			case 'profile.detailsForm.invalidUrlMsg': return 'URL Salah';
			case 'profile.detailsForm.lastUpdate': return 'Terakhir diperbarui';
			case 'profile.detailsForm.updateInterval': return 'Perbarui otomatis';
			case 'profile.detailsForm.updateIntervalDialogTitle': return 'Interval perbarui otomatis (dalam jam)';
			case 'proxies.pageTitle': return 'Proxy';
			case 'proxies.emptyProxiesMsg': return 'Tidak ada proxy';
			case 'proxies.delayTestTooltip': return 'Test delay';
			case 'proxies.sortTooltip': return 'Urut Proxy';
			case 'proxies.sortOptions.unsorted': return 'Awal';
			case 'proxies.sortOptions.name': return 'Alfabetikal';
			case 'proxies.sortOptions.delay': return 'Berdasarkan Delay';
			case 'logs.pageTitle': return 'Log';
			case 'logs.filterHint': return 'Filter';
			case 'logs.allLevelsFilter': return 'Semua';
			case 'logs.shareCoreLogs': return 'Bagikan Log Inti';
			case 'logs.shareAppLogs': return 'Bagikan Log Aplikasi';
			case 'logs.pauseTooltip': return 'Jeda';
			case 'logs.resumeTooltip': return 'Lanjut';
			case 'logs.clearTooltip': return 'Bersih';
			case 'settings.pageTitle': return 'Setting';
			case 'settings.requiresRestartMsg': return 'Untuk mencoba restart aplikasi';
			case 'settings.experimental': return 'Eksperimen';
			case 'settings.experimentalMsg': return 'Fitur dengan tanda Eksperimen masih dalam pengembangan dan resiko bermasalah.';
			case 'settings.general.sectionTitle': return 'Umum';
			case 'settings.general.locale': return 'Bahasa';
			case 'settings.general.region': return 'Region';
			case 'settings.general.regionMsg': return 'Bantu tetapkan opsi standar untuk melewati alamat lokal';
			case 'settings.general.regions.ir': return 'İran (ir)';
			case 'settings.general.regions.cn': return 'Çin (cn)';
			case 'settings.general.regions.ru': return 'Russia (ru)';
			case 'settings.general.regions.af': return 'Afghanistan (af)';
			case 'settings.general.regions.other': return 'Lainnya';
			case 'settings.general.themeMode': return 'Jenis Tema';
			case 'settings.general.themeModes.system': return 'Ikut Tema Sistem';
			case 'settings.general.themeModes.dark': return 'Tema Gelap';
			case 'settings.general.themeModes.light': return 'Tema Cerah';
			case 'settings.general.themeModes.black': return 'Tema Hitam';
			case 'settings.general.enableAnalytics': return 'Mengaktifkan Analitik';
			case 'settings.general.enableAnalyticsMsg': return 'Beri izin untuk mengumpulkan analisis dan mengirim laporan kegagalan untuk meningkatkan aplikasi';
			case 'settings.general.autoStart': return 'Mulai saat Login';
			case 'settings.general.silentStart': return 'Mulai Minimalkan';
			case 'settings.general.openWorkingDir': return 'Buka Direktori Kerja';
			case 'settings.general.ignoreBatteryOptimizations': return 'Menonaktifkan Optimisasi Baterai';
			case 'settings.general.ignoreBatteryOptimizationsMsg': return 'Hapus batasan untuk performa VPN yang optimal';
			case 'settings.general.dynamicNotification': return 'Tampilkan Kecepatan di notifikasi';
			case 'settings.advanced.sectionTitle': return 'Mode Lanjut';
			case 'settings.advanced.debugMode': return 'Mode Debug';
			case 'settings.advanced.debugModeMsg': return 'Restart aplikasi untuk menerapkan perubahan';
			case 'settings.advanced.memoryLimit': return 'Limit Memori';
			case 'settings.advanced.memoryLimitMsg': return 'Aktifkan jika kamu mendapatkan error habis memori atau error aplikasi yang sering';
			case 'settings.advanced.resetTunnel': return 'Set ulang profil VPN';
			case 'settings.network.perAppProxyPageTitle': return 'Per-app Proxy';
			case 'settings.network.perAppProxyModes.off': return 'Semua';
			case 'settings.network.perAppProxyModes.offMsg': return 'Proxy semua applikasi';
			case 'settings.network.perAppProxyModes.include': return 'Proxy';
			case 'settings.network.perAppProxyModes.includeMsg': return 'Proxy untuk aplikasi terpilih';
			case 'settings.network.perAppProxyModes.exclude': return 'Bypass';
			case 'settings.network.perAppProxyModes.excludeMsg': return 'Tidak proxy untuk aplikasi terpilih';
			case 'settings.network.showSystemApps': return 'Tampil aplikasi sistem';
			case 'settings.network.hideSystemApps': return 'Sembunyikan aplikasi sistem';
			case 'settings.network.clearSelection': return 'Bersihkan seleksi';
			case 'settings.geoAssets.pageTitle': return 'Rute Aset';
			case 'settings.geoAssets.geoip': return 'Geoip';
			case 'settings.geoAssets.geosite': return 'Geosite';
			case 'settings.geoAssets.version': return ({required Object version}) => 'Versi ${version}';
			case 'settings.geoAssets.fileMissing': return 'File Hilang';
			case 'settings.geoAssets.update': return 'Perbarui';
			case 'settings.geoAssets.download': return 'Unduh';
			case 'settings.geoAssets.failureMsg': return 'Gagal perbarui aset';
			case 'settings.geoAssets.successMsg': return 'Sukses perbarui aset';
			case 'settings.geoAssets.addRecommended': return 'Tambah aset rekomendasi';
			case 'settings.geoAssets.missingGeoAssetsMsg': return 'Routing aset terpilih filenya hilang. Silahkan unduh atau pilih dari yang ada';
			case 'about.pageTitle': return 'Tentang';
			case 'about.version': return 'Versi';
			case 'about.sourceCode': return 'Code Sumber';
			case 'about.telegramChannel': return 'Kanal Telegram';
			case 'about.checkForUpdate': return 'Periksa perbaruan';
			case 'about.privacyPolicy': return 'Kebijakan Privasi';
			case 'about.termsAndConditions': return 'Syarat dan Ketentuan Umum';
			case 'appUpdate.notAvailableMsg': return 'Sudah menggunakan versi terakhir';
			case 'appUpdate.dialogTitle': return 'Perbaruan Tersedia';
			case 'appUpdate.updateMsg': return 'Versi terbaru ${_root.general.appTitle} tersedia. Ingin di perbarui sekarang?';
			case 'appUpdate.currentVersionLbl': return 'Versi Sekarang';
			case 'appUpdate.newVersionLbl': return 'Versi Baru';
			case 'appUpdate.updateNowBtnTxt': return 'Perbarui Sekarang';
			case 'appUpdate.laterBtnTxt': return 'Nanti';
			case 'appUpdate.ignoreBtnTxt': return 'Lewati';
			case 'tray.dashboard': return 'Dashboard';
			case 'tray.quit': return 'Keluar';
			case 'tray.open': return 'Buka';
			case 'tray.status.connect': return 'Sambung';
			case 'tray.status.connecting': return 'Menyambungkan';
			case 'tray.status.disconnect': return 'Putus';
			case 'tray.status.disconnecting': return 'Memutuskan';
			case 'failure.unexpected': return 'Error Tidak Terduga';
			case 'failure.clash.unexpected': return 'Error Tidak Terduga';
			case 'failure.clash.core': return ({required Object reason}) => 'Clash Error ${reason}';
			case 'failure.singbox.unexpected': return 'Servis Error Tidak Terduga';
			case 'failure.singbox.serviceNotRunning': return 'Servis tidak berjalan';
			case 'failure.singbox.missingPrivilege': return 'Hak Akses Hilang';
			case 'failure.singbox.missingPrivilegeMsg': return 'Mode VPN membutuhkan hak akses administrator. Antara buka ulang aplikasi sebagai administrator atau rubah mode servis';
			case 'failure.singbox.missingGeoAssets': return 'Geo Aset Hilang';
			case 'failure.singbox.missingGeoAssetsMsg': return 'Geo aset hilang. Pertimbangkan merubah aset aktif atau unduh yang sudah dipilih di seting';
			case 'failure.singbox.invalidConfigOptions': return 'Pilihan konfigurasi tidak valid';
			case 'failure.singbox.invalidConfig': return 'Konfigurasi tidak valid';
			case 'failure.singbox.create': return 'Pembuatan Servis Error';
			case 'failure.singbox.start': return 'Jalankan Servis Error';
			case 'failure.connectivity.unexpected': return 'Kegagalan tidak terduga';
			case 'failure.connectivity.missingVpnPermission': return 'Izin VPN Hilang';
			case 'failure.connectivity.missingNotificationPermission': return 'Izin Notifikasi Hilang';
			case 'failure.connectivity.core': return 'Error Inti';
			case 'failure.profiles.unexpected': return 'Error Tidak Terduga';
			case 'failure.profiles.notFound': return 'Profil tidak ditemukan';
			case 'failure.profiles.invalidConfig': return 'Konfigurasi tidak valid';
			case 'failure.profiles.invalidUrl': return 'URL tidak valid';
			case 'failure.connection.unexpected': return 'Sambungan error tidak terduga';
			case 'failure.connection.timeout': return 'Waktu Sambungan Habis';
			case 'failure.connection.badResponse': return 'Response Rusak';
			case 'failure.connection.connectionError': return 'Sambungan Error';
			case 'failure.connection.badCertificate': return 'Sertifikat Rusak';
			case 'failure.geoAssets.unexpected': return 'Error Tidak Terduga';
			case 'failure.geoAssets.notUpdate': return 'Perbaruan tidak tersedia';
			case 'failure.geoAssets.activeNotFound': return 'Geo Aset Aktif tidak ditemukan';
			case 'play.title': return 'Hiddify (Preview)';
			case 'play.short_description': return 'Otomatik, SSH, VLESS, Vmess, Trojan, Reality, Sing-Box, Clash, Xray, Shadowsocks';
			case 'play.full_description': return 'Tujuan utama Hiddify adalah memberikan keamanan, user-friendly dan client tunnel yg efisien. Hiddify mengizinkanmu untuk mengarahkan semua atau beberapa trafik data aplikasi terpilih ke server remot pilihanmu, memanfaatkan izin VPN-Service.\n\nNote: Kami tidak menyediakan server apapun; pengguna diwajibkan untuk memastikan aktivitas online mereka tetap private dengan menggunakan self-hosted server atau server yg dipercaya pilihan mereka sendiri. \n \nKami mendukung server dengan:\n- Normal V2ray/Xray Subscription Link\n- Clash Subscription Link\n- Sing-Box Subscription Link\n\nApa fitur unik kami?\n - User Friendly\n - Cepat dan teroptimasi\n - Otomatis pilihan PING terendah \n - Menampilkan informasi penggunaan user\n - Dengan mudah import sublink dengan satu klik menggunakan deeplinking \n - Bebas dan tanpa iklan\n - Dengan mudah berganti user sublink\n - dan sebagainya\n\nSupport:\n- Semua protokol di dukung oleh Sing-Box \n- VLESS + xtls reality, vision\n- VMESS\n- Trojan\n- ShadowSocks\n- Reality\n- V2ray\n- Hystria2\n- TUIC\n- SSH\n- ShadowTLS\n\n\nCode Sumber ada di https://github.com/hiddify/Hiddify-Next\nInti Aplikasi didasarkan pada Sing-Box Open Source.\n\nDeskripsi Izin:\n- VPN Servis: Tujuan aplikasi ini menyediakan keamanan, user-friendly dan tunneling client efisien, kami membutuhkan izin untuk bisa mengarahkan traffic data melalui kanal remot server. \n- QUERY ALL PACKAGES: izin ini digunakan untuk memperbolehkan pengguna masuk atau mengeluarkan aplikasi tertentu untuk tunneling.\n- RECEIVE BOOT COMPLETED: izin ini dapat diaktifkan atau dinonaktifkan dari setting aplikasi untuk mengaktikan aplikasi ini saat boot device.\n- POST NOTIFICATIONS: izin ini penting karena kami menggunakan foreground service untuk memastikan operasi berkelanjutan dari VPN Servis.\n- Aplikasi ini bebas dari iklan. Analitik dan data crash hanya terjadi dengan persetujuan eksplisit dari pengguna pada saat penggunaan pertama kali';
			case 'connection.tapToConnect': return 'Ketuk untuk Sambung';
			case 'connection.connecting': return 'Sambungkan';
			case 'connection.disconnecting': return 'Putus Sambungan';
			case 'connection.connected': return 'Tersambung';
			case 'connection.experimentalNotice': return 'Fitur Experimental digunakan';
			case 'connection.experimentalNoticeMsg': return 'Kamu telah mengaktifkan fitur experimental yang mungkin mempengaruhi kualitas sambungan dan error tidak terduga. Kamu tetap bisa merubah atau set ulang opsi dari Halaman Konfigurasi';
			case 'connection.disableExperimentalNotice': return 'Jangan tampil lagi';
			case 'config.resetBtn': return 'Set Ulang Opsi';
			case 'config.serviceMode': return 'Sambung ulang agar perubahan diterapkan';
			case 'config.serviceModes.proxy': return 'Proxy';
			case 'config.serviceModes.systemProxy': return 'Sistem Proxy';
			case 'config.serviceModes.tun': return 'VPN';
			case 'config.section.route': return 'Opsi Route';
			case 'config.section.dns': return 'Opsi DNS';
			case 'config.section.inbound': return 'Opsi Inbound';
			case 'config.section.mux': return 'Multiplexer';
			case 'config.section.outbound': return 'Opsi Outbound';
			case 'config.section.tlsTricks': return 'TLS Tricks';
			case 'config.section.warp': return 'Opsi WARP';
			case 'config.section.misc': return 'Opsi Misc';
			case 'config.warpConsent.title': return 'Persetujuan Cloudflare WARP';
			case 'config.warpConsent.description': return ({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
				const TextSpan(text: 'Cloudflare WARP adalah WireGuard VPN Provider gratis. Dengan mengaktifkan opsi/pilihan ini berarti kamu setuju pada Cloudflare WARP\'s '),
				tos('Terms of Service'),
				const TextSpan(text: ' dan '),
				privacy('Privacy Policy'),
				const TextSpan(text: '.'),
			]);
			case 'config.pageTitle': return 'Opsi Konfig';
			case 'config.logLevel': return 'Log Level';
			case 'config.resolveDestination': return 'Resolve Destination';
			case 'config.ipv6Mode': return 'IPv6 Route';
			case 'config.ipv6Modes.disable': return 'Nonaktifkan';
			case 'config.ipv6Modes.enable': return 'Aktifkan';
			case 'config.ipv6Modes.prefer': return 'Prefer';
			case 'config.ipv6Modes.only': return 'Exclusive';
			case 'config.remoteDnsAddress': return 'Remote DNS';
			case 'config.remoteDnsDomainStrategy': return 'Remote DNS Domain Strategy';
			case 'config.directDnsAddress': return 'Direct DNS';
			case 'config.directDnsDomainStrategy': return 'Direct DNS Domain Strategy';
			case 'config.mixedPort': return 'Mixed Port';
			case 'config.localDnsPort': return 'DNS Port Lokal';
			case 'config.allowConnectionFromLan': return 'Perbolehkan Sambungan LAN';
			case 'config.tunImplementation': return 'Implementasi TUN';
			case 'config.mtu': return 'MTU';
			case 'config.connectionTestUrl': return 'URL Tes Sambungan';
			case 'config.urlTestInterval': return 'URL Test Interval';
			case 'config.enableClashApi': return 'Aktifkan Clash API';
			case 'config.clashApiPort': return 'Clash API Port';
			case 'config.enableTun': return 'Aktifkan TUN';
			case 'config.setSystemProxy': return 'Atur Sistem Proxy';
			case 'config.enableDnsRouting': return 'Aktifkan DNS Routing';
			case 'config.enableFakeDns': return 'Aktifkan DNS Palsu';
			case 'config.bypassLan': return 'Bypass LAN';
			case 'config.strictRoute': return 'Strict Route';
			case 'config.enableTlsFragment': return 'Aktifkan TLS Fragment';
			case 'config.tlsFragmentSize': return 'TLS Fragment Size';
			case 'config.tlsFragmentSleep': return 'TLS Fragment Sleep';
			case 'config.enableTlsMixedSniCase': return 'Aktifkan TLS Mixed SNI Case';
			case 'config.enableTlsPadding': return 'Aktifkan TLS Padding';
			case 'config.tlsPaddingSize': return 'TLS Padding';
			case 'config.enableMux': return 'Enable Mux';
			case 'config.muxProtocol': return 'Mux Protocol';
			case 'config.muxMaxStreams': return 'Max Concurrent Streams';
			case 'config.enableWarp': return 'Enable WARP';
			case 'config.warpDetourMode': return 'Detour Mode';
			case 'config.warpDetourModes.inbound': return 'Detour WARP through proxies';
			case 'config.warpDetourModes.outbound': return 'Detour proxies through WARP';
			case 'config.warpLicenseKey': return 'License Key';
			case 'config.warpCleanIp': return 'Clean IP';
			case 'config.warpPort': return 'Port';
			case 'config.warpNoise': return 'Noise';
			default: return null;
		}
	}
}

extension on TranslationsPtBr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'Hiddify';
			case 'general.reset': return 'Restaurar';
			case 'general.toggle.enabled': return 'Habilitado';
			case 'general.toggle.disabled': return 'Desabilitado';
			case 'general.state.disable': return 'Desabilitar';
			case 'general.sort': return 'Ordernar';
			case 'general.sortBy': return 'Ordenar Por';
			case 'general.addToClipboard': return 'Adicionar à área de transferência';
			case 'general.notSet': return 'Não configurado';
			case 'general.agree': return 'Aceitar';
			case 'general.decline': return 'Recusar';
			case 'general.unknown': return 'Desconhecido';
			case 'general.hidden': return 'Escondido';
			case 'general.timeout': return 'Tempo Esgotado';
			case 'intro.termsAndPolicyCaution': return ({required InlineSpanBuilder tap}) => TextSpan(children: [
				const TextSpan(text: 'ao continuar você concorda com '),
				tap(' ${_root.about.termsAndConditions}'),
			]);
			case 'intro.start': return 'Começar';
			case 'home.pageTitle': return 'Inicio';
			case 'home.emptyProfilesMsg': return 'Comece adicionando um perfil de assinatura';
			case 'home.noActiveProfileMsg': return 'Escolha um perfil';
			case 'stats.trafficLive': return 'Tráfego ao vivo';
			case 'stats.trafficTotal': return 'Tráfego total';
			case 'stats.uplink': return 'Ligação ascendente';
			case 'stats.downlink': return 'Link descendente';
			case 'stats.connection': return 'Conexão';
			case 'stats.speed': return 'Velocidade';
			case 'stats.totalTransferred': return 'Total Transferido';
			case 'profile.overviewPageTitle': return 'Perfis';
			case 'profile.detailsPageTitle': return 'Perfil';
			case 'profile.activeProfileNameSemanticLabel': return ({required Object name}) => 'Nome do perfil ativo: "${name}".';
			case 'profile.activeProfileBtnSemanticLabel': return 'Ver todos os perfis';
			case 'profile.nonActiveProfileBtnSemanticLabel': return ({required Object name}) => 'Selecione "${name}" como perfil ativo.';
			case 'profile.subscription.traffic': return 'Tráfego';
			case 'profile.subscription.updatedTimeAgo': return ({required Object timeago}) => 'Atualizado ${timeago}';
			case 'profile.subscription.remainingDuration': return ({required Object duration}) => '${duration} dias restantes';
			case 'profile.subscription.remainingTrafficSemanticLabel': return ({required Object consumed, required Object total}) => '${consumed} de ${total} tráfego consumido';
			case 'profile.subscription.expired': return 'Expirado';
			case 'profile.subscription.noTraffic': return 'Fora da cota';
			case 'profile.subscription.upload': return 'Upload';
			case 'profile.subscription.download': return 'Download';
			case 'profile.subscription.total': return 'Tráfego total';
			case 'profile.subscription.expireDate': return 'Data de validade';
			case 'profile.sortBy.lastUpdate': return 'Atualizado recentemente';
			case 'profile.sortBy.name': return 'Alfabeticamente';
			case 'profile.add.buttonText': return 'Novo Perfil';
			case 'profile.add.shortBtnTxt': return 'Novo Perfil';
			case 'profile.add.fromClipboard': return 'Adicionar da área de transferência';
			case 'profile.add.scanQr': return 'Digitalize o código QR';
			case 'profile.add.qrScanner.permissionDeniedError': return 'Permissão Negada';
			case 'profile.add.qrScanner.unexpectedError': return 'Algo deu errado';
			case 'profile.add.qrScanner.torchSemanticLabel': return 'Luz do flash';
			case 'profile.add.qrScanner.facingSemanticLabel': return 'Câmera voltada';
			case 'profile.add.manually': return 'Entrada manual';
			case 'profile.add.addingProfileMsg': return 'Adicionando Perfil';
			case 'profile.add.failureMsg': return 'Falha ao adicionar perfil';
			case 'profile.update.buttonTxt': return 'Atualizar';
			case 'profile.update.tooltip': return 'Atualizar Perfil';
			case 'profile.update.updateSubscriptions': return 'Atualizar assinaturas';
			case 'profile.update.failureMsg': return 'Falha ao atualizar perfil';
			case 'profile.update.successMsg': return 'Perfil atualizado com sucesso';
			case 'profile.update.namedFailureMsg': return ({required Object name}) => 'Falha ao atualizar "${name}"';
			case 'profile.update.namedSuccessMsg': return ({required Object name}) => '"${name}" atualizado com sucesso';
			case 'profile.share.buttonText': return 'Compartilhar';
			case 'profile.share.exportToClipboardSuccess': return 'Exportado para a área de transferência';
			case 'profile.share.exportSubLinkToClipboard': return 'Exportar link de assinatura para a área de transferência';
			case 'profile.share.subLinkQrCode': return 'Código QR do link de assinatura';
			case 'profile.share.exportConfigToClipboard': return 'Exportar configuração para a área de transferência';
			case 'profile.share.exportConfigToClipboardSuccess': return 'Configuração copiada para a área de transferência';
			case 'profile.edit.buttonTxt': return 'Editar';
			case 'profile.edit.selectActiveTxt': return 'Selecionar perfil ativo';
			case 'profile.delete.buttonTxt': return 'Deletar';
			case 'profile.delete.confirmationMsg': return 'Deletar perfil permanentemente?';
			case 'profile.delete.successMsg': return 'Perfil deletado com sucesso';
			case 'profile.save.buttonText': return 'Salvar';
			case 'profile.save.successMsg': return 'Perfil salvo com sucesso';
			case 'profile.save.failureMsg': return 'Falha ao salvar perfil';
			case 'profile.detailsForm.nameLabel': return 'Nome';
			case 'profile.detailsForm.nameHint': return 'Nome do Perfil';
			case 'profile.detailsForm.urlLabel': return 'URL';
			case 'profile.detailsForm.urlHint': return 'URL de configuração completo';
			case 'profile.detailsForm.emptyNameMsg': return 'Nome é obrigatório ';
			case 'profile.detailsForm.invalidUrlMsg': return 'URL inválido';
			case 'profile.detailsForm.lastUpdate': return 'Ultima Atualização';
			case 'profile.detailsForm.updateInterval': return 'Atualização Automática ';
			case 'profile.detailsForm.updateIntervalDialogTitle': return 'Intervalo de atualização automática (em horas)';
			case 'proxies.pageTitle': return 'Proxies';
			case 'proxies.emptyProxiesMsg': return 'Nenhum proxy disponível';
			case 'proxies.delayTestTooltip': return 'Atraso de teste';
			case 'proxies.sortTooltip': return 'Ordenar proxies';
			case 'proxies.checkIp': return 'Verifique o IP';
			case 'proxies.unknownIp': return 'IP desconhecido';
			case 'proxies.sortOptions.unsorted': return 'Padrão';
			case 'proxies.sortOptions.name': return 'Alfabeticamente';
			case 'proxies.sortOptions.delay': return 'Por atraso';
			case 'proxies.activeProxySemanticLabel': return 'Proxy ativo';
			case 'proxies.delaySemantics.result': return ({required Object delay}) => 'atraso: ${delay}ms';
			case 'proxies.delaySemantics.timeout': return 'atrasar o tempo limite do teste';
			case 'proxies.delaySemantics.testing': return 'atraso: testando...';
			case 'proxies.ipInfoSemantics.address': return 'Endereço de IP';
			case 'proxies.ipInfoSemantics.country': return 'País';
			case 'logs.pageTitle': return 'Histórico';
			case 'logs.filterHint': return 'Filtro';
			case 'logs.allLevelsFilter': return 'Todos';
			case 'logs.shareCoreLogs': return 'Compartilhe registros principais';
			case 'logs.shareAppLogs': return 'Compartilhe registros de aplicativos';
			case 'logs.pauseTooltip': return 'Pausar';
			case 'logs.resumeTooltip': return 'Resumir';
			case 'logs.clearTooltip': return 'Limpar';
			case 'settings.pageTitle': return 'Configurações';
			case 'settings.requiresRestartMsg': return 'Para que isso tenha efeito, reinicie o aplicativo';
			case 'settings.experimental': return 'Experimental';
			case 'settings.experimentalMsg': return 'Os recursos com sinalização Experimental ainda estão em desenvolvimento e podem causar problemas.';
			case 'settings.general.sectionTitle': return 'Geral';
			case 'settings.general.locale': return 'Linguagem';
			case 'settings.general.region': return 'Região';
			case 'settings.general.regionMsg': return 'Ajuda a definir opções padrão para ignorar endereços domésticos';
			case 'settings.general.regions.ir': return 'Irã (ir)';
			case 'settings.general.regions.cn': return 'China (cn)';
			case 'settings.general.regions.ru': return 'Rússia (ru)';
			case 'settings.general.regions.af': return 'Afeganistão (af)';
			case 'settings.general.regions.other': return 'Outro';
			case 'settings.general.themeMode': return 'Modo de Tema';
			case 'settings.general.themeModes.system': return 'Seguir o tema do sistema';
			case 'settings.general.themeModes.dark': return 'Modo Escuro';
			case 'settings.general.themeModes.light': return 'Modo Claro';
			case 'settings.general.themeModes.black': return 'Modo Preto';
			case 'settings.general.enableAnalytics': return 'Habilitar Análise';
			case 'settings.general.enableAnalyticsMsg': return 'Dê permissão para coletar análises e enviar relatórios de falhas para melhorar o aplicativo';
			case 'settings.general.autoStart': return 'Inicializar no login';
			case 'settings.general.silentStart': return 'Inicializar minimizado';
			case 'settings.general.openWorkingDir': return 'Abra o diretório de trabalho';
			case 'settings.general.ignoreBatteryOptimizations': return 'Desative a otimização da bateria';
			case 'settings.general.ignoreBatteryOptimizationsMsg': return 'Remova as restrições para obter o desempenho ideal da VPN';
			case 'settings.general.dynamicNotification': return 'Exibir velocidade na notificação';
			case 'settings.general.hapticFeedback': return 'Feedback tátil';
			case 'settings.general.autoIpCheck': return 'Verifique automaticamente o IP da conexão';
			case 'settings.advanced.sectionTitle': return 'Avançado';
			case 'settings.advanced.debugMode': return 'Modo de desenvolvedor';
			case 'settings.advanced.debugModeMsg': return 'Reinicie o aplicativo para aplicar esta alteração';
			case 'settings.advanced.memoryLimit': return 'Limite de memória';
			case 'settings.advanced.memoryLimitMsg': return 'Ative se você estiver enfrentando erros de falta de memória ou travamentos frequentes do aplicativo';
			case 'settings.advanced.resetTunnel': return 'Redefinir perfil VPN';
			case 'settings.network.perAppProxyPageTitle': return 'Proxy por aplicativo';
			case 'settings.network.perAppProxyModes.off': return 'Tudo';
			case 'settings.network.perAppProxyModes.offMsg': return 'Proxy de todos os aplicativos';
			case 'settings.network.perAppProxyModes.include': return 'Proxy';
			case 'settings.network.perAppProxyModes.includeMsg': return 'Aplicativos selecionados apenas por proxy';
			case 'settings.network.perAppProxyModes.exclude': return 'Ignorar';
			case 'settings.network.perAppProxyModes.excludeMsg': return 'Não faça proxy de aplicativos selecionados';
			case 'settings.network.showSystemApps': return 'Mostrar aplicativos do sistema';
			case 'settings.network.hideSystemApps': return 'Ocultar aplicativos do sistema';
			case 'settings.network.clearSelection': return 'Limpar seleção';
			case 'settings.geoAssets.pageTitle': return 'Ativos de roteamento';
			case 'settings.geoAssets.geoip': return 'GeoIP';
			case 'settings.geoAssets.geosite': return 'Geossítio';
			case 'settings.geoAssets.version': return ({required Object version}) => 'Versão ${version}';
			case 'settings.geoAssets.fileMissing': return 'Arquivo faltando';
			case 'settings.geoAssets.update': return 'Atualizar';
			case 'settings.geoAssets.download': return 'Download';
			case 'settings.geoAssets.failureMsg': return 'Falha ao atualizar o recurso';
			case 'settings.geoAssets.successMsg': return 'Recurso atualizado com sucesso';
			case 'settings.geoAssets.addRecommended': return 'Adicionar recursos recomendados';
			case 'settings.geoAssets.missingGeoAssetsMsg': return 'Os arquivos dos ativos de roteamento selecionados estão ausentes. Baixe-os ou escolha os existentes.';
			case 'about.pageTitle': return 'Sobre';
			case 'about.version': return 'Versão';
			case 'about.sourceCode': return 'Código fonte';
			case 'about.telegramChannel': return 'Canal Telegram';
			case 'about.checkForUpdate': return 'Verifique atualizações';
			case 'about.privacyPolicy': return 'Política de Privacidade';
			case 'about.termsAndConditions': return 'Termos e Condições';
			case 'appUpdate.notAvailableMsg': return 'Já usando a versão mais recente';
			case 'appUpdate.dialogTitle': return 'Atualização disponível';
			case 'appUpdate.updateMsg': return 'Uma nova versão de ${_root.general.appTitle} está disponível. Gostaria de atualizar agora?';
			case 'appUpdate.currentVersionLbl': return 'Versão Atual';
			case 'appUpdate.newVersionLbl': return 'Nova versão';
			case 'appUpdate.updateNowBtnTxt': return 'Atualizar agora';
			case 'appUpdate.laterBtnTxt': return 'Mais tarde';
			case 'appUpdate.ignoreBtnTxt': return 'Ignorar';
			case 'tray.dashboard': return 'Painel';
			case 'tray.quit': return 'Sair';
			case 'tray.open': return 'Abrir';
			case 'tray.status.connect': return 'Conectar';
			case 'tray.status.connecting': return 'Conectando';
			case 'tray.status.disconnect': return 'desconectar';
			case 'tray.status.disconnecting': return 'Desconectando';
			case 'failure.unexpected': return 'Erro inesperado';
			case 'failure.clash.unexpected': return 'Erro inesperado';
			case 'failure.clash.core': return ({required Object reason}) => 'Erro de conflito ${reason}';
			case 'failure.singbox.unexpected': return 'Erro de serviço inesperado';
			case 'failure.singbox.serviceNotRunning': return 'O serviço não está em execução';
			case 'failure.singbox.missingPrivilege': return 'Privilégio ausente';
			case 'failure.singbox.missingPrivilegeMsg': return 'O modo VPN requer privilégios de administrador. Reinicie o aplicativo como administrador ou altere o modo de serviço.';
			case 'failure.singbox.missingGeoAssets': return 'Recursos geográficos ausentes';
			case 'failure.singbox.missingGeoAssetsMsg': return 'Os recursos geográficos estão faltando. considere alterar o recurso ativo ou baixar um selecionado nas configurações.';
			case 'failure.singbox.invalidConfigOptions': return 'Opções de configuração inválidas';
			case 'failure.singbox.invalidConfig': return 'Configuração inválida';
			case 'failure.singbox.create': return 'Erro ao criar serviço';
			case 'failure.singbox.start': return 'Erro de inicialização do serviço';
			case 'failure.connectivity.unexpected': return 'Falha inesperada';
			case 'failure.connectivity.missingVpnPermission': return 'Permissão VPN ausente';
			case 'failure.connectivity.missingNotificationPermission': return 'Permissão de notificação ausente';
			case 'failure.connectivity.core': return 'Erro central';
			case 'failure.profiles.unexpected': return 'Erro inesperado';
			case 'failure.profiles.notFound': return 'Perfil Não Encontrado';
			case 'failure.profiles.invalidConfig': return 'Configurações inválidas';
			case 'failure.profiles.invalidUrl': return 'URL inválida';
			case 'failure.connection.unexpected': return 'Erro de conexão inesperado';
			case 'failure.connection.timeout': return 'Tempo limite de conexão';
			case 'failure.connection.badResponse': return 'Erro na Resposta';
			case 'failure.connection.connectionError': return 'Erro de conexão';
			case 'failure.connection.badCertificate': return 'Erro no certificado';
			case 'failure.geoAssets.unexpected': return 'Erro inesperado';
			case 'failure.geoAssets.notUpdate': return 'Nenhuma atualização disponível';
			case 'failure.geoAssets.activeNotFound': return 'Recurso geográfico ativo não encontrado';
			case 'play.title': return 'Hiddify (Pré-visualização)';
			case 'play.short_description': return 'Auto, SSH, VLESS, VMess, Trojan, Reality, Sing-Box, Clash, XRay, Shadowsocks';
			case 'connection.tapToConnect': return 'Toque para conectar';
			case 'connection.connecting': return 'Conectando';
			case 'connection.disconnecting': return 'Desconectando';
			case 'connection.connected': return 'Conectado';
			case 'connection.experimentalNotice': return 'Recursos experimentais em uso';
			case 'connection.experimentalNoticeMsg': return 'Você ativou alguns recursos experimentais que podem afetar a qualidade da conexão e causar erros inesperados. Você sempre pode alterar ou redefinir essas opções na página de opções de configuração.';
			case 'connection.disableExperimentalNotice': return 'Não mostrar novamente';
			case 'config.resetBtn': return 'Redefinir opções';
			case 'config.serviceMode': return 'Modo de serviço';
			case 'config.serviceModes.proxy': return 'Somente serviço de proxy';
			case 'config.serviceModes.systemProxy': return 'Definir proxy do sistema';
			case 'config.serviceModes.tun': return 'VPN';
			case 'config.serviceModes.tunService': return 'Serviço VPN';
			case 'config.section.route': return 'Opções de rota';
			case 'config.section.dns': return 'Opções de DNS';
			case 'config.section.inbound': return 'Opções de entrada';
			case 'config.section.mux': return 'Multiplexador';
			case 'config.section.outbound': return 'Opções de saída';
			case 'config.section.tlsTricks': return 'Truques TLS';
			case 'config.section.warp': return 'Opções de WARP';
			case 'config.section.misc': return 'Opções diversas';
			case 'config.warpConsent.title': return 'Consentimento WARP da Cloudflare';
			case 'config.warpConsent.description': return ({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
				const TextSpan(text: 'Cloudflare WARP é um provedor VPN WireGuard gratuito. Ao ativar esta opção, você concorda com os '),
				tos('Termos de Serviço'),
				const TextSpan(text: ' e '),
				privacy('Política de Privacidade'),
				const TextSpan(text: ' do WARP da Cloudflare.'),
			]);
			case 'config.generateWarpConfig': return 'Gerar configuração WARP';
			case 'config.missingWarpConfig': return 'Configuração WARP ausente';
			case 'config.warpConfigGenerated': return 'Configuração WARP gerada';
			case 'config.pageTitle': return 'Opções de configuração';
			case 'config.logLevel': return 'Nível de registro';
			case 'config.resolveDestination': return 'Resolver destino';
			case 'config.ipv6Mode': return 'Rota IPv6';
			case 'config.ipv6Modes.disable': return 'Desabilitar';
			case 'config.ipv6Modes.enable': return 'Habilitar';
			case 'config.ipv6Modes.prefer': return 'Preferido';
			case 'config.ipv6Modes.only': return 'Exclusivo';
			case 'config.remoteDnsAddress': return 'DNS remoto';
			case 'config.remoteDnsDomainStrategy': return 'Estratégia de Domínio DNS Remoto';
			case 'config.directDnsAddress': return 'DNS direto';
			case 'config.directDnsDomainStrategy': return 'Estratégia de Domínio DNS Direto';
			case 'config.mixedPort': return 'Porta Mista';
			case 'config.localDnsPort': return 'Porta DNS local';
			case 'config.allowConnectionFromLan': return 'Permitir conexão da LAN';
			case 'config.tunImplementation': return 'Implementação TUN';
			case 'config.mtu': return 'MTU';
			case 'config.connectionTestUrl': return 'URL de teste de conexão';
			case 'config.urlTestInterval': return 'Intervalo de teste de URL';
			case 'config.enableClashApi': return 'Ativar API Clash';
			case 'config.clashApiPort': return 'Porta da API Clash';
			case 'config.enableTun': return 'Ativar TUN';
			case 'config.setSystemProxy': return 'Definir proxy do sistema';
			case 'config.enableDnsRouting': return 'Habilitar roteamento DNS';
			case 'config.enableFakeDns': return 'Habilitar DNS falso';
			case 'config.bypassLan': return 'Ignorar LAN';
			case 'config.strictRoute': return 'Rota Estrita';
			case 'config.enableTlsFragment': return 'Habilitar fragmento TLS';
			case 'config.tlsFragmentSize': return 'Tamanho do fragmento TLS';
			case 'config.tlsFragmentSleep': return 'Suspensão do fragmento TLS';
			case 'config.enableTlsMixedSniCase': return 'Habilitar caso SNI misto TLS';
			case 'config.enableTlsPadding': return 'Habilitar preenchimento TLS';
			case 'config.tlsPaddingSize': return 'Preenchimento TLS';
			case 'config.enableMux': return 'Habilitar Mux';
			case 'config.muxProtocol': return 'Protocolo Mux';
			case 'config.muxMaxStreams': return 'Máximo de fluxos simultâneos';
			case 'config.enableWarp': return 'Habilitar WARP';
			case 'config.warpDetourMode': return 'Modo de desvio';
			case 'config.warpDetourModes.inbound': return 'Desvie o WARP através de proxies';
			case 'config.warpDetourModes.outbound': return 'Desviar proxies através do WARP';
			case 'config.warpLicenseKey': return 'Chave de licença';
			case 'config.warpCleanIp': return 'Limpar IP';
			case 'config.warpPort': return 'Porta';
			case 'config.warpNoise': return 'Contagem de ruído';
			case 'config.warpNoiseDelay': return 'Atraso de ruído';
			default: return null;
		}
	}
}

extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'Hiddify';
			case 'general.reset': return 'Сброс';
			case 'general.toggle.enabled': return 'Включено';
			case 'general.toggle.disabled': return 'Отключено';
			case 'general.state.disable': return 'Отключить';
			case 'general.sort': return 'Сортировка';
			case 'general.sortBy': return 'Сортировка';
			case 'general.addToClipboard': return 'Копировать в буфер обмена';
			case 'general.notSet': return 'Не задано';
			case 'general.agree': return 'Соглашаться';
			case 'general.decline': return 'Отклонить';
			case 'general.unknown': return 'Неизвестный';
			case 'general.hidden': return 'Скрытый';
			case 'general.timeout': return 'Таймаут';
			case 'general.clipboardExportSuccessMsg': return 'Добавлено в буфер обмена';
			case 'general.showMore': return 'Раскрыть';
			case 'general.showLess': return 'Свернуть';
			case 'general.openAppSettings': return 'Открыть настройки приложения';
			case 'general.grantPermission': return 'Дать разрешение';
			case 'intro.termsAndPolicyCaution': return ({required InlineSpanBuilder tap}) => TextSpan(children: [
				const TextSpan(text: 'Продолжая, Вы соглашаетесь с '),
				tap(_root.about.termsAndConditions),
			]);
			case 'intro.start': return 'Начать';
			case 'home.pageTitle': return 'Главная';
			case 'home.emptyProfilesMsg': return 'Начните с добавления профиля подписки';
			case 'home.noActiveProfileMsg': return 'Выберите профиль';
			case 'stats.traffic': return 'Трафик';
			case 'stats.trafficLive': return 'Текущий трафик';
			case 'stats.trafficTotal': return 'Трафик';
			case 'stats.uplink': return 'Скорость отправки';
			case 'stats.downlink': return 'Скорость загрузки';
			case 'stats.connection': return 'Соединение';
			case 'stats.speed': return 'Скорость';
			case 'stats.totalTransferred': return 'В общем передано';
			case 'profile.overviewPageTitle': return 'Профили';
			case 'profile.detailsPageTitle': return 'Профиль';
			case 'profile.activeProfileNameSemanticLabel': return ({required Object name}) => 'Имя активного профиля: «${name}».';
			case 'profile.activeProfileBtnSemanticLabel': return 'Посмотреть все профили';
			case 'profile.nonActiveProfileBtnSemanticLabel': return ({required Object name}) => 'Выберите «${name}» в качестве активного профиля.';
			case 'profile.subscription.traffic': return 'Трафик';
			case 'profile.subscription.updatedTimeAgo': return ({required Object timeago}) => 'Обновлено ${timeago}';
			case 'profile.subscription.remainingDuration': return ({required Object duration}) => 'Ещё ${duration} дн';
			case 'profile.subscription.remainingTrafficSemanticLabel': return ({required Object consumed, required Object total}) => 'Использовано ${consumed} трафика из ${total}';
			case 'profile.subscription.expired': return 'Истекло';
			case 'profile.subscription.noTraffic': return 'Нет доступного трафика';
			case 'profile.subscription.upload': return 'Загрузка';
			case 'profile.subscription.download': return 'Скачивание';
			case 'profile.subscription.total': return 'Общий трафик';
			case 'profile.subscription.expireDate': return 'Истечение срока действия';
			case 'profile.sortBy.lastUpdate': return 'по последнему обновлению';
			case 'profile.sortBy.name': return 'по названию';
			case 'profile.add.buttonText': return 'Новый профиль';
			case 'profile.add.shortBtnTxt': return 'Новый профиль';
			case 'profile.add.fromClipboard': return 'Добавить из буфера обмена';
			case 'profile.add.scanQr': return 'Сканировать QR-код';
			case 'profile.add.qrScanner.permissionDeniedError': return 'Нет прав';
			case 'profile.add.qrScanner.unexpectedError': return 'Неизвестная ошибка';
			case 'profile.add.qrScanner.torchSemanticLabel': return 'Вспышка';
			case 'profile.add.qrScanner.facingSemanticLabel': return 'Фронтальная камера';
			case 'profile.add.qrScanner.permissionRequest': return 'Разрешение камере сканировать QR-код';
			case 'profile.add.manually': return 'Ввести вручную';
			case 'profile.add.addingProfileMsg': return 'Добавление профиля';
			case 'profile.add.failureMsg': return 'Не удалось добавить профиль';
			case 'profile.update.buttonTxt': return 'Обновить';
			case 'profile.update.tooltip': return 'Обновить профиль';
			case 'profile.update.updateSubscriptions': return 'Обновить подписки';
			case 'profile.update.failureMsg': return 'Не удалось обновить профиль';
			case 'profile.update.successMsg': return 'Профиль успешно обновлён';
			case 'profile.update.namedFailureMsg': return ({required Object name}) => 'Не удалось обновить "${name}".';
			case 'profile.update.namedSuccessMsg': return ({required Object name}) => '"${name}" успешно обновлено';
			case 'profile.share.buttonText': return 'Поделиться';
			case 'profile.share.exportToClipboardSuccess': return 'Ссылка скопирована в буфер обмена';
			case 'profile.share.exportSubLinkToClipboard': return 'Скопировать ссылку на подписку в буфер обмена';
			case 'profile.share.subLinkQrCode': return 'QR-код ссылки на подписку';
			case 'profile.share.exportConfigToClipboard': return 'Скопировать конфигурацию в буфер обмена';
			case 'profile.share.exportConfigToClipboardSuccess': return 'Конфигурация скопирована в буфер обмена';
			case 'profile.edit.buttonTxt': return 'Изменить';
			case 'profile.edit.selectActiveTxt': return 'Выберите активный профиль';
			case 'profile.delete.buttonTxt': return 'Удалить';
			case 'profile.delete.confirmationMsg': return 'Безвозвратно удалить профиль?';
			case 'profile.delete.successMsg': return 'Профиль успешно удалён';
			case 'profile.save.buttonText': return 'Сохранить';
			case 'profile.save.successMsg': return 'Профиль успешно сохранён';
			case 'profile.save.failureMsg': return 'Не удалось сохранить профиль';
			case 'profile.detailsForm.nameLabel': return 'Имя';
			case 'profile.detailsForm.nameHint': return 'Имя профиля';
			case 'profile.detailsForm.urlLabel': return 'URL';
			case 'profile.detailsForm.urlHint': return 'Полный URL конфигурации';
			case 'profile.detailsForm.emptyNameMsg': return 'Поле «Имя» обязательно';
			case 'profile.detailsForm.invalidUrlMsg': return 'Неправильный URL';
			case 'profile.detailsForm.lastUpdate': return 'Последнее обновление';
			case 'profile.detailsForm.updateInterval': return 'Автоматическое обновление';
			case 'profile.detailsForm.updateIntervalDialogTitle': return 'Интервал обновления (в часах)';
			case 'proxies.pageTitle': return 'Прокси';
			case 'proxies.emptyProxiesMsg': return 'Нет доступных прокси';
			case 'proxies.delayTestTooltip': return 'Тестирование задержки';
			case 'proxies.sortTooltip': return 'Сортировка прокси';
			case 'proxies.checkIp': return 'Проверить IP';
			case 'proxies.unknownIp': return 'Неизвестный IP';
			case 'proxies.sortOptions.unsorted': return 'По умолчанию';
			case 'proxies.sortOptions.name': return 'По алфавиту';
			case 'proxies.sortOptions.delay': return 'По задержке';
			case 'proxies.activeProxySemanticLabel': return 'Активный прокси';
			case 'proxies.delaySemantics.result': return ({required Object delay}) => 'Задержка: ${delay}ms';
			case 'proxies.delaySemantics.timeout': return 'Тест задержки по таймауту';
			case 'proxies.delaySemantics.testing': return 'Задержка: Тестирование...';
			case 'proxies.ipInfoSemantics.address': return 'IP адрес';
			case 'proxies.ipInfoSemantics.country': return 'Страна';
			case 'logs.pageTitle': return 'Журналы';
			case 'logs.filterHint': return 'Фильтр';
			case 'logs.allLevelsFilter': return 'Все';
			case 'logs.shareCoreLogs': return 'Поделиться журналами ядра';
			case 'logs.shareAppLogs': return 'Поделиться журналами приложения';
			case 'logs.pauseTooltip': return 'Приостановить';
			case 'logs.resumeTooltip': return 'Возобновить';
			case 'logs.clearTooltip': return 'Очистить';
			case 'settings.pageTitle': return 'Настройки';
			case 'settings.requiresRestartMsg': return 'Чтобы применить изменения, перезапустите приложение.';
			case 'settings.experimental': return 'Экспериментальный';
			case 'settings.experimentalMsg': return 'Функции с флагом «Экспериментально» все еще находятся в разработке и могут вызвать проблемы.';
			case 'settings.exportOptions': return 'Экспорт параметров в буфер обмена';
			case 'settings.exportAllOptions': return 'Экспорт параметров в буфер обмена (отладка)';
			case 'settings.importOptions': return 'Импорт параметров из буфера обмена';
			case 'settings.importOptionsMsg': return 'Это перезапишет все параметры конфига предоставленными значениями. Вы уверены?';
			case 'settings.general.sectionTitle': return 'Основные';
			case 'settings.general.locale': return 'Язык';
			case 'settings.general.region': return 'Регион';
			case 'settings.general.regionMsg': return 'Помогает установить параметры по умолчанию для обхода внутренних адресов.';
			case 'settings.general.regions.ir': return 'Иран (ir)';
			case 'settings.general.regions.cn': return 'Китай (cn)';
			case 'settings.general.regions.ru': return 'Россия (ru)';
			case 'settings.general.regions.af': return 'Afghanistan (af)';
			case 'settings.general.regions.other': return 'Другой';
			case 'settings.general.themeMode': return 'Оформление';
			case 'settings.general.themeModes.system': return 'Системная тема';
			case 'settings.general.themeModes.dark': return 'Тёмная тема';
			case 'settings.general.themeModes.light': return 'Светлая тема';
			case 'settings.general.themeModes.black': return 'Чёрная тема';
			case 'settings.general.enableAnalytics': return 'Сбор аналитики';
			case 'settings.general.enableAnalyticsMsg': return 'Сбор данных аналитики и отправка отчётов о сбоях для улучшения приложения';
			case 'settings.general.autoStart': return 'Запуск при загрузке';
			case 'settings.general.silentStart': return 'Тихий запуск';
			case 'settings.general.openWorkingDir': return 'Открыть рабочую папку';
			case 'settings.general.ignoreBatteryOptimizations': return 'Отключить оптимизацию батареи';
			case 'settings.general.ignoreBatteryOptimizationsMsg': return 'Отключение ограничений для оптимальной производительности VPN.';
			case 'settings.general.dynamicNotification': return 'Отображение скорости в уведомлении';
			case 'settings.general.autoIpCheck': return 'Автоматически проверять IP соединение';
			case 'settings.advanced.sectionTitle': return 'Расширенные';
			case 'settings.advanced.debugMode': return 'Режим отладки';
			case 'settings.advanced.debugModeMsg': return 'Чтобы применить изменения, перезапустите приложение.';
			case 'settings.advanced.memoryLimit': return 'Ограничение памяти';
			case 'settings.advanced.memoryLimitMsg': return 'Включите, если у вас возникают ошибки нехватки памяти или частые сбои приложения.';
			case 'settings.advanced.resetTunnel': return 'Сбросить профиль VPN';
			case 'settings.network.perAppProxyPageTitle': return 'Раздельное проксирование';
			case 'settings.network.perAppProxyModes.off': return 'Все';
			case 'settings.network.perAppProxyModes.offMsg': return 'Проксировать все приложения';
			case 'settings.network.perAppProxyModes.include': return 'Прокси';
			case 'settings.network.perAppProxyModes.includeMsg': return 'Проксировать выбранные приложения';
			case 'settings.network.perAppProxyModes.exclude': return 'Обход';
			case 'settings.network.perAppProxyModes.excludeMsg': return 'Не проксировать выбранные приложения';
			case 'settings.network.showSystemApps': return 'Показать системные приложения';
			case 'settings.network.hideSystemApps': return 'Скрыть системные приложения';
			case 'settings.network.clearSelection': return 'Очистить выбор';
			case 'settings.geoAssets.pageTitle': return 'Активы маршрутизации';
			case 'settings.geoAssets.geoip': return 'GeoIP';
			case 'settings.geoAssets.geosite': return 'Geosite';
			case 'settings.geoAssets.version': return ({required Object version}) => 'Версия ${version}';
			case 'settings.geoAssets.fileMissing': return 'Файл отсутствует';
			case 'settings.geoAssets.update': return 'Обновить';
			case 'settings.geoAssets.download': return 'Скачать';
			case 'settings.geoAssets.failureMsg': return 'Не удалось обновить объект';
			case 'settings.geoAssets.successMsg': return 'Объект успешно обновлен';
			case 'settings.geoAssets.addRecommended': return 'Добавить рекомендуемые активы';
			case 'settings.geoAssets.missingGeoAssetsMsg': return 'Файлы выбранных ресурсов маршрутизации отсутствуют. Либо скачайте их, либо выберите существующие.';
			case 'about.pageTitle': return 'О программе';
			case 'about.version': return 'Версия';
			case 'about.sourceCode': return 'Исходный код';
			case 'about.telegramChannel': return 'Telegram-канал';
			case 'about.checkForUpdate': return 'Проверка обновления';
			case 'about.privacyPolicy': return 'Политика конфиденциальности';
			case 'about.termsAndConditions': return 'Условия и положения';
			case 'appUpdate.notAvailableMsg': return 'Установлена последняя версия';
			case 'appUpdate.dialogTitle': return 'Доступно обновление';
			case 'appUpdate.updateMsg': return 'Доступна новая версия ${_root.general.appTitle}. Обновить сейчас?';
			case 'appUpdate.currentVersionLbl': return 'Текущая версия';
			case 'appUpdate.newVersionLbl': return 'Новая версия';
			case 'appUpdate.updateNowBtnTxt': return 'Обновить';
			case 'appUpdate.laterBtnTxt': return 'Позже';
			case 'appUpdate.ignoreBtnTxt': return 'Пропустить';
			case 'tray.dashboard': return 'Панель';
			case 'tray.quit': return 'Выход';
			case 'tray.open': return 'Открыть';
			case 'tray.status.connect': return 'Подключиться';
			case 'tray.status.connecting': return 'Подключение';
			case 'tray.status.disconnect': return 'Отключиться';
			case 'tray.status.disconnecting': return 'Отключение';
			case 'failure.unexpected': return 'Непредвиденная ошибка';
			case 'failure.clash.unexpected': return 'Непредвиденная ошибка (Clash)';
			case 'failure.clash.core': return ({required Object reason}) => 'Ошибка ${reason}';
			case 'failure.singbox.unexpected': return 'Непредвиденная ошибка (SingBox)';
			case 'failure.singbox.serviceNotRunning': return 'Сервис не запущен';
			case 'failure.singbox.missingPrivilege': return 'Отсутствие прав';
			case 'failure.singbox.missingPrivilegeMsg': return 'Режим VPN требует прав администратора. Перезапустите приложение от имени администратора или измените режим работы приложения.';
			case 'failure.singbox.missingGeoAssets': return 'Отсутствуют географические ресурсы';
			case 'failure.singbox.missingGeoAssetsMsg': return 'Георесурсы отсутствуют. Изменените выбранный ресурс или загрузите собственный в настройках.';
			case 'failure.singbox.invalidConfigOptions': return 'Неправильные параметры конфигурации';
			case 'failure.singbox.invalidConfig': return 'Неправильная конфигурация';
			case 'failure.singbox.create': return 'Ошибка создания сервиса';
			case 'failure.singbox.start': return 'Ошибка запуска сервиса';
			case 'failure.connectivity.unexpected': return 'Непредвиденная ошибка';
			case 'failure.connectivity.missingVpnPermission': return 'Отсутствует разрешение VPN';
			case 'failure.connectivity.missingNotificationPermission': return 'Отсутствует разрешение на показ уведомлений';
			case 'failure.connectivity.core': return 'Ошибка ядра';
			case 'failure.profiles.unexpected': return 'Непредвиденная ошибка';
			case 'failure.profiles.notFound': return 'Профиль не найден';
			case 'failure.profiles.invalidConfig': return 'Неправильная конфигурация';
			case 'failure.profiles.invalidUrl': return 'Неправильный URL';
			case 'failure.connection.unexpected': return 'Неожиданная ошибка подключения';
			case 'failure.connection.timeout': return 'Истекло время подключения';
			case 'failure.connection.badResponse': return 'Неправильный ответ';
			case 'failure.connection.connectionError': return 'Ошибка подключения';
			case 'failure.connection.badCertificate': return 'Неправильный сертификат';
			case 'failure.geoAssets.unexpected': return 'Неожиданная ошибка';
			case 'failure.geoAssets.notUpdate': return 'Нет доступных обновлений';
			case 'failure.geoAssets.activeNotFound': return 'Активный географический актив не найден';
			case 'play.title': return 'Hiddify (Preview)';
			case 'play.short_description': return 'Автовыбор, SSH, VLESS, Vmess, Trojan, Reality, Sing-Box, Clash, Xray, Shadowsocks';
			case 'play.full_description': return 'Основная цель Hiddify — предоставить безопасный, удобный и эффективный клиент туннелирования. Он позволяет направлять весь трафик или трафик выбранного приложения на указанный Вами удалённый сервер.\nПримечание: мы не предоставляем серверы, пользователи должны сами обеспечивать конфиденциальность своих действий в Интернете, используя собственный сервер или доверенные серверы. Поддерживаются сервера с:— Обычной ссылка на подписку V2ray/Xray— Ссылкой на подписку Clash— Ссылко на подписку на Sing–Box\nВ чём уникальные особенности? — Удобство — Оптимизация и скорость — Автоматический выбор минимальной задержки — Отображение информации об использовании — Простой импорт ссылок одним щелчком мыши — Бесплатно и без рекламы — Простое переключение ссылок — …и много больше\nПоддерживаются:• Все протоколы, поддерживаемые Sing-Box• VLESS + xtls reality, vision• VMESS• Trojan• ShoadowSocks• Reality• V2ray• Hystria2• TUIC• SSH• ShadowTLS\nИсходный код доступен по адресу https://github.com/hiddify/Hiddify-Next.Ядро приложения основано на открытом исходном коде Sing–Box.\nОписание разрешений:— СЛУЖБА VPN: поскольку целью данного приложения является предоставление безопасного, удобного и эффективного клиента туннелирования, это разрешение необходимо, чтобы иметь возможность направлять трафик через туннель на удалённый сервер.— ЗАПРОС ВСЕХ ПАКЕТОВ: это разрешение позволяет добавлять или удалять определённые приложения из списка для туннелирования.— ИНФОРМИРОВАНИЕ О ЗАВЕРШЕНИИ ЗАГРУЗКИ: это разрешение можно включить или отключить в настройках приложения, чтобы (де)активировать запуск приложения при загрузке устройства.— ПОСТОЯННОЕ УВЕДОМЛЕНИЕ: это разрешение необходимо, так как используется приоритетная служба для обеспечения непрерывной работы VPN.— Приложение не содержит рекламы. Сбор аналитики и данных о сбоях происходят только с явного согласия пользователя при первом использовании приложения.';
			case 'connection.tapToConnect': return 'Нажмите для подключения';
			case 'connection.connecting': return 'Подключение';
			case 'connection.disconnecting': return 'Отключение';
			case 'connection.connected': return 'Подключено';
			case 'connection.reconnect': return 'Переподключение';
			case 'connection.connectAnyWay': return 'Подключение';
			case 'connection.experimentalNotice': return 'Экспериментальные функции в использовании';
			case 'connection.experimentalNoticeMsg': return 'Вы включили некоторые экспериментальные функции, которые могут повлиять на качество соединения и вызвать непредвиденные ошибки. Вы всегда можете изменить или сбросить эти параметры на странице параметров конфигурации.';
			case 'connection.disableExperimentalNotice': return 'Больше не показывать';
			case 'connection.reconnectMsg': return 'Переподключить для применения изменений';
			case 'config.resetBtn': return 'Сбросить параметры';
			case 'config.serviceMode': return 'Режим работы';
			case 'config.quickSettings': return 'Быстрые настройки';
			case 'config.setupWarp': return 'Настроить WARP';
			case 'config.allOptions': return 'Все параметры конфига';
			case 'config.serviceModes.proxy': return 'Прокси';
			case 'config.serviceModes.systemProxy': return 'Системный прокси';
			case 'config.serviceModes.tun': return 'VPN';
			case 'config.serviceModes.tunService': return 'VPN сервис';
			case 'config.shortServiceModes.proxy': return 'Прокси';
			case 'config.shortServiceModes.systemProxy': return 'Системный прокси';
			case 'config.shortServiceModes.tun': return 'VPN';
			case 'config.shortServiceModes.tunService': return 'VPN сервис';
			case 'config.section.route': return 'Варианты маршрутизации';
			case 'config.section.dns': return 'Параметры DNS';
			case 'config.section.inbound': return 'Входящие параметры';
			case 'config.section.mux': return 'Multiplexer';
			case 'config.section.outbound': return 'Outbound Options';
			case 'config.section.tlsTricks': return 'TLS Tricks';
			case 'config.section.warp': return 'WARP Options';
			case 'config.section.misc': return 'Разные параметры';
			case 'config.warpConsent.title': return 'Согласие Cloudflare WARP';
			case 'config.warpConsent.description': return ({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
				const TextSpan(text: 'Cloudflare WARP — бесплатный провайдер WireGuard VPN. Включая эту опцию, вы соглашаетесь с '),
				tos('Условиями обслуживания'),
				const TextSpan(text: ' и '),
				privacy('Политикой конфиденциальности'),
				const TextSpan(text: ' Cloudflare WARP.'),
			]);
			case 'config.generateWarpConfig': return 'Cгенерировать WARP конфиг';
			case 'config.missingWarpConfig': return 'Отсутствует WARP конфиг';
			case 'config.warpConfigGenerated': return 'WARP конфиг сгенерирован';
			case 'config.pageTitle': return 'Параметры конфигурации';
			case 'config.logLevel': return 'Подробность журналирования';
			case 'config.resolveDestination': return 'Определять назначение';
			case 'config.ipv6Mode': return 'Маршрутизация IPv6';
			case 'config.ipv6Modes.disable': return 'Отключено';
			case 'config.ipv6Modes.enable': return 'Включено';
			case 'config.ipv6Modes.prefer': return 'Предпочтительно';
			case 'config.ipv6Modes.only': return 'Исключительно';
			case 'config.remoteDnsAddress': return 'Удалённый DNS';
			case 'config.remoteDnsDomainStrategy': return 'Стратегия удалённого домена DNS';
			case 'config.directDnsAddress': return 'Прямой DNS';
			case 'config.directDnsDomainStrategy': return 'Стратегия прямого домена DNS';
			case 'config.mixedPort': return 'Смешанный порт';
			case 'config.tproxyPort': return 'Прозрачный прокси порт';
			case 'config.localDnsPort': return 'Локальный порт DNS';
			case 'config.allowConnectionFromLan': return 'Allow Connection from LAN';
			case 'config.tunImplementation': return 'Реализация TUN';
			case 'config.mtu': return 'MTU';
			case 'config.connectionTestUrl': return 'URL проверки подключения';
			case 'config.urlTestInterval': return 'Интервал проверки URL';
			case 'config.enableClashApi': return 'Использовать Clash API';
			case 'config.clashApiPort': return 'Порт Clash API';
			case 'config.enableTun': return 'Использовать TUN';
			case 'config.setSystemProxy': return 'Использовать системный прокси';
			case 'config.enableDnsRouting': return 'Enable DNS Routing';
			case 'config.enableFakeDns': return 'Использовать поддельную DNS';
			case 'config.bypassLan': return 'Обход локальной сети';
			case 'config.strictRoute': return 'Строгая маршрутизация';
			case 'config.enableTlsFragment': return 'Enable TLS Fragment';
			case 'config.tlsFragmentSize': return 'TLS Fragment Size';
			case 'config.tlsFragmentSleep': return 'TLS Fragment Sleep';
			case 'config.enableTlsMixedSniCase': return 'Enable TLS Mixed SNI Case';
			case 'config.enableTlsPadding': return 'Enable TLS Padding';
			case 'config.tlsPaddingSize': return 'TLS Padding';
			case 'config.enableMux': return 'Enable Mux';
			case 'config.muxProtocol': return 'Mux Protocol';
			case 'config.muxMaxStreams': return 'Max Concurrent Streams';
			case 'config.enableWarp': return 'Enable WARP';
			case 'config.warpDetourMode': return 'Detour Mode';
			case 'config.warpDetourModes.proxyOverWarp': return 'Работа прокси через WARP';
			case 'config.warpDetourModes.warpOverProxy': return 'Работа WARP через прокси';
			case 'config.warpDetourModes.inbound': return 'Detour WARP through proxies';
			case 'config.warpDetourModes.outbound': return 'Detour proxies through WARP';
			case 'config.warpLicenseKey': return 'License Key';
			case 'config.warpCleanIp': return 'Clean IP';
			case 'config.warpPort': return 'Port';
			case 'config.warpNoise': return 'Noise';
			default: return null;
		}
	}
}

extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'Hiddify';
			case 'general.reset': return 'Sıfırla';
			case 'general.toggle.enabled': return 'Etkin';
			case 'general.toggle.disabled': return 'Devre dışı';
			case 'general.state.disable': return 'Devre dışı bırak';
			case 'general.sort': return 'Sırala';
			case 'general.sortBy': return 'Sırala';
			case 'general.addToClipboard': return 'Panoya ekle';
			case 'general.notSet': return 'Ayarlanmadı';
			case 'general.agree': return 'Kabul etmek';
			case 'general.decline': return 'Reddetmek';
			case 'general.unknown': return 'Bilinmeyen';
			case 'general.timeout': return 'Zaman aşımı';
			case 'intro.termsAndPolicyCaution': return ({required InlineSpanBuilder tap}) => TextSpan(children: [
				const TextSpan(text: 'devam ederek '),
				tap(_root.about.termsAndConditions),
				const TextSpan(text: ' kabul etmiş olursunuz'),
			]);
			case 'intro.start': return 'Başla';
			case 'home.pageTitle': return 'Ana Sayfa';
			case 'home.emptyProfilesMsg': return 'Aboneliği profili ekleyerek başlayın';
			case 'home.noActiveProfileMsg': return 'Profil seçin';
			case 'stats.trafficLive': return 'Canlı Trafik';
			case 'stats.trafficTotal': return 'Toplam Trafik';
			case 'stats.uplink': return 'Çıkış Yolu';
			case 'stats.downlink': return 'Giriş Yolu';
			case 'profile.overviewPageTitle': return 'Profiller';
			case 'profile.detailsPageTitle': return 'Profil';
			case 'profile.activeProfileNameSemanticLabel': return ({required Object name}) => 'Aktif profil adı: "${name}".';
			case 'profile.activeProfileBtnSemanticLabel': return 'Tüm profilleri görüntüleyin';
			case 'profile.nonActiveProfileBtnSemanticLabel': return ({required Object name}) => 'Aktif profil olarak "${name}" seçeneğini seçin.';
			case 'profile.subscription.traffic': return 'Trafik';
			case 'profile.subscription.updatedTimeAgo': return ({required Object timeago}) => '${timeago} güncellendi';
			case 'profile.subscription.remainingDuration': return ({required Object duration}) => '${duration} Gün Kaldı';
			case 'profile.subscription.remainingTrafficSemanticLabel': return ({required Object consumed, required Object total}) => '${consumed}/${total} trafik tüketildi';
			case 'profile.subscription.expired': return 'Süresi Doldu';
			case 'profile.subscription.noTraffic': return 'Kotal Doldu';
			case 'profile.sortBy.lastUpdate': return 'Yakın zamanda güncellendi';
			case 'profile.sortBy.name': return 'Alfabetik';
			case 'profile.add.buttonText': return 'Yeni profil';
			case 'profile.add.shortBtnTxt': return 'Yeni profil';
			case 'profile.add.fromClipboard': return 'Panodan Ekle';
			case 'profile.add.scanQr': return 'QR kodunu tarayın';
			case 'profile.add.qrScanner.permissionDeniedError': return 'İzin reddedildi';
			case 'profile.add.qrScanner.unexpectedError': return 'Bir şeyler yanlış gitti';
			case 'profile.add.qrScanner.torchSemanticLabel': return 'El feneri';
			case 'profile.add.qrScanner.facingSemanticLabel': return 'Kameraya önü';
			case 'profile.add.manually': return 'Manuel giriş';
			case 'profile.add.addingProfileMsg': return 'Profil Ekleniyor';
			case 'profile.add.failureMsg': return 'Profil eklenemedi';
			case 'profile.update.buttonTxt': return 'Güncelle';
			case 'profile.update.tooltip': return 'Profili Güncelle';
			case 'profile.update.updateSubscriptions': return 'Abonelikleri Güncelle';
			case 'profile.update.failureMsg': return 'Profil güncellenemedi';
			case 'profile.update.successMsg': return 'Profil başarıyla güncellendi';
			case 'profile.update.namedFailureMsg': return ({required Object name}) => '"${name}" güncellenemedi';
			case 'profile.update.namedSuccessMsg': return ({required Object name}) => '"${name}" başarıyla güncellendi';
			case 'profile.share.buttonText': return 'Paylaş';
			case 'profile.share.exportToClipboardSuccess': return 'Panoya aktarıldı';
			case 'profile.share.exportSubLinkToClipboard': return 'Abonelik bağlantısını panoya aktar';
			case 'profile.share.subLinkQrCode': return 'QR kodun abonelik bağlantısı ';
			case 'profile.share.exportConfigToClipboard': return 'Yapılandırmayı panoya aktar';
			case 'profile.share.exportConfigToClipboardSuccess': return 'Yapılandırma panoya kopyalandı';
			case 'profile.edit.buttonTxt': return 'Düzenle';
			case 'profile.edit.selectActiveTxt': return 'Etkin profili seçin';
			case 'profile.delete.buttonTxt': return 'Sil';
			case 'profile.delete.confirmationMsg': return 'Profil kalıcı olarak silinsin mi?';
			case 'profile.delete.successMsg': return 'Profil başarıyla silindi';
			case 'profile.save.buttonText': return 'Kaydet';
			case 'profile.save.successMsg': return 'Profil başarıyla kaydedildi';
			case 'profile.save.failureMsg': return 'Profil kaydedilemedi';
			case 'profile.detailsForm.nameLabel': return 'İsim';
			case 'profile.detailsForm.nameHint': return 'Profil ismi';
			case 'profile.detailsForm.urlLabel': return 'URL';
			case 'profile.detailsForm.urlHint': return 'Tam yapılandırma URL\'i';
			case 'profile.detailsForm.emptyNameMsg': return 'İsim gerekli';
			case 'profile.detailsForm.invalidUrlMsg': return 'Geçersiz URL';
			case 'profile.detailsForm.lastUpdate': return 'Son Güncelleme';
			case 'profile.detailsForm.updateInterval': return 'Otomatik güncelleme';
			case 'profile.detailsForm.updateIntervalDialogTitle': return 'Otomatik Güncelleme Aralığı (saat olarak)';
			case 'proxies.pageTitle': return 'Proxyler';
			case 'proxies.emptyProxiesMsg': return 'Kullanılabilir proxy yok';
			case 'proxies.delayTestTooltip': return 'Test Gecikmesi';
			case 'proxies.sortTooltip': return 'Proxy\'leri Sırala';
			case 'proxies.sortOptions.unsorted': return 'Varsayılan';
			case 'proxies.sortOptions.name': return 'Alfabetik olarak';
			case 'proxies.sortOptions.delay': return 'Gecikmeyle';
			case 'logs.pageTitle': return 'Log';
			case 'logs.filterHint': return 'Filtre';
			case 'logs.allLevelsFilter': return 'Tüm';
			case 'logs.shareCoreLogs': return 'Çekirdek Loglarını Paylaş';
			case 'logs.shareAppLogs': return 'Uygulama Loglarını paylaş';
			case 'logs.pauseTooltip': return 'Duraklat';
			case 'logs.resumeTooltip': return 'Devam et';
			case 'logs.clearTooltip': return 'Temizle';
			case 'settings.pageTitle': return 'Ayarlar';
			case 'settings.requiresRestartMsg': return 'Bunun etkili olması için uygulamayı yeniden başlatın';
			case 'settings.experimental': return 'Deneysel';
			case 'settings.experimentalMsg': return 'Deneysel işaretli özellikler hâlâ geliştirilme aşamasındadır ve sorunlara neden olabilir.';
			case 'settings.general.sectionTitle': return 'Genel';
			case 'settings.general.locale': return 'Dil';
			case 'settings.general.region': return 'Bölge';
			case 'settings.general.regionMsg': return 'Yerel adresleri atlamak için varsayılan seçeneği seçebilirsin';
			case 'settings.general.regions.ir': return 'İran (ir)';
			case 'settings.general.regions.cn': return 'Çin (cn)';
			case 'settings.general.regions.ru': return 'Rusya (ru)';
			case 'settings.general.regions.af': return 'Afghanistan (af)';
			case 'settings.general.regions.other': return 'Diğer';
			case 'settings.general.themeMode': return 'Tema Modu';
			case 'settings.general.themeModes.system': return 'Sistem temasını takip et';
			case 'settings.general.themeModes.dark': return 'Karanlık mod';
			case 'settings.general.themeModes.light': return 'Işık modu';
			case 'settings.general.themeModes.black': return 'Siyah mod';
			case 'settings.general.enableAnalytics': return 'Analitikleri Etkinleştir';
			case 'settings.general.enableAnalyticsMsg': return 'Uygulamayı iyileştirmek için analiz toplama ve kilitlenme raporları göndermeye izni verin';
			case 'settings.general.autoStart': return 'Önyüklemede Başlat';
			case 'settings.general.silentStart': return 'Sessiz Başlatma';
			case 'settings.general.openWorkingDir': return 'Çalışma Dizinini Aç';
			case 'settings.general.ignoreBatteryOptimizations': return 'Pil Optimizasyonunu Devre Dışı Bırak';
			case 'settings.general.ignoreBatteryOptimizationsMsg': return 'Optimum VPN performansı için kısıtlamaları kaldırın';
			case 'settings.general.dynamicNotification': return 'Bildirimde hızı göster';
			case 'settings.advanced.sectionTitle': return 'Gelişmiş';
			case 'settings.advanced.debugMode': return 'Hata ayıklama modu';
			case 'settings.advanced.debugModeMsg': return 'Bu değişikliği uygulamak için uygulamayı yeniden başlatın';
			case 'settings.advanced.memoryLimit': return 'Bellek Sınırı';
			case 'settings.advanced.memoryLimitMsg': return 'Yetersiz bellek hataları veya sık sık uygulama çökmesi yaşıyorsanız etkinleştirin';
			case 'settings.advanced.resetTunnel': return 'VPN Profilini Sıfırla';
			case 'settings.network.perAppProxyPageTitle': return 'Uygulama başına Proxy';
			case 'settings.network.perAppProxyModes.off': return 'Tümü';
			case 'settings.network.perAppProxyModes.offMsg': return 'Proxy tüm uygulamalar';
			case 'settings.network.perAppProxyModes.include': return 'Proxy';
			case 'settings.network.perAppProxyModes.includeMsg': return 'Yalnızca proxy seçilen uygulamalar';
			case 'settings.network.perAppProxyModes.exclude': return 'Atlatma';
			case 'settings.network.perAppProxyModes.excludeMsg': return 'Seçilen uygulamalara proxy uygulama';
			case 'settings.network.showSystemApps': return 'Sistem uygulamalarını göster';
			case 'settings.network.hideSystemApps': return 'Sistem uygulamalarını gizle';
			case 'settings.network.clearSelection': return 'Seçimi temizle';
			case 'settings.geoAssets.pageTitle': return 'Varlıkları Yönlendirme';
			case 'settings.geoAssets.geoip': return 'GeoIP';
			case 'settings.geoAssets.geosite': return 'Geosite';
			case 'settings.geoAssets.version': return ({required Object version}) => 'Sürüm ${version}';
			case 'settings.geoAssets.fileMissing': return 'Eksik dosya';
			case 'settings.geoAssets.update': return 'Güncelleme';
			case 'settings.geoAssets.download': return 'İndirmek';
			case 'settings.geoAssets.failureMsg': return 'Öğe güncellenemedi';
			case 'settings.geoAssets.successMsg': return 'Öğe başarıyla güncellendi';
			case 'settings.geoAssets.addRecommended': return 'Önerilen Varlıkları Ekle';
			case 'settings.geoAssets.missingGeoAssetsMsg': return 'Seçilen yönlendirme varlıklarının dosyaları eksik. Bunları indirin veya mevcut olanları seçin.';
			case 'about.pageTitle': return 'Hakkında';
			case 'about.version': return 'Sürüm';
			case 'about.sourceCode': return 'Kaynak kodu';
			case 'about.telegramChannel': return 'Telegram Kanalı';
			case 'about.checkForUpdate': return 'Güncellemeleri kontrol et';
			case 'about.privacyPolicy': return 'Gizlilik Politikası';
			case 'about.termsAndConditions': return 'Şartlar ve koşullar';
			case 'appUpdate.notAvailableMsg': return ' En son sürümü kullanıyorsunuz';
			case 'appUpdate.dialogTitle': return 'Yeni Güncell';
			case 'appUpdate.updateMsg': return '${_root.general.appTitle}\'ın yeni bir sürümü mevcut. Şimdi güncellemek ister misiniz?';
			case 'appUpdate.currentVersionLbl': return 'Şimdiki versiyon';
			case 'appUpdate.newVersionLbl': return 'Yeni versiyon';
			case 'appUpdate.updateNowBtnTxt': return 'Şimdi güncelle';
			case 'appUpdate.laterBtnTxt': return 'Daha sonra';
			case 'appUpdate.ignoreBtnTxt': return 'Görmezden gel';
			case 'tray.dashboard': return 'Gösterge Paneli';
			case 'tray.quit': return 'Çıkış yap';
			case 'tray.open': return 'Açık';
			case 'tray.status.connect': return 'Bağlan';
			case 'tray.status.connecting': return 'Bağlanıyor';
			case 'tray.status.disconnect': return 'Bağlantıyı kes';
			case 'tray.status.disconnecting': return 'Bağlantı kesiliyor';
			case 'failure.unexpected': return 'Beklenmeyen hata';
			case 'failure.clash.unexpected': return 'Beklenmeyen hata';
			case 'failure.clash.core': return ({required Object reason}) => 'Çakışma Hatası ${reason}';
			case 'failure.singbox.unexpected': return 'Beklenmedik Hizmet Hatası';
			case 'failure.singbox.serviceNotRunning': return 'Servis çalışmıyor';
			case 'failure.singbox.missingPrivilege': return 'Eksik Ayrıcalık';
			case 'failure.singbox.missingPrivilegeMsg': return 'VPN modu yönetici ayrıcalıkları gerektirir. Uygulamayı yönetici olarak yeniden başlatın veya hizmet modunu değiştirin.';
			case 'failure.singbox.missingGeoAssets': return 'Eksik Coğrafi Varlıklar';
			case 'failure.singbox.missingGeoAssetsMsg': return 'Coğrafi öğeler eksik. Aktif varlığı değiştirmeyi veya ayarlarda seçileni indirmeyi düşünün.';
			case 'failure.singbox.invalidConfigOptions': return 'Geçersiz yapılandırma seçenekleri';
			case 'failure.singbox.invalidConfig': return 'Geçersiz Yapılandırma';
			case 'failure.singbox.create': return 'Servis oluşturma hatası';
			case 'failure.singbox.start': return 'Servis başlatma hatası';
			case 'failure.connectivity.unexpected': return 'Beklenmedik Hata';
			case 'failure.connectivity.missingVpnPermission': return 'Eksik VPN İzni';
			case 'failure.connectivity.missingNotificationPermission': return 'Eksik Bildirim İzni';
			case 'failure.connectivity.core': return 'Temel Hata';
			case 'failure.profiles.unexpected': return 'Beklenmedik hata';
			case 'failure.profiles.notFound': return 'Profil bulunamadı';
			case 'failure.profiles.invalidConfig': return 'Geçersiz Yapılandırmalar';
			case 'failure.profiles.invalidUrl': return 'Geçersiz URL';
			case 'failure.connection.unexpected': return 'Beklenmeyen bağlantı hatası';
			case 'failure.connection.timeout': return 'Bağlantı zamanaşımına uğradı';
			case 'failure.connection.badResponse': return 'Kötü yanıt';
			case 'failure.connection.connectionError': return 'Bağlantı hatası';
			case 'failure.connection.badCertificate': return 'Kötü sertifika';
			case 'failure.geoAssets.unexpected': return 'Beklenmeyen hata';
			case 'failure.geoAssets.notUpdate': return 'Güncelleme mevcut değil';
			case 'failure.geoAssets.activeNotFound': return 'Etkin Coğrafi Varlık Bulunamadı';
			case 'play.title': return 'Hiddify (Önizleme)';
			case 'play.short_description': return 'Otomatik, SSH, VLESS, Vmess, Trojan, Reality, Sing-Box, Clash, Xray, Shadowsocks';
			case 'play.full_description': return 'Hiddify\'in temel hedefi güvenli, kullanıcı dostu ve verimli bir tünel istemcisi sağlamaktır. VPN Hizmeti iznini kullanarak tüm trafiği veya seçilen uygulama trafiğini seçtiğiniz uzak bir sunucuya yönlendirmenizi sağlar. Not: Herhangi bir sunucu sağlamıyoruz; kullanıcıların kendi barındırılan sunucularını veya güvenilir sunucularını kullanarak çevrimiçi etkinliklerinin gizli kalmasını sağlamaları gerekir. Sunucuları aşağıdakilerle destekliyoruz: - Normal V2ray/Xray Abonelik Bağlantısı - Clash Abonelik Bağlantısı - Sing-Box Abonelik Bağlantısı Benzersiz özelliklerimiz nelerdir? - Kullanıcı Dostu - Optimize Edilmiş ve Hızlı - En Düşük Ping\'i otomatik olarak seçin - Kullanıcı kullanım bilgilerini gösterin - Derin bağlantı kullanarak tek tıklamayla alt bağlantıyı kolayca içe aktarın - Ücretsiz ve ADS Yok - Kullanıcı alt bağlantılarını kolayca değiştirin - giderek daha fazla Destek: - Sing-Box tarafından desteklenen tüm Protokoller - VLESS + xtls gerçeklik, vizyon - VMESS - Trojan - ShoadowSocks - Reality - V2ray - Hystria2 - TUIC - SSH - ShadowTLS Kaynak kodu https://github.com/hiddify/Hiddify-Next adresinde mevcuttur. Uygulama çekirdeği açık tabanlıdır. kaynak şarkı kutusu. İzin Açıklaması: - VPN Hizmeti: Bu uygulamanın amacı güvenli, kullanıcı dostu ve verimli bir tünel istemcisi sağlamak olduğundan, trafiği tünel aracılığıyla uzak sunucuya yönlendirebilmek için bu izne ihtiyacımız var. - TÜM PAKETLERİ SORGULAYIN: Bu izin, kullanıcıların tünelleme için belirli uygulamaları dahil etmesine veya hariç tutmasına izin vermek için kullanılır. - ALMA ÖNYÜKLEME TAMAMLANDI: Bu izin, cihaz önyüklemesi sırasında bu uygulamayı etkinleştirmek için uygulama ayarlarından etkinleştirilebilir veya devre dışı bırakılabilir. - BİLDİRİMLER SONRASI: VPN hizmetinin sürekli çalışmasını sağlamak için bir ön plan hizmeti kullandığımız için bu izin önemlidir. - Bu uygulama reklam içermez. Analitik ve kilitlenme verileri yalnızca uygulamanın ilk kullanımında kullanıcının açık rızası ile gerçekleşir.';
			case 'connection.tapToConnect': return 'Bağlanmak için dokunun';
			case 'connection.connecting': return 'Bağlanıyor';
			case 'connection.disconnecting': return 'Bağlantı kesiliyor';
			case 'connection.connected': return 'Bağlandı';
			case 'connection.experimentalNotice': return 'Kullanımdaki Deneysel Özellikler';
			case 'connection.experimentalNoticeMsg': return 'Bağlantı kalitesini etkileyebilecek ve beklenmeyen hatalara neden olabilecek bazı deneysel özellikleri etkinleştirdiniz. Bu seçenekleri istediğiniz zaman Yapılandırma seçenekleri sayfasından değiştirebilir veya sıfırlayabilirsiniz.';
			case 'connection.disableExperimentalNotice': return 'Bir daha gösterme';
			case 'config.resetBtn': return 'Ayarları sıfırla';
			case 'config.serviceMode': return 'Servis modu';
			case 'config.serviceModes.proxy': return 'Proxy';
			case 'config.serviceModes.systemProxy': return 'Sistem Proxy';
			case 'config.serviceModes.tun': return 'VPN';
			case 'config.section.route': return 'Rota Seçenekleri';
			case 'config.section.dns': return 'DNS Seçenekleri';
			case 'config.section.inbound': return 'Gelen Seçenekler';
			case 'config.section.mux': return 'Multiplexer';
			case 'config.section.outbound': return 'Outbound Options';
			case 'config.section.tlsTricks': return 'TLS Tricks';
			case 'config.section.warp': return 'WARP Options';
			case 'config.section.misc': return 'Çeşitli Seçenekler';
			case 'config.warpConsent.title': return 'Cloudflare WARP Onayı';
			case 'config.warpConsent.description': return ({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
				const TextSpan(text: 'Cloudflare WARP ücretsiz bir WireGuard VPN sağlayıcısıdır. Bu seçeneği etkinleştirerek Cloudflare WARP\'ın '),
				tos('Hizmet Şartları'),
				const TextSpan(text: ' ve '),
				privacy('Gizlilik Politikası'),
				const TextSpan(text: '\'nı kabul etmiş olursunuz.'),
			]);
			case 'config.pageTitle': return 'Yapılandırma Seçenekleri';
			case 'config.logLevel': return 'Log Seviyesi';
			case 'config.resolveDestination': return 'Hedefi Çöz';
			case 'config.ipv6Mode': return 'IPv6 Rotası';
			case 'config.ipv6Modes.disable': return 'Devre dışı bırak';
			case 'config.ipv6Modes.enable': return 'Etkinleştir';
			case 'config.ipv6Modes.prefer': return 'Tercih edilen';
			case 'config.ipv6Modes.only': return 'Özel';
			case 'config.remoteDnsAddress': return 'Uzak DNS';
			case 'config.remoteDnsDomainStrategy': return 'Uzak DNS Domain Stratejisi';
			case 'config.directDnsAddress': return 'Doğrudan DNS';
			case 'config.directDnsDomainStrategy': return 'Doğrudan DNS Domain Stratejisi';
			case 'config.mixedPort': return 'Mixed Port';
			case 'config.localDnsPort': return 'Yerel DNS Bağlantı Noktası';
			case 'config.allowConnectionFromLan': return 'Allow Connection from LAN';
			case 'config.tunImplementation': return 'TUN İmplementasyonu';
			case 'config.mtu': return 'MTU';
			case 'config.connectionTestUrl': return 'Bağlantı Testi URL\'i';
			case 'config.urlTestInterval': return 'URL Test Aralığı';
			case 'config.enableClashApi': return 'Clash API\'yi etkinleştir';
			case 'config.clashApiPort': return 'Clash API Bağlantı Noktası';
			case 'config.enableTun': return 'TUN\'u etkinleştir';
			case 'config.setSystemProxy': return 'Sistem Proxy\'sini Ayarla';
			case 'config.enableDnsRouting': return 'Enable DNS Routing';
			case 'config.enableFakeDns': return 'Sahte DNS\'yi Etkinleştir';
			case 'config.bypassLan': return 'Lan\'ı Atla';
			case 'config.strictRoute': return 'Kesin Rota';
			case 'config.enableTlsFragment': return 'Enable TLS Fragment';
			case 'config.tlsFragmentSize': return 'TLS Fragment Size';
			case 'config.tlsFragmentSleep': return 'TLS Fragment Sleep';
			case 'config.enableTlsMixedSniCase': return 'Enable TLS Mixed SNI Case';
			case 'config.enableTlsPadding': return 'Enable TLS Padding';
			case 'config.tlsPaddingSize': return 'TLS Padding';
			case 'config.enableMux': return 'Enable Mux';
			case 'config.muxProtocol': return 'Mux Protocol';
			case 'config.muxMaxStreams': return 'Max Concurrent Streams';
			case 'config.enableWarp': return 'Enable WARP';
			case 'config.warpDetourMode': return 'Detour Mode';
			case 'config.warpDetourModes.inbound': return 'Detour WARP through proxies';
			case 'config.warpDetourModes.outbound': return 'Detour proxies through WARP';
			case 'config.warpLicenseKey': return 'License Key';
			case 'config.warpCleanIp': return 'Clean IP';
			case 'config.warpPort': return 'Port';
			case 'config.warpNoise': return 'Noise';
			default: return null;
		}
	}
}

extension on TranslationsZhCn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'Hiddify';
			case 'general.reset': return '重置';
			case 'general.toggle.enabled': return '启用';
			case 'general.toggle.disabled': return '禁用';
			case 'general.state.disable': return '禁用';
			case 'general.sort': return '排序';
			case 'general.sortBy': return '排序方式';
			case 'general.addToClipboard': return '添加到剪贴板';
			case 'general.notSet': return '未设置';
			case 'general.agree': return '同意';
			case 'general.decline': return '拒绝';
			case 'general.unknown': return '未知';
			case 'general.hidden': return '隐藏';
			case 'general.timeout': return '超时';
			case 'general.clipboardExportSuccessMsg': return '已导出到剪切板';
			case 'general.showMore': return '显示更多';
			case 'general.showLess': return '显示更少';
			case 'general.openAppSettings': return '打开应用设置';
			case 'general.grantPermission': return '授予权限';
			case 'intro.termsAndPolicyCaution': return ({required InlineSpanBuilder tap}) => TextSpan(children: [
				const TextSpan(text: '继续即表示您同意 '),
				tap(_root.about.termsAndConditions),
			]);
			case 'intro.start': return '开始';
			case 'home.pageTitle': return '主页';
			case 'home.emptyProfilesMsg': return '从添加订阅配置文件开始';
			case 'home.noActiveProfileMsg': return '选择配置文件';
			case 'stats.traffic': return '流量';
			case 'stats.trafficLive': return '实时流量';
			case 'stats.trafficTotal': return '总流量';
			case 'stats.uplink': return '上行';
			case 'stats.downlink': return '下行';
			case 'stats.connection': return '连接';
			case 'stats.speed': return '速度';
			case 'stats.totalTransferred': return '总传输量';
			case 'profile.overviewPageTitle': return '配置文件';
			case 'profile.detailsPageTitle': return '配置文件';
			case 'profile.activeProfileNameSemanticLabel': return ({required Object name}) => '激活的配置文件名称：“${name}”。';
			case 'profile.activeProfileBtnSemanticLabel': return '查看所有配置文件';
			case 'profile.nonActiveProfileBtnSemanticLabel': return ({required Object name}) => '选择 “${name}” 作为激活的配置文件';
			case 'profile.subscription.traffic': return '流量';
			case 'profile.subscription.updatedTimeAgo': return ({required Object timeago}) => '更新于 ${timeago}';
			case 'profile.subscription.remainingDuration': return ({required Object duration}) => '剩余 ${duration} 天';
			case 'profile.subscription.remainingTrafficSemanticLabel': return ({required Object consumed, required Object total}) => '已使用 ${consumed} 流量，共 ${total} 流量。';
			case 'profile.subscription.expired': return '已过期';
			case 'profile.subscription.noTraffic': return '超出配额';
			case 'profile.subscription.upload': return '上传';
			case 'profile.subscription.download': return '下载';
			case 'profile.subscription.total': return '总流量';
			case 'profile.subscription.expireDate': return '到期时间';
			case 'profile.subscription.status.permanent': return '长期有效';
			case 'profile.subscription.status.expired': return '订阅已过期，请续费';
			case 'profile.subscription.status.remainingDays': return ({required Object days}) => '有效期剩余 ${days} 天';
			case 'profile.sortBy.lastUpdate': return '最近更新';
			case 'profile.sortBy.name': return '字母顺序';
			case 'profile.add.buttonText': return '新的配置文件';
			case 'profile.add.shortBtnTxt': return '新的配置文件';
			case 'profile.add.fromClipboard': return '从剪贴板添加';
			case 'profile.add.scanQr': return '扫描二维码';
			case 'profile.add.qrScanner.permissionDeniedError': return '权限不足';
			case 'profile.add.qrScanner.unexpectedError': return '出了些问题';
			case 'profile.add.qrScanner.torchSemanticLabel': return '闪光灯';
			case 'profile.add.qrScanner.facingSemanticLabel': return '切换摄像头';
			case 'profile.add.qrScanner.permissionRequest': return '授予相机权限以允许扫描二维码';
			case 'profile.add.manually': return '手动输入';
			case 'profile.add.addingProfileMsg': return '添加配置文件';
			case 'profile.add.failureMsg': return '添加配置文件失败';
			case 'profile.update.buttonTxt': return '更新';
			case 'profile.update.tooltip': return '更新配置文件';
			case 'profile.update.updateSubscriptions': return '更新订阅';
			case 'profile.update.failureMsg': return '更新配置文件失败';
			case 'profile.update.successMsg': return '配置文件更新成功';
			case 'profile.update.namedFailureMsg': return ({required Object name}) => '无法更新"${name}"';
			case 'profile.update.namedSuccessMsg': return ({required Object name}) => '"${name}" 更新成功';
			case 'profile.share.buttonText': return '分享';
			case 'profile.share.exportToClipboardSuccess': return '导出到剪贴板';
			case 'profile.share.exportSubLinkToClipboard': return '将订阅链接导出到剪贴板';
			case 'profile.share.subLinkQrCode': return '订阅链接二维码';
			case 'profile.share.exportConfigToClipboard': return '将配置导出到剪贴板';
			case 'profile.share.exportConfigToClipboardSuccess': return '配置已复制到剪贴板';
			case 'profile.edit.buttonTxt': return '编辑';
			case 'profile.edit.selectActiveTxt': return '选择并激活配置文件';
			case 'profile.delete.buttonTxt': return '删除';
			case 'profile.delete.confirmationMsg': return '要永久删除配置文件吗？';
			case 'profile.delete.successMsg': return '配置文件删除成功';
			case 'profile.save.buttonText': return '保存';
			case 'profile.save.successMsg': return '配置文件保存成功';
			case 'profile.save.failureMsg': return '配置文件保存失败';
			case 'profile.detailsForm.nameLabel': return '名称';
			case 'profile.detailsForm.nameHint': return '配置文件名称';
			case 'profile.detailsForm.urlLabel': return '网址';
			case 'profile.detailsForm.urlHint': return '完整配置网址';
			case 'profile.detailsForm.emptyNameMsg': return '名称为必填项';
			case 'profile.detailsForm.invalidUrlMsg': return '无效的网址';
			case 'profile.detailsForm.lastUpdate': return '最后更新';
			case 'profile.detailsForm.updateInterval': return '自动更新';
			case 'profile.detailsForm.updateIntervalDialogTitle': return '自动更新间隔（小时）';
			case 'proxies.pageTitle': return '节点选择';
			case 'proxies.title': return '节点选择';
			case 'proxies.emptyProxiesMsg': return '无可用的代理';
			case 'proxies.delayTestTooltip': return '测试延迟';
			case 'proxies.sortTooltip': return '对代理进行排序';
			case 'proxies.checkIp': return '检测 IP 地址';
			case 'proxies.unknownIp': return '未知的 IP';
			case 'proxies.sortOptions.unsorted': return '默认';
			case 'proxies.sortOptions.name': return '按字母顺序';
			case 'proxies.sortOptions.delay': return '按延迟顺序';
			case 'proxies.activeProxySemanticLabel': return '当前选择的节点';
			case 'proxies.delaySemantics.result': return ({required Object delay}) => '延迟: ${delay}ms';
			case 'proxies.delaySemantics.timeout': return '延迟测试超时';
			case 'proxies.delaySemantics.testing': return '正在测试延迟';
			case 'proxies.ipInfoSemantics.address': return 'IP 地址';
			case 'proxies.ipInfoSemantics.country': return '国家';
			case 'logs.pageTitle': return '日志';
			case 'logs.filterHint': return '筛选';
			case 'logs.allLevelsFilter': return '全部';
			case 'logs.shareCoreLogs': return '分享核心日志';
			case 'logs.shareAppLogs': return '分享应用日志';
			case 'logs.pauseTooltip': return '暂停';
			case 'logs.resumeTooltip': return '恢复';
			case 'logs.clearTooltip': return '清除';
			case 'settings.pageTitle': return '设置';
			case 'settings.requiresRestartMsg': return '要使其生效，请重新启动应用程序';
			case 'settings.experimental': return '实验性选项';
			case 'settings.experimentalMsg': return '带有实验标志的功能仍在开发中，可能会出现问题。';
			case 'settings.exportOptions': return '导出选项到剪切板';
			case 'settings.exportAllOptions': return '导出选项到剪切板（用于调试）';
			case 'settings.importOptions': return '从剪切板导入选项';
			case 'settings.importOptionsMsg': return '这将使用提供的值重写所有配置选项。您确定吗？';
			case 'settings.general.sectionTitle': return '一般选项';
			case 'settings.general.locale': return '语言';
			case 'settings.general.region': return '地区';
			case 'settings.general.regionMsg': return '帮助设置默认选项以绕过国内地址';
			case 'settings.general.regions.ir': return '伊朗 (ir)';
			case 'settings.general.regions.cn': return '中国 (cn)';
			case 'settings.general.regions.ru': return '俄罗斯 (ru)';
			case 'settings.general.regions.af': return '阿富汗 (af)';
			case 'settings.general.regions.other': return '其它';
			case 'settings.general.themeMode': return '主题模式';
			case 'settings.general.themeModes.system': return '遵循系统主题';
			case 'settings.general.themeModes.dark': return '暗色';
			case 'settings.general.themeModes.light': return '浅色';
			case 'settings.general.themeModes.black': return '黑色';
			case 'settings.general.enableAnalytics': return '启用分析';
			case 'settings.general.enableAnalyticsMsg': return '授予收集分析并发送崩溃报告以改进应用程序的权限';
			case 'settings.general.autoStart': return '开机启动';
			case 'settings.general.silentStart': return '静默启动';
			case 'settings.general.openWorkingDir': return '打开工作目录';
			case 'settings.general.ignoreBatteryOptimizations': return '禁用电池优化';
			case 'settings.general.ignoreBatteryOptimizationsMsg': return '消除限制以获得最佳 VPN 性能';
			case 'settings.general.dynamicNotification': return '在通知中显示网络速度';
			case 'settings.general.hapticFeedback': return '触觉反馈';
			case 'settings.general.autoIpCheck': return '自动检查连接的 IP';
			case 'settings.advanced.sectionTitle': return '高级选项';
			case 'settings.advanced.debugMode': return '调试模式';
			case 'settings.advanced.debugModeMsg': return '重新启动应用程序以应用此更改';
			case 'settings.advanced.memoryLimit': return '内存限制';
			case 'settings.advanced.memoryLimitMsg': return '如果您遇到内存不足错误或频繁应用程序崩溃，请启用';
			case 'settings.advanced.resetTunnel': return '重置 VPN 配置文件';
			case 'settings.network.perAppProxyPageTitle': return '分应用代理';
			case 'settings.network.perAppProxyModes.off': return '全部';
			case 'settings.network.perAppProxyModes.offMsg': return '代理所有应用程序';
			case 'settings.network.perAppProxyModes.include': return '代理';
			case 'settings.network.perAppProxyModes.includeMsg': return '仅代理选定的应用程序';
			case 'settings.network.perAppProxyModes.exclude': return '绕过';
			case 'settings.network.perAppProxyModes.excludeMsg': return '不代理选中的应用程序';
			case 'settings.network.showSystemApps': return '显示系统应用程序';
			case 'settings.network.hideSystemApps': return '隐藏系统应用程序';
			case 'settings.network.clearSelection': return '清空选项';
			case 'settings.geoAssets.pageTitle': return '路由资源文件';
			case 'settings.geoAssets.geoip': return 'GeoIP';
			case 'settings.geoAssets.geosite': return 'Geosite';
			case 'settings.geoAssets.version': return ({required Object version}) => '版本 ${version}';
			case 'settings.geoAssets.fileMissing': return '文件丢失';
			case 'settings.geoAssets.update': return '更新';
			case 'settings.geoAssets.download': return '下载';
			case 'settings.geoAssets.failureMsg': return '更新资源文件失败';
			case 'settings.geoAssets.successMsg': return '已成功更新资源文件';
			case 'settings.geoAssets.addRecommended': return '添加建议的资源文件';
			case 'settings.geoAssets.missingGeoAssetsMsg': return '所选路由资源的文件丢失。下载它们或选择现有的。';
			case 'about.pageTitle': return '关于';
			case 'about.version': return '版本';
			case 'about.sourceCode': return '源代码';
			case 'about.telegramChannel': return 'Telegram 频道';
			case 'about.checkForUpdate': return '检查更新';
			case 'about.privacyPolicy': return '隐私政策';
			case 'about.termsAndConditions': return '条款和条件';
			case 'appUpdate.notAvailableMsg': return '已是最新版本';
			case 'appUpdate.dialogTitle': return '有可用更新';
			case 'appUpdate.updateMsg': return '${_root.general.appTitle} 的新版本现已推出。您想现在更新吗？';
			case 'appUpdate.currentVersionLbl': return '当前版本';
			case 'appUpdate.newVersionLbl': return '新版本';
			case 'appUpdate.updateNowBtnTxt': return '现在更新';
			case 'appUpdate.laterBtnTxt': return '以后再说';
			case 'appUpdate.ignoreBtnTxt': return '忽略';
			case 'tray.dashboard': return '仪表板';
			case 'tray.quit': return '退出';
			case 'tray.open': return '打开';
			case 'tray.status.connect': return '连接';
			case 'tray.status.connecting': return '正在连接';
			case 'tray.status.disconnect': return '断开连接';
			case 'tray.status.disconnecting': return '正在断开连接';
			case 'failure.unexpected': return '意外错误';
			case 'failure.clash.unexpected': return '意外错误';
			case 'failure.clash.core': return ({required Object reason}) => 'Clash 错误 ${reason}';
			case 'failure.singbox.unexpected': return '意外服务错误';
			case 'failure.singbox.serviceNotRunning': return '服务未运行';
			case 'failure.singbox.missingPrivilege': return '缺少权限';
			case 'failure.singbox.missingPrivilegeMsg': return 'VPN 模式需要管理员权限。以管理员身份重新启动应用程序或更改服务模式';
			case 'failure.singbox.missingGeoAssets': return '缺失 GEO 资源文件';
			case 'failure.singbox.missingGeoAssetsMsg': return '缺失 GEO 资源文件。请考虑更改激活的资源文件或在设置中下载所选资源文件。';
			case 'failure.singbox.invalidConfigOptions': return '配置选项无效';
			case 'failure.singbox.invalidConfig': return '无效配置';
			case 'failure.singbox.create': return '服务创建错误';
			case 'failure.singbox.start': return '服务启动错误';
			case 'failure.connectivity.unexpected': return '意外失败';
			case 'failure.connectivity.missingVpnPermission': return '缺少 VPN 权限';
			case 'failure.connectivity.missingNotificationPermission': return '缺少通知权限';
			case 'failure.connectivity.core': return '核心错误';
			case 'failure.profiles.unexpected': return '意外错误';
			case 'failure.profiles.notFound': return '未找到配置文件';
			case 'failure.profiles.invalidConfig': return '无效配置';
			case 'failure.profiles.invalidUrl': return '网址无效';
			case 'failure.connection.unexpected': return '意外连接错误';
			case 'failure.connection.timeout': return '连接超时';
			case 'failure.connection.badResponse': return '错误响应';
			case 'failure.connection.connectionError': return '连接错误';
			case 'failure.connection.badCertificate': return '证书无效';
			case 'failure.geoAssets.unexpected': return '意外错误';
			case 'failure.geoAssets.notUpdate': return '无可用更新';
			case 'failure.geoAssets.activeNotFound': return '未找到激活的 GEO 资源文件';
			case 'play.title': return 'Hiddify（预览）';
			case 'play.short_description': return '自动，SSH, VLESS, Vmess, Trojan, Reality, Sing-Box, Clash, Xray, Shadowsocks';
			case 'play.full_description': return 'Hiddify 的主要目标是提供安全、用户友好且高效的隧道客户端。它使您能够利用 VPN 服务权限将所有流量或选定的应用程序流量路由到您选择的远程服务器。\n\n注：我们不提供任何服务器；用户需要使用自己托管的服务器或可信的服务器来确保您在线活动的私密性。\n \n我们支持以下类型的服务器：\n- 普通 V2ray/Xray 订阅链接\n- Clash 订阅链接\n- Sing-Box 订阅链接\n\n我们的特色是什么？\n\n- 用户友好\n- 优化和高速\n- 自动选择最低延迟\n- 显示用户使用信息\n- 通过一键链接轻松导入\n- 免费且无广告\n- 轻松切换线路\n- 等等\n\n支持：\n- Sing-Box 支持的所有协议\n- VLESS + XTLS Reality、Vision 协议\n- VMESS\n- Trojan\n- Shoadowsocks\n- Reality\n- WireGuard\n- V2ray\n- Hystria2\n- TUIC\n- SSH\n- ShadowTLS\n\n\n源代码位于 https://github.com/hiddify/Hiddify-Next\n应用程序核心基于开源的 Sing-Box。\n\n权限说明：\n\n- VPN 服务：由于此应用程序的目标是提供安全、用户友好和高效的隧道客户端，我们需要此权限以能够通过隧道将流量路由到远程服务器。\n获取应用程序列表：此权限用于允许用户包括或排除特定应用程序以进行隧道传输。\n- 接收开机广播：可以从应用程序设置中启用或禁用此权限，以便在设备启动时激活此应用程序。\n- 发送通知：此权限是必需的，因为我们使用前台服务来确保 VPN 服务的持续运行。\n- 本应用程序没有广告。分析和崩溃数据仅在首次使用应用程序时经用户明确同意的情况下发生。';
			case 'connection.tapToConnect': return '点击连接';
			case 'connection.connecting': return '正在连接';
			case 'connection.disconnecting': return '正在断开连接';
			case 'connection.connected': return '已连接';
			case 'connection.reconnect': return '重新连接';
			case 'connection.connectAnyWay': return '连接';
			case 'connection.experimentalNotice': return '使用中的实验功能';
			case 'connection.experimentalNoticeMsg': return '您启用了一些实验性功能，这些功能可能会影响连接质量并导致意外错误。您可以随时从“配置”页面更改或重置这些选项。';
			case 'connection.disableExperimentalNotice': return '不再显示';
			case 'connection.reconnectMsg': return '重新连接以使更改生效';
			case 'config.resetBtn': return '重置选项';
			case 'config.serviceMode': return '服务模式';
			case 'config.quickSettings': return '快速设置';
			case 'config.setupWarp': return '配置 WARP';
			case 'config.allOptions': return '全部配置选项';
			case 'config.serviceModes.proxy': return '仅代理';
			case 'config.serviceModes.systemProxy': return '系统代理';
			case 'config.serviceModes.tun': return 'VPN';
			case 'config.serviceModes.tunService': return 'VPN 服务';
			case 'config.shortServiceModes.proxy': return '仅代理';
			case 'config.shortServiceModes.systemProxy': return '系统代理';
			case 'config.shortServiceModes.tun': return 'VPN';
			case 'config.shortServiceModes.tunService': return 'VPN 服务';
			case 'config.section.route': return '路由选项';
			case 'config.section.dns': return 'DNS 选项';
			case 'config.section.inbound': return '入站选项';
			case 'config.section.mux': return '多路复用';
			case 'config.section.outbound': return '出站选项';
			case 'config.section.tlsTricks': return 'TLS 特性';
			case 'config.section.warp': return 'WARP 选项';
			case 'config.section.misc': return '其它选项';
			case 'config.warpConsent.title': return 'Cloudflare WARP 许可条款';
			case 'config.warpConsent.description': return ({required InlineSpanBuilder tos, required InlineSpanBuilder privacy}) => TextSpan(children: [
				const TextSpan(text: 'Cloudflare WARP 是一个免费的 WireGuard VPN 提供商。启用此选项即表示您同意 Cloudflare WARP 的 '),
				tos('服务条款'),
				const TextSpan(text: ' 和 '),
				privacy('隐私政策'),
			]);
			case 'config.generateWarpConfig': return '生成 WARP 配置文件';
			case 'config.missingWarpConfig': return 'WARP 配置文件缺失';
			case 'config.warpConfigGenerated': return 'WARP 配置文件已生成';
			case 'config.pageTitle': return '配置';
			case 'config.logLevel': return '日志级别';
			case 'config.resolveDestination': return '解析目标地址';
			case 'config.ipv6Mode': return 'IPv6 路由';
			case 'config.ipv6Modes.disable': return '禁用';
			case 'config.ipv6Modes.enable': return '启用';
			case 'config.ipv6Modes.prefer': return '首选';
			case 'config.ipv6Modes.only': return '仅限';
			case 'config.remoteDnsAddress': return '远程 DNS';
			case 'config.remoteDnsDomainStrategy': return '远程 DNS 域名策略';
			case 'config.directDnsAddress': return '直连 DNS';
			case 'config.directDnsDomainStrategy': return '直连 DNS 域名策略';
			case 'config.mixedPort': return '混合端口';
			case 'config.tproxyPort': return '透明代理端口';
			case 'config.localDnsPort': return '本地 DNS 端口';
			case 'config.allowConnectionFromLan': return '允许局域网连接';
			case 'config.tunImplementation': return 'TUN 实现';
			case 'config.mtu': return 'MTU';
			case 'config.connectionTestUrl': return '连接测试网址';
			case 'config.urlTestInterval': return '网址测试间隔';
			case 'config.enableClashApi': return '启用 Clash API';
			case 'config.clashApiPort': return 'Clash API 端口';
			case 'config.enableTun': return '启用 TUN';
			case 'config.setSystemProxy': return '设置系统代理';
			case 'config.enableDnsRouting': return '启用 DNS 路由';
			case 'config.enableFakeDns': return '启用 Fake DNS';
			case 'config.bypassLan': return '绕过局域网';
			case 'config.strictRoute': return '严格路由';
			case 'config.enableTlsFragment': return '启用 TLS 数据分段';
			case 'config.tlsFragmentSize': return 'TLS 分段大小';
			case 'config.tlsFragmentSleep': return 'TLS 分段休眠';
			case 'config.enableTlsMixedSniCase': return '启用 TLS 混合 SNI 情形';
			case 'config.enableTlsPadding': return '启用 TLS 填充';
			case 'config.tlsPaddingSize': return 'TLS 填充';
			case 'config.enableMux': return '启用 Mux 多路复用';
			case 'config.muxProtocol': return 'Mux 协议';
			case 'config.muxMaxStreams': return 'Mux 最大并发数';
			case 'config.enableWarp': return '启用 WARP';
			case 'config.warpDetourMode': return '链式代理';
			case 'config.warpDetourModes.proxyOverWarp': return '通过 WARP 连接代理';
			case 'config.warpDetourModes.warpOverProxy': return '通过代理连接 WARP';
			case 'config.warpDetourModes.inbound': return '通过代理绕过 WARP';
			case 'config.warpDetourModes.outbound': return '通过 WARP 绕过代理';
			case 'config.warpLicenseKey': return '许可证密钥';
			case 'config.warpCleanIp': return '清理 IP';
			case 'config.warpPort': return '端口';
			case 'config.warpNoise': return '噪音计数';
			case 'config.warpNoiseDelay': return '噪音延迟';
			case 'subscribe.pageTitle': return '订阅';
			case 'subscribe.buyNow': return '立即购买';
			case 'subscribe.createOrder': return '创建订单';
			case 'subscribe.subscribeNow': return '立即订阅';
			case 'center.pageTitle': return '个人中心';
			case 'center.changePassword': return '修改密码';
			case 'center.myOrder': return '我的订单';
			case 'center.inviteReward': return '邀请奖励';
			case 'center.logout': return '退出登录';
			case 'center.mySubscribe': return '我的订阅';
			case 'center.mySubscribeWithName': return ({required Object name}) => '我的订阅：${name}';
			case 'center.noSubscribe': return '无订阅';
			case 'center.expired': return '订阅已过期，请续费';
			case 'center.remainingDays': return ({required Object days}) => '有效期剩余：${days} 天';
			case 'center.usedTraffic': return ({required Object used, required Object total}) => '已用流量：${used} / 总计流量：${total} GB';
			case 'center.oldPassword': return '旧密码';
			case 'center.newPassword': return '新密码';
			case 'center.cancel': return '取消';
			case 'center.confirm': return '确认';
			case 'knowledge.pageTitle': return '使用文档';
			case 'knowledge.noData': return '暂无文档';
			case 'order.pageTitle': return '订单列表';
			case 'order.noOrder': return '暂无订单';
			case 'order.detail.pageTitle': return '订单详情';
			case 'order.detail.status.pending': return '待支付';
			case 'order.detail.status.processing': return '开通中';
			case 'order.detail.status.cancelled': return '已取消';
			case 'order.detail.status.completed': return '已完成';
			case 'order.detail.status.refunded': return '已折抵';
			case 'order.detail.product': return ({required Object name}) => '产品：${name}';
			case 'order.detail.price': return ({required Object amount}) => '产品价格：${amount}';
			case 'order.detail.orderNumber': return ({required Object number}) => '订单编号：${number}';
			case 'order.detail.createTime': return ({required Object time}) => '创建时间：${time}';
			case 'order.action.cancel': return '取消订单';
			case 'order.action.pay': return '立即支付';
			case 'invite.pageTitle': return '邀请';
			case 'invite.totalCommission': return '总佣金';
			case 'invite.registeredUsers': return '已注册用户';
			case 'invite.commissionRate': return '佣金比例';
			case 'invite.pendingCommission': return '确认中佣金';
			case 'invite.inviteCode': return '邀请码';
			case 'invite.generateInviteCode': return '生成邀请码';
			case 'notice.pageTitle': return '公告';
			case 'login.title.register': return '创建新账号';
			case 'login.title.login': return '欢迎回来';
			case 'login.email.label': return '邮箱';
			case 'login.email.hint': return '请输入邮箱地址';
			case 'login.password.label': return '密码';
			case 'login.password.hint.register': return '请设置密码';
			case 'login.password.hint.login': return '请输入密码';
			case 'login.inviteCode.label': return '邀请码';
			case 'login.inviteCode.hint': return '选填';
			case 'login.emailCode.label': return '邮箱验证码';
			case 'login.emailCode.hint': return '请输入验证码';
			case 'login.emailCode.send': return '获取验证码';
			case 'login.action.register': return '注册账号';
			case 'login.action.login': return '登录';
			case 'login.action.forgotPassword': return '忘记密码？';
			case 'login.action.switchToLogin': return '已有账号？返回登录';
			case 'login.action.switchToRegister': return '没有账号？立即注册';
			case 'login.orLoginWith': return '或通过以下方式登录';
			case 'forgotPassword.pageTitle': return '忘记密码';
			case 'forgotPassword.resetPassword': return '重置密码';
			case 'forgotPassword.subTitle': return '请输入您的注册邮箱，我们将发送验证码帮助您重置密码';
			case 'forgotPassword.email.label': return '邮箱';
			case 'forgotPassword.email.hint': return '请输入邮箱地址';
			case 'forgotPassword.emailCode.label': return '邮箱验证码';
			case 'forgotPassword.emailCode.hint': return '请输入验证码';
			case 'forgotPassword.emailCode.send': return '获取验证码';
			case 'forgotPassword.newPassword.label': return '新密码';
			case 'forgotPassword.newPassword.hint': return '请输入新密码';
			case 'forgotPassword.confirmPassword.label': return '确认密码';
			case 'forgotPassword.confirmPassword.hint': return '请再次输入新密码';
			case 'forgotPassword.action.send': return '发送';
			case 'forgotPassword.action.switchToLogin': return '已有账号？返回登录';
			case 'update.title': return '更新可用';
			case 'update.message': return '新版本已经可用，请更新你的应用。';
			case 'update.action.update': return '更新';
			case 'update.action.later': return '稍后';
			case 'error.title': return '错误';
			case 'error.field.email': return '邮箱';
			case 'error.field.password': return '密码';
			default: return null;
		}
	}
}

extension on TranslationsZhTw {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'general.appTitle': return 'Hiddify';
			case 'general.reset': return '重置';
			case 'general.toggle.enabled': return '啟用';
			case 'general.toggle.disabled': return '停用';
			case 'general.state.disable': return '停用';
			case 'general.sort': return '排序';
			case 'general.sortBy': return '排序方式';
			case 'general.addToClipboard': return '新增至剪貼簿';
			case 'general.timeout': return '暫停';
			case 'intro.termsAndPolicyCaution': return ({required InlineSpanBuilder tap}) => TextSpan(children: [
				const TextSpan(text: '繼續即表示您同意協議 '),
				tap(_root.about.termsAndConditions),
			]);
			case 'intro.start': return '開始';
			case 'home.pageTitle': return '主頁';
			case 'home.emptyProfilesMsg': return '首先新增訂閱設定檔';
			case 'home.noActiveProfileMsg': return '選擇設定檔';
			case 'stats.trafficLive': return '即時流量';
			case 'stats.trafficTotal': return '總流量';
			case 'stats.uplink': return '上行';
			case 'stats.downlink': return '下行';
			case 'profile.overviewPageTitle': return '設定檔';
			case 'profile.detailsPageTitle': return '設定檔';
			case 'profile.activeProfileNameSemanticLabel': return ({required Object name}) => '活動設定檔名稱：“${name}”。';
			case 'profile.activeProfileBtnSemanticLabel': return '查看所有設定檔。';
			case 'profile.nonActiveProfileBtnSemanticLabel': return ({required Object name}) => '選擇“${name}”作為活動設定檔。';
			case 'profile.subscription.traffic': return '流量';
			case 'profile.subscription.updatedTimeAgo': return ({required Object timeago}) => '更新${timeago}';
			case 'profile.subscription.remainingDuration': return ({required Object duration}) => '剩餘 ${duration} 天';
			case 'profile.subscription.remainingTrafficSemanticLabel': return ({required Object consumed, required Object total}) => '已使用 ${consumed} 流量，總共 ${total} 流量。';
			case 'profile.subscription.expired': return '已到期';
			case 'profile.subscription.noTraffic': return '超過配額';
			case 'profile.sortBy.lastUpdate': return '最近更新';
			case 'profile.sortBy.name': return '按字母順序';
			case 'profile.add.buttonText': return '新的設定檔';
			case 'profile.add.shortBtnTxt': return '新的設定檔';
			case 'profile.add.fromClipboard': return '從剪貼簿添加';
			case 'profile.add.scanQr': return '掃描 QR code';
			case 'profile.add.qrScanner.permissionDeniedError': return '沒有權限';
			case 'profile.add.qrScanner.unexpectedError': return '出了點問題';
			case 'profile.add.qrScanner.torchSemanticLabel': return '手電筒';
			case 'profile.add.qrScanner.facingSemanticLabel': return '相機朝向';
			case 'profile.add.manually': return '手動輸入';
			case 'profile.add.addingProfileMsg': return '新增設定檔';
			case 'profile.add.failureMsg': return '新增設定檔失敗';
			case 'profile.update.buttonTxt': return '更新';
			case 'profile.update.tooltip': return '更新設定檔';
			case 'profile.update.updateSubscriptions': return '更新訂閱';
			case 'profile.update.failureMsg': return '更新設定檔失敗';
			case 'profile.update.successMsg': return '設定檔更新成功';
			case 'profile.update.namedFailureMsg': return ({required Object name}) => '無法更新“${name}”';
			case 'profile.update.namedSuccessMsg': return ({required Object name}) => '“${name}” 更新成功';
			case 'profile.share.buttonText': return '分享';
			case 'profile.share.exportToClipboardSuccess': return '匯出到剪貼簿';
			case 'profile.share.exportSubLinkToClipboard': return '將訂閱連結匯出到剪貼簿';
			case 'profile.share.subLinkQrCode': return '訂閱連結 QR code';
			case 'profile.share.exportConfigToClipboard': return '將配置匯出到剪貼簿';
			case 'profile.share.exportConfigToClipboardSuccess': return '配置已複製到剪貼簿';
			case 'profile.edit.buttonTxt': return '編輯';
			case 'profile.edit.selectActiveTxt': return '選擇並激活設定檔';
			case 'profile.delete.buttonTxt': return '刪除';
			case 'profile.delete.confirmationMsg': return '永久刪除設定檔嗎？';
			case 'profile.delete.successMsg': return '設定檔刪除成功';
			case 'profile.save.buttonText': return '儲存';
			case 'profile.save.successMsg': return '設定檔儲存成功';
			case 'profile.save.failureMsg': return '設定檔儲存失敗';
			case 'profile.detailsForm.nameLabel': return '名稱';
			case 'profile.detailsForm.nameHint': return '設定檔名稱';
			case 'profile.detailsForm.urlLabel': return '網址';
			case 'profile.detailsForm.urlHint': return '完整配置網址';
			case 'profile.detailsForm.emptyNameMsg': return '名稱為必填項';
			case 'profile.detailsForm.invalidUrlMsg': return '無效的網址';
			case 'profile.detailsForm.lastUpdate': return '最後更新';
			case 'profile.detailsForm.updateInterval': return '自動更新';
			case 'profile.detailsForm.updateIntervalDialogTitle': return '自動更新間隔（以小時為單位）';
			case 'proxies.pageTitle': return '代理';
			case 'proxies.emptyProxiesMsg': return '沒有可用的代理';
			case 'proxies.delayTestTooltip': return '測試延遲';
			case 'proxies.sortTooltip': return '對代理進行排序';
			case 'proxies.sortOptions.unsorted': return '預設';
			case 'proxies.sortOptions.name': return '按字母排序';
			case 'proxies.sortOptions.delay': return '按延遲排序';
			case 'logs.pageTitle': return '日誌';
			case 'logs.filterHint': return '篩選';
			case 'logs.allLevelsFilter': return '全部';
			case 'logs.shareCoreLogs': return '分享核心日誌';
			case 'logs.shareAppLogs': return '共享應用程式日誌';
			case 'logs.pauseTooltip': return '暫停';
			case 'logs.resumeTooltip': return '恢復';
			case 'logs.clearTooltip': return '清除';
			case 'settings.pageTitle': return '設定';
			case 'settings.requiresRestartMsg': return '若要使其生效，請重新啟動應用程式';
			case 'settings.experimental': return '實驗性的';
			case 'settings.experimentalMsg': return '帶有實驗標誌的功能仍在開發中，可能會導致問題。';
			case 'settings.general.sectionTitle': return '一般的';
			case 'settings.general.locale': return '語言';
			case 'settings.general.region': return '地區';
			case 'settings.general.regionMsg': return '幫助設定預設選項以繞過國內地址';
			case 'settings.general.regions.ir': return '伊朗 (ir)';
			case 'settings.general.regions.cn': return '中國大陸 (cn)';
			case 'settings.general.regions.ru': return '俄羅斯 (ru)';
			case 'settings.general.regions.af': return '阿富汗 (af)';
			case 'settings.general.regions.other': return '其他地區';
			case 'settings.general.themeMode': return '主題模式';
			case 'settings.general.themeModes.system': return '遵循系統主題';
			case 'settings.general.themeModes.dark': return '深色';
			case 'settings.general.themeModes.light': return '淺色';
			case 'settings.general.themeModes.black': return '黑色';
			case 'settings.general.enableAnalytics': return '啟用分析';
			case 'settings.general.enableAnalyticsMsg': return '授予收集分析並發送崩潰報告以改進應用程式的權限';
			case 'settings.general.autoStart': return '隨系統啟動';
			case 'settings.general.silentStart': return '啟動最小化';
			case 'settings.general.openWorkingDir': return '開啟工作目錄';
			case 'settings.general.ignoreBatteryOptimizations': return '停用電池優化';
			case 'settings.general.ignoreBatteryOptimizationsMsg': return '消除限制以獲得最佳 VPN 效能';
			case 'settings.general.dynamicNotification': return '在通知中顯示速度';
			case 'settings.advanced.sectionTitle': return '高級設定';
			case 'settings.advanced.debugMode': return '偵錯模式';
			case 'settings.advanced.debugModeMsg': return '重新啟動應用程式以應用此更改';
			case 'settings.advanced.memoryLimit': return '記憶體限制';
			case 'settings.advanced.memoryLimitMsg': return '如果您遇到記憶體不足錯誤或頻繁應用程式崩潰，請啟用';
			case 'settings.advanced.resetTunnel': return '重置 VPN 設定檔';
			case 'settings.network.perAppProxyPageTitle': return '應用程式 VPN 模式';
			case 'settings.network.perAppProxyModes.off': return '全部';
			case 'settings.network.perAppProxyModes.offMsg': return '代理所有應用程式';
			case 'settings.network.perAppProxyModes.include': return '代理';
			case 'settings.network.perAppProxyModes.includeMsg': return '僅代理選定的應用程式';
			case 'settings.network.perAppProxyModes.exclude': return '略過';
			case 'settings.network.perAppProxyModes.excludeMsg': return '不代理選定的應用程式';
			case 'settings.network.showSystemApps': return '顯示系統應用程式';
			case 'settings.network.hideSystemApps': return '隱藏系統應用程式';
			case 'settings.network.clearSelection': return '清空選項';
			case 'settings.geoAssets.pageTitle': return '路由資源文件';
			case 'settings.geoAssets.geoip': return 'GeoIP';
			case 'settings.geoAssets.geosite': return 'Geosite';
			case 'settings.geoAssets.version': return ({required Object version}) => '版本${version}';
			case 'settings.geoAssets.fileMissing': return '文件遺失';
			case 'settings.geoAssets.update': return '更新';
			case 'settings.geoAssets.download': return '下載';
			case 'settings.geoAssets.failureMsg': return '更新資源文件失敗';
			case 'settings.geoAssets.successMsg': return '已成功更新資源文件';
			case 'settings.geoAssets.addRecommended': return '新增推薦的資源文件';
			case 'settings.geoAssets.missingGeoAssetsMsg': return '所選路由資源的檔案遺失。下載它們或選擇現有的。';
			case 'about.pageTitle': return '關於';
			case 'about.version': return '版本';
			case 'about.sourceCode': return '原始代碼';
			case 'about.telegramChannel': return 'Telegram 頻道';
			case 'about.checkForUpdate': return '檢查更新';
			case 'about.privacyPolicy': return '隱私政策';
			case 'about.termsAndConditions': return '條款與條件';
			case 'appUpdate.notAvailableMsg': return '已經是最新版本';
			case 'appUpdate.dialogTitle': return '有可用更新';
			case 'appUpdate.updateMsg': return '${_root.general.appTitle} 的更新版本現已推出。您想現在更新嗎？';
			case 'appUpdate.currentVersionLbl': return '目前版本';
			case 'appUpdate.newVersionLbl': return '新版本';
			case 'appUpdate.updateNowBtnTxt': return '現在更新';
			case 'appUpdate.laterBtnTxt': return '之後再說';
			case 'appUpdate.ignoreBtnTxt': return '忽略';
			case 'tray.dashboard': return '儀表板';
			case 'tray.quit': return '退出';
			case 'tray.open': return '打開';
			case 'tray.status.connect': return '連接';
			case 'tray.status.connecting': return '連接中';
			case 'tray.status.disconnect': return '斷開連接';
			case 'tray.status.disconnecting': return '斷連中';
			case 'failure.unexpected': return '意外錯誤';
			case 'failure.clash.unexpected': return '意外錯誤';
			case 'failure.clash.core': return ({required Object reason}) => 'Clash 錯誤 ${reason}';
			case 'failure.singbox.unexpected': return '意外服務錯誤';
			case 'failure.singbox.serviceNotRunning': return '服務未運行';
			case 'failure.singbox.missingPrivilege': return '缺乏權限';
			case 'failure.singbox.missingPrivilegeMsg': return 'VPN 模式需要管理員權限。以管理員身分重新啟動應用程式或變更服務模式。';
			case 'failure.singbox.missingGeoAssets': return '缺少 GEO 資源文件';
			case 'failure.singbox.missingGeoAssetsMsg': return 'GEO 資源文件缺失。請考慮更改活動資源文件或在設定中下載選定的資源文件。';
			case 'failure.singbox.invalidConfigOptions': return '配置選項無效';
			case 'failure.singbox.invalidConfig': return '無效配置';
			case 'failure.singbox.create': return '服務建立錯誤';
			case 'failure.singbox.start': return '服務啟動錯誤';
			case 'failure.connectivity.unexpected': return '意外失敗';
			case 'failure.connectivity.missingVpnPermission': return '缺少 VPN 權限';
			case 'failure.connectivity.missingNotificationPermission': return '缺少通知權限';
			case 'failure.connectivity.core': return '核心錯誤';
			case 'failure.profiles.unexpected': return '意外錯誤';
			case 'failure.profiles.notFound': return '未找到設定檔';
			case 'failure.profiles.invalidConfig': return '無效配置';
			case 'failure.profiles.invalidUrl': return '無效網址';
			case 'failure.connection.unexpected': return '意外連線錯誤';
			case 'failure.connection.timeout': return '連線超時';
			case 'failure.connection.badResponse': return '錯誤反應';
			case 'failure.connection.connectionError': return '連線錯誤';
			case 'failure.connection.badCertificate': return '無效證書';
			case 'failure.geoAssets.unexpected': return '意外錯誤';
			case 'failure.geoAssets.notUpdate': return '暫無可用更新';
			case 'failure.geoAssets.activeNotFound': return '未找到活動 GEO 資源文件';
			case 'play.title': return 'Hiddify（預覽）';
			case 'play.short_description': return '自動、SSH、VLESS、Vmess、Trojan、Reality、Sing-Box、Clash、Xray、Shadowsocks';
			case 'play.full_description': return 'Hiddify 的主要目標是提供安全、使用者友好且高效率的隧道用戶端。它使您能夠利用 VPN 服務權限將所有流量或選定的應用程式流量路由到您選擇的遠端伺服器。\n\n註：我們不提供任何伺服器；使用者需要使用自己的自託管伺服器或受信任的伺服器來確保其線上活動的隱私。\n\n我們透過以下方式支援伺服器：\n - 普通 V2ray/Xray 訂閱連結\n - Clash 訂閱連結\n - Sing-Box 訂閱連結\n\n 我們的獨特功能是什麼？\n - 使用者友善\n - 最佳化且快速\n - 自動選擇最低延遲\n - 顯示使用者使用資訊\n - 使用一鍵連結輕鬆導入\n - 免費且無廣告\n - 輕鬆切換線路\n - 等等\n 支援：\n - Sing-Box 支援的所有協定 \n - VLESS + XTLS Reality、Vision 協定 \n - VMESS\n - Trojan\n - ShoadowSocks\n - Reality\n - WireGuard\n - V2ray\n - Hystria2\n - TUIC \n - SSH\n - ShadowTLS\n\n\n 原始碼位於 https://github.com/hiddify/Hiddify-Next\n 應用程式核心基於開源的 Sing-Box。\n\n權限說明：\n\n - VPN 服務：由於此應用程式的目標是提供安全性、使用者友好且高效的隧道用戶端，因此我們需要此權限才能透過隧道將流量路由到遠端伺服器。\n - 獲取應用程式列表：此權限用於允許使用者包含或排除隧道的特定應用程式。\n - 接收啟動廣播：可以從應用程式設定中啟用或停用此權限，以在裝置啟動時啟動此應用程式。\n - 發送通知：此權限至關重要，因為我們使用前台服務來確保 VPN 服務的持續運作。\n - 該應用程式沒有廣告。分析和崩潰數據僅在用戶首次使用應用程式時明確同意的情況下才會出現。';
			case 'connection.tapToConnect': return '點擊以連接';
			case 'connection.connecting': return '連接中';
			case 'connection.disconnecting': return '斷連中';
			case 'connection.connected': return '已連接';
			case 'connection.experimentalNotice': return '使用中的實驗性功能';
			case 'connection.experimentalNoticeMsg': return '您啟用了一些實驗性功能，這些功能可能會影響連線品質並導致某些意外錯誤。您始終可以從「配置選項」頁面變更或重設這些選項。';
			case 'connection.disableExperimentalNotice': return '不再提示';
			case 'config.resetBtn': return '重置選項';
			case 'config.serviceMode': return '服務模式';
			case 'config.quickSettings': return '快速設定';
			case 'config.setupWarp': return '配置 WARP';
			case 'config.serviceModes.proxy': return '僅代理';
			case 'config.serviceModes.systemProxy': return '系統代理';
			case 'config.serviceModes.tun': return 'VPN';
			case 'config.serviceModes.tunService': return 'VPN 服務';
			case 'config.section.route': return '路由選項';
			case 'config.section.dns': return 'DNS 選項';
			case 'config.section.inbound': return '入站選項';
			case 'config.section.mux': return '復用器';
			case 'config.section.outbound': return '出站選項';
			case 'config.section.tlsTricks': return 'TLS Tricks';
			case 'config.section.misc': return '其他選項';
			case 'config.warpConsent.title': return 'Cloudflare WARP 許可條款';
			case 'config.generateWarpConfig': return '生成 WARP 配置檔案';
			case 'config.missingWarpConfig': return 'WARP 配置檔案缺失';
			case 'config.warpConfigGenerated': return 'WARP 配置檔案已生成';
			case 'config.pageTitle': return '配置選項';
			case 'config.logLevel': return '日誌等級';
			case 'config.resolveDestination': return '解析目標地址';
			case 'config.ipv6Mode': return 'IPv6 路由';
			case 'config.ipv6Modes.disable': return '停用';
			case 'config.ipv6Modes.enable': return '啟用';
			case 'config.ipv6Modes.prefer': return '首選';
			case 'config.ipv6Modes.only': return '僅限';
			case 'config.remoteDnsAddress': return '遠端 DNS';
			case 'config.remoteDnsDomainStrategy': return '遠端 DNS 網域策略';
			case 'config.directDnsAddress': return '直連 DNS';
			case 'config.directDnsDomainStrategy': return '直連 DNS 網域策略';
			case 'config.mixedPort': return '混合連接埠';
			case 'config.tproxyPort': return '透明代理埠';
			case 'config.localDnsPort': return '本地 DNS 連接埠';
			case 'config.allowConnectionFromLan': return '允許區域網連線';
			case 'config.tunImplementation': return 'TUN 實現';
			case 'config.mtu': return 'MTU';
			case 'config.connectionTestUrl': return '連接測試網址';
			case 'config.urlTestInterval': return 'URL 測試間隔';
			case 'config.enableClashApi': return '啟用 Clash API';
			case 'config.clashApiPort': return 'Clash API 連接埠';
			case 'config.enableTun': return '啟用 TUN';
			case 'config.setSystemProxy': return '設定系統代理';
			case 'config.enableDnsRouting': return '啟用 DNS 路由';
			case 'config.enableFakeDns': return '啟用 Fake DNS';
			case 'config.bypassLan': return '繞過區域網路';
			case 'config.strictRoute': return '嚴格路由';
			case 'config.enableTlsFragment': return '啟用 TLS 分段';
			case 'config.tlsFragmentSize': return 'TLS 分段大小';
			case 'config.tlsFragmentSleep': return 'TLS 分段睡眠';
			case 'config.enableTlsMixedSniCase': return '啟用 TLS 混合 SNI 情況';
			case 'config.enableTlsPadding': return '啟用 TLS 填充';
			case 'config.tlsPaddingSize': return 'TLS 填充';
			case 'config.enableMux': return '啟用復用器';
			case 'config.muxProtocol': return '復用器控制';
			case 'config.muxMaxStreams': return '最大並發數';
			case 'config.enableWarp': return '啟用 WARP';
			case 'config.warpDetourMode': return '鏈式代理';
			case 'config.warpDetourModes.proxyOverWarp': return '透過 WARP 連線代理';
			case 'config.warpDetourModes.warpOverProxy': return '透過代理連線 WARP';
			case 'config.warpDetourModes.inbound': return '透過代理繞過 WARP';
			case 'config.warpDetourModes.outbound': return '透過 WARP 繞過代理';
			case 'config.warpLicenseKey': return '許可證金鑰';
			case 'config.warpCleanIp': return '清理 IP';
			case 'config.warpPort': return '埠';
			case 'config.warpNoise': return '噪音計數';
			case 'config.warpNoiseDelay': return '噪音延遲';
			default: return null;
		}
	}
}
