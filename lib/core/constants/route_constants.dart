/// Route paths, names and navigation constants
class RouteConstants {
  RouteConstants._();

  // Route Paths
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';
  static const String emailVerification = '/email-verification';
  static const String twoFactorAuth = '/two-factor-auth';

  // Main App Routes
  static const String home = '/home';
  static const String dashboard = '/dashboard';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String notifications = '/notifications';
  static const String search = '/search';

  // Wallet Routes
  static const String wallets = '/wallets';
  static const String walletDetail = '/wallet/:id';
  static const String createWallet = '/create-wallet';
  static const String importWallet = '/import-wallet';
  static const String walletBackup = '/wallet-backup';
  static const String walletRestore = '/wallet-restore';
  static const String walletSettings = '/wallet/:id/settings';

  // Transaction Routes
  static const String transactions = '/transactions';
  static const String transactionDetail = '/transaction/:id';
  static const String send = '/send';
  static const String receive = '/receive';
  static const String sendConfirm = '/send/confirm';
  static const String transactionHistory = '/transaction-history';
  static const String pendingTransactions = '/pending-transactions';

  // Exchange/Swap Routes
  static const String swap = '/swap';
  static const String swapConfirm = '/swap/confirm';
  static const String swapHistory = '/swap/history';
  static const String exchangeRates = '/exchange-rates';

  // Staking Routes
  static const String staking = '/staking';
  static const String stakingPools = '/staking/pools';
  static const String stakingDetail = '/staking/:id';
  static const String stake = '/stake';
  static const String unstake = '/unstake';
  static const String stakingHistory = '/staking/history';
  static const String stakingRewards = '/staking/rewards';

  // DeFi Routes
  static const String defi = '/defi';
  static const String liquidityPools = '/liquidity-pools';
  static const String yieldFarming = '/yield-farming';
  static const String lending = '/lending';
  static const String borrowing = '/borrowing';

  // NFT Routes
  static const String nfts = '/nfts';
  static const String nftDetail = '/nft/:id';
  static const String nftCollection = '/nft/collection/:id';
  static const String nftMarketplace = '/nft/marketplace';

  // Security Routes
  static const String security = '/security';
  static const String changePassword = '/change-password';
  static const String setupPin = '/setup-pin';
  static const String biometricSetup = '/biometric-setup';
  static const String backupSeedPhrase = '/backup-seed-phrase';
  static const String verifySeedPhrase = '/verify-seed-phrase';

  // Settings Routes
  static const String generalSettings = '/settings/general';
  static const String securitySettings = '/settings/security';
  static const String notificationSettings = '/settings/notifications';
  static const String networkSettings = '/settings/networks';
  static const String languageSettings = '/settings/language';
  static const String themeSettings = '/settings/theme';
  static const String privacySettings = '/settings/privacy';

  // Support Routes
  static const String support = '/support';
  static const String helpCenter = '/help-center';
  static const String faq = '/faq';
  static const String contactSupport = '/contact-support';
  static const String reportBug = '/report-bug';
  static const String feedback = '/feedback';

  // Legal Routes
  static const String about = '/about';
  static const String termsOfService = '/terms-of-service';
  static const String privacyPolicy = '/privacy-policy';
  static const String licenses = '/licenses';

  // Developer Routes
  static const String developerOptions = '/developer-options';
  static const String logs = '/logs';
  static const String debugInfo = '/debug-info';

  // Route Names (for named navigation)
  static const String splashName = 'splash';
  static const String onboardingName = 'onboarding';
  static const String loginName = 'login';
  static const String registerName = 'register';
  static const String forgotPasswordName = 'forgot-password';
  static const String resetPasswordName = 'reset-password';
  static const String emailVerificationName = 'email-verification';
  static const String twoFactorAuthName = 'two-factor-auth';

  static const String homeName = 'home';
  static const String dashboardName = 'dashboard';
  static const String profileName = 'profile';
  static const String settingsName = 'settings';
  static const String notificationsName = 'notifications';
  static const String searchName = 'search';

  static const String walletsName = 'wallets';
  static const String walletDetailName = 'wallet-detail';
  static const String createWalletName = 'create-wallet';
  static const String importWalletName = 'import-wallet';
  static const String walletBackupName = 'wallet-backup';
  static const String walletRestoreName = 'wallet-restore';
  static const String walletSettingsName = 'wallet-settings';

  static const String transactionsName = 'transactions';
  static const String transactionDetailName = 'transaction-detail';
  static const String sendName = 'send';
  static const String receiveName = 'receive';
  static const String sendConfirmName = 'send-confirm';
  static const String transactionHistoryName = 'transaction-history';
  static const String pendingTransactionsName = 'pending-transactions';

  static const String swapName = 'swap';
  static const String swapConfirmName = 'swap-confirm';
  static const String swapHistoryName = 'swap-history';
  static const String exchangeRatesName = 'exchange-rates';

  static const String stakingName = 'staking';
  static const String stakingPoolsName = 'staking-pools';
  static const String stakingDetailName = 'staking-detail';
  static const String stakeName = 'stake';
  static const String unstakeName = 'unstake';
  static const String stakingHistoryName = 'staking-history';
  static const String stakingRewardsName = 'staking-rewards';

  static const String defiName = 'defi';
  static const String liquidityPoolsName = 'liquidity-pools';
  static const String yieldFarmingName = 'yield-farming';
  static const String lendingName = 'lending';
  static const String borrowingName = 'borrowing';

  static const String nftsName = 'nfts';
  static const String nftDetailName = 'nft-detail';
  static const String nftCollectionName = 'nft-collection';
  static const String nftMarketplaceName = 'nft-marketplace';

  static const String securityName = 'security';
  static const String changePasswordName = 'change-password';
  static const String setupPinName = 'setup-pin';
  static const String biometricSetupName = 'biometric-setup';
  static const String backupSeedPhraseName = 'backup-seed-phrase';
  static const String verifySeedPhraseName = 'verify-seed-phrase';

  static const String generalSettingsName = 'general-settings';
  static const String securitySettingsName = 'security-settings';
  static const String notificationSettingsName = 'notification-settings';
  static const String networkSettingsName = 'interceptor-settings';
  static const String languageSettingsName = 'language-settings';
  static const String themeSettingsName = 'theme-settings';
  static const String privacySettingsName = 'privacy-settings';

  static const String supportName = 'support';
  static const String helpCenterName = 'help-center';
  static const String faqName = 'faq';
  static const String contactSupportName = 'contact-support';
  static const String reportBugName = 'report-bug';
  static const String feedbackName = 'feedback';

  static const String aboutName = 'about';
  static const String termsOfServiceName = 'terms-of-service';
  static const String privacyPolicyName = 'privacy-policy';
  static const String licensesName = 'licenses';

  static const String developerOptionsName = 'developer-options';
  static const String logsName = 'logs';
  static const String debugInfoName = 'debug-info';

  // Route Parameters
  static const String idParam = 'id';
  static const String tokenParam = 'token';
  static const String addressParam = 'address';
  static const String amountParam = 'amount';
  static const String networkParam = 'interceptor';
  static const String typeParam = 'type';

  // Query Parameters
  static const String redirectParam = 'redirect';
  static const String messageParam = 'message';
  static const String errorParam = 'error';
  static const String successParam = 'success';
  static const String tabParam = 'tab';
  static const String filterParam = 'filter';
  static const String sortParam = 'sort';
  static const String pageParam = 'page';

  // Route Groups
  static const List<String> authRoutes = [
    login,
    register,
    forgotPassword,
    resetPassword,
    emailVerification,
    twoFactorAuth,
  ];

  static const List<String> publicRoutes = [
    splash,
    onboarding,
    ...authRoutes,
    about,
    termsOfService,
    privacyPolicy,
  ];

  static const List<String> protectedRoutes = [
    home,
    dashboard,
    profile,
    settings,
    wallets,
    transactions,
    swap,
    staking,
    defi,
    nfts,
    security,
  ];

  static const List<String> bottomNavRoutes = [
    home,
    wallets,
    transactions,
    swap,
    profile,
  ];

  // Helper Methods
  static String walletDetailPath(String walletId) {
    return walletDetail.replaceAll(':$idParam', walletId);
  }

  static String transactionDetailPath(String transactionId) {
    return transactionDetail.replaceAll(':$idParam', transactionId);
  }

  static String stakingDetailPath(String stakingId) {
    return stakingDetail.replaceAll(':$idParam', stakingId);
  }

  static String nftDetailPath(String nftId) {
    return nftDetail.replaceAll(':$idParam', nftId);
  }

  static String nftCollectionPath(String collectionId) {
    return nftCollection.replaceAll(':$idParam', collectionId);
  }

  static String walletSettingsPath(String walletId) {
    return walletSettings.replaceAll(':$idParam', walletId);
  }

  static String resetPasswordPath(String token) {
    return '$resetPassword?$tokenParam=$token';
  }

  static Map<String, String> getWalletDetailParams(String walletId) {
    return {idParam: walletId};
  }

  static Map<String, String> getTransactionDetailParams(String transactionId) {
    return {idParam: transactionId};
  }

  static Map<String, String> getStakingDetailParams(String stakingId) {
    return {idParam: stakingId};
  }

  static Map<String, String> getNftDetailParams(String nftId) {
    return {idParam: nftId};
  }

  static Map<String, String> getResetPasswordParams(String token) {
    return {tokenParam: token};
  }

  static bool isAuthRoute(String route) {
    return authRoutes.contains(route);
  }

  static bool isPublicRoute(String route) {
    return publicRoutes.contains(route);
  }

  static bool isProtectedRoute(String route) {
    return protectedRoutes.any((protectedRoute) => route.startsWith(protectedRoute));
  }

  static bool isBottomNavRoute(String route) {
    return bottomNavRoutes.contains(route);
  }

  static String getRouteTitle(String route) {
    switch (route) {
      case home:
        return 'Home';
      case wallets:
        return 'Wallets';
      case transactions:
        return 'Transactions';
      case swap:
        return 'Swap';
      case staking:
        return 'Staking';
      case profile:
        return 'Profile';
      case settings:
        return 'Settings';
      case security:
        return 'Security';
      case support:
        return 'Support';
      case about:
        return 'About';
      default:
        return 'App';
    }
  }
}
