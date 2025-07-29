/// Local storage keys and configuration
class StorageConstants {
  StorageConstants._();

  // Authentication Keys
  static const String accessTokenKey = 'access_token';
  static const String refreshTokenKey = 'refresh_token';
  static const String tokenExpiryKey = 'token_expiry';
  static const String userDataKey = 'user_data';
  static const String isLoggedInKey = 'is_logged_in';

  // App Settings Keys
  static const String languageKey = 'language';
  static const String themeKey = 'theme';
  static const String firstLaunchKey = 'first_launch';
  static const String appVersionKey = 'app_version';
  static const String lastUpdateCheckKey = 'last_update_check';

  // Security Keys
  static const String biometricEnabledKey = 'biometric_enabled';
  static const String pinEnabledKey = 'pin_enabled';
  static const String pinCodeKey = 'pin_code';
  static const String autoLockEnabledKey = 'auto_lock_enabled';
  static const String autoLockTimeoutKey = 'auto_lock_timeout';
  static const String lastActiveTimeKey = 'last_active_time';

  // Notification Keys
  static const String notificationsEnabledKey = 'notifications_enabled';
  static const String pushNotificationsKey = 'push_notifications';
  static const String emailNotificationsKey = 'email_notifications';
  static const String transactionNotificationsKey = 'transaction_notifications';
  static const String priceAlertNotificationsKey = 'price_alert_notifications';
  static const String newsNotificationsKey = 'news_notifications';
  static const String fcmTokenKey = 'fcm_token';

  // Wallet Keys
  static const String walletsKey = 'wallets';
  static const String defaultWalletKey = 'default_wallet';
  static const String walletBackupKey = 'wallet_backup';
  static const String seedPhraseBackedUpKey = 'seed_phrase_backed_up';
  static const String walletCreatedAtKey = 'wallet_created_at';

  // Transaction Keys
  static const String transactionHistoryKey = 'transaction_history';
  static const String pendingTransactionsKey = 'pending_transactions';
  static const String lastTransactionSyncKey = 'last_transaction_sync';
  static const String transactionCacheKey = 'transaction_cache';

  // Network Keys
  static const String selectedNetworkKey = 'selected_network';
  static const String networkListKey = 'network_list';
  static const String customNetworksKey = 'custom_networks';
  static const String networkPreferencesKey = 'network_preferences';

  // Price and Market Keys
  static const String priceDataKey = 'price_data';
  static const String lastPriceUpdateKey = 'last_price_update';
  static const String favoriteTokensKey = 'favorite_tokens';
  static const String priceAlertsKey = 'price_alerts';
  static const String portfolioDataKey = 'portfolio_data';

  // Exchange/Swap Keys
  static const String swapHistoryKey = 'swap_history';
  static const String swapSettingsKey = 'swap_settings';
  static const String slippageToleranceKey = 'slippage_tolerance';
  static const String swapDeadlineKey = 'swap_deadline';

  // Staking Keys
  static const String stakingDataKey = 'staking_data';
  static const String stakingHistoryKey = 'staking_history';
  static const String stakingRewardsKey = 'staking_rewards';
  static const String stakingPreferencesKey = 'staking_preferences';

  // DeFi Keys
  static const String defiProtocolsKey = 'defi_protocols';
  static const String liquidityPoolsKey = 'liquidity_pools';
  static const String yieldFarmingKey = 'yield_farming';
  static const String defiPortfolioKey = 'defi_portfolio';

  // Contact and Address Book Keys
  static const String contactsKey = 'contacts';
  static const String frequentAddressesKey = 'frequent_addresses';
  static const String addressBookKey = 'address_book';
  static const String recentRecipientsKey = 'recent_recipients';

  // Cache Keys
  static const String apiCacheKey = 'api_cache';
  static const String imageCacheKey = 'image_cache';
  static const String tokenMetadataCacheKey = 'token_metadata_cache';
  static const String gasPriceCacheKey = 'gas_price_cache';
  static const String exchangeRateCacheKey = 'exchange_rate_cache';

  // Analytics and Tracking Keys
  static const String analyticsEnabledKey = 'analytics_enabled';
  static const String crashReportingEnabledKey = 'crash_reporting_enabled';
  static const String usageStatsKey = 'usage_stats';
  static const String performanceMetricsKey = 'performance_metrics';

  // Backup and Recovery Keys
  static const String backupEnabledKey = 'backup_enabled';
  static const String lastBackupTimeKey = 'last_backup_time';
  static const String backupFrequencyKey = 'backup_frequency';
  static const String cloudBackupEnabledKey = 'cloud_backup_enabled';
  static const String recoveryPhraseKey = 'recovery_phrase';

  // Developer and Debug Keys
  static const String debugModeKey = 'debug_mode';
  static const String testnetModeKey = 'testnet_mode';
  static const String developerOptionsKey = 'developer_options';
  static const String logLevelKey = 'log_level';

  // Feature Flags Keys
  static const String featureFlagsKey = 'feature_flags';
  static const String betaFeaturesKey = 'beta_features';
  static const String experimentalFeaturesKey = 'experimental_features';

  // Onboarding Keys
  static const String onboardingCompletedKey = 'onboarding_completed';
  static const String tutorialCompletedKey = 'tutorial_completed';
  static const String walletSetupCompletedKey = 'wallet_setup_completed';
  static const String securitySetupCompletedKey = 'security_setup_completed';

  // Migration Keys
  static const String migrationVersionKey = 'migration_version';
  static const String lastMigrationKey = 'last_migration';
  static const String migrationStatusKey = 'migration_status';

  // Cache Expiry Times (in minutes)
  static const int shortCacheExpiry = 5;
  static const int mediumCacheExpiry = 30;
  static const int longCacheExpiry = 60;
  static const int dailyCacheExpiry = 1440; // 24 hours

  // Storage Limits
  static const int maxCacheSize = 50 * 1024 * 1024; // 50MB
  static const int maxTransactionHistory = 1000;
  static const int maxContacts = 100;
  static const int maxPriceAlerts = 50;

  // Default Values
  static const String defaultLanguage = 'en';
  static const String defaultTheme = 'light';
  static const int defaultAutoLockTimeout = 5; // minutes
  static const double defaultSlippageTolerance = 0.5; // 0.5%
  static const int defaultSwapDeadline = 20; // minutes

  // Sensitive Keys (should be encrypted)
  static const List<String> sensitiveKeys = [
    accessTokenKey,
    refreshTokenKey,
    pinCodeKey,
    recoveryPhraseKey,
    walletBackupKey,
  ];

  // Keys that should be cleared on logout
  static const List<String> authRelatedKeys = [
    accessTokenKey,
    refreshTokenKey,
    tokenExpiryKey,
    userDataKey,
    isLoggedInKey,
    lastActiveTimeKey,
  ];

  // Keys that should be backed up
  static const List<String> backupKeys = [
    walletsKey,
    contactsKey,
    addressBookKey,
    stakingDataKey,
    priceAlertsKey,
    swapSettingsKey,
    networkPreferencesKey,
  ];

  // Helper methods
  static String getCacheKey(String prefix, String identifier) {
    return '${prefix}_$identifier';
  }

  static String getTimestampKey(String key) {
    return '${key}_timestamp';
  }

  static String getUserSpecificKey(String key, String userId) {
    return '${key}_$userId';
  }

  static bool isSensitiveKey(String key) {
    return sensitiveKeys.contains(key);
  }

  static bool isAuthRelatedKey(String key) {
    return authRelatedKeys.contains(key);
  }

  static bool shouldBackupKey(String key) {
    return backupKeys.contains(key);
  }
}
