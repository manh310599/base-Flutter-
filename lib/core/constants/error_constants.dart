/// Error codes, messages and exception handling constants
class ErrorConstants {
  ErrorConstants._();

  // HTTP Status Codes
  static const int httpOk = 200;
  static const int httpCreated = 201;
  static const int httpAccepted = 202;
  static const int httpNoContent = 204;
  static const int httpBadRequest = 400;
  static const int httpUnauthorized = 401;
  static const int httpForbidden = 403;
  static const int httpNotFound = 404;
  static const int httpMethodNotAllowed = 405;
  static const int httpConflict = 409;
  static const int httpUnprocessableEntity = 422;
  static const int httpTooManyRequests = 429;
  static const int httpInternalServerError = 500;
  static const int httpBadGateway = 502;
  static const int httpServiceUnavailable = 503;
  static const int httpGatewayTimeout = 504;

  // Custom Error Codes
  static const int networkErrorCode = 1000;
  static const int serverErrorCode = 1001;
  static const int timeoutErrorCode = 1002;
  static const int unauthorizedErrorCode = 1003;
  static const int validationErrorCode = 1004;
  static const int unknownErrorCode = 1005;
  static const int cacheErrorCode = 1006;
  static const int storageErrorCode = 1007;
  static const int permissionErrorCode = 1008;
  static const int biometricErrorCode = 1009;
  static const int locationErrorCode = 1010;

  // Blockchain Error Codes
  static const int insufficientFundsErrorCode = 2000;
  static const int invalidAddressErrorCode = 2001;
  static const int invalidAmountErrorCode = 2002;
  static const int transactionFailedErrorCode = 2003;
  static const int gasEstimationErrorCode = 2004;
  static const int networkNotSupportedErrorCode = 2005;
  static const int walletNotFoundErrorCode = 2006;
  static const int privateKeyErrorCode = 2007;
  static const int seedPhraseErrorCode = 2008;
  static const int contractErrorCode = 2009;

  // Authentication Error Codes
  static const int invalidCredentialsErrorCode = 3000;
  static const int accountLockedErrorCode = 3001;
  static const int accountNotVerifiedErrorCode = 3002;
  static const int tokenExpiredErrorCode = 3003;
  static const int tokenInvalidErrorCode = 3004;
  static const int refreshTokenErrorCode = 3005;
  static const int passwordResetErrorCode = 3006;
  static const int emailVerificationErrorCode = 3007;
  static const int twoFactorErrorCode = 3008;
  static const int biometricAuthErrorCode = 3009;

  // Validation Error Codes
  static const int emailValidationErrorCode = 4000;
  static const int passwordValidationErrorCode = 4001;
  static const int usernameValidationErrorCode = 4002;
  static const int phoneValidationErrorCode = 4003;
  static const int amountValidationErrorCode = 4004;
  static const int addressValidationErrorCode = 4005;
  static const int fileValidationErrorCode = 4006;
  static const int dateValidationErrorCode = 4007;
  static const int requiredFieldErrorCode = 4008;
  static const int lengthValidationErrorCode = 4009;

  // Generic Error Messages
  static const String networkErrorMessage = 'Network connection error. Please check your internet connection.';
  static const String serverErrorMessage = 'Server error occurred. Please try again later.';
  static const String timeoutErrorMessage = 'Request timeout. Please try again.';
  static const String unauthorizedErrorMessage = 'You are not authorized to perform this action.';
  static const String forbiddenErrorMessage = 'Access to this resource is forbidden.';
  static const String notFoundErrorMessage = 'The requested resource was not found.';
  static const String validationErrorMessage = 'Please check your input and try again.';
  static const String unknownErrorMessage = 'An unexpected error occurred. Please try again.';
  static const String cacheErrorMessage = 'Cache error occurred. Please refresh the app.';
  static const String storageErrorMessage = 'Storage error occurred. Please check available space.';
  static const String permissionErrorMessage = 'Permission denied. Please grant required permissions.';

  // Authentication Error Messages
  static const String invalidCredentialsMessage = 'Invalid email or password. Please try again.';
  static const String accountLockedMessage = 'Your account has been locked. Please contact support.';
  static const String accountNotVerifiedMessage = 'Please verify your email address to continue.';
  static const String tokenExpiredMessage = 'Your session has expired. Please log in again.';
  static const String tokenInvalidMessage = 'Invalid authentication token. Please log in again.';
  static const String refreshTokenMessage = 'Unable to refresh session. Please log in again.';
  static const String passwordResetMessage = 'Password reset failed. Please try again.';
  static const String emailVerificationMessage = 'Email verification failed. Please try again.';
  static const String twoFactorMessage = 'Two-factor authentication failed. Please try again.';
  static const String biometricAuthMessage = 'Biometric authentication failed. Please try again.';

  // Blockchain Error Messages
  static const String insufficientFundsMessage = 'Insufficient funds to complete this transaction.';
  static const String invalidAddressMessage = 'Invalid wallet address. Please check and try again.';
  static const String invalidAmountMessage = 'Invalid transaction amount. Please enter a valid amount.';
  static const String transactionFailedMessage = 'Transaction failed. Please try again.';
  static const String gasEstimationMessage = 'Unable to estimate gas fees. Please try again.';
  static const String networkNotSupportedMessage = 'This interceptor is not supported.';
  static const String walletNotFoundMessage = 'Wallet not found. Please check your wallet address.';
  static const String privateKeyMessage = 'Invalid private key. Please check and try again.';
  static const String seedPhraseMessage = 'Invalid seed phrase. Please check and try again.';
  static const String contractMessage = 'Smart contract interaction failed. Please try again.';

  // Validation Error Messages
  static const String emailValidationMessage = 'Please enter a valid email address.';
  static const String passwordValidationMessage = 'Password must be at least 8 characters long.';
  static const String usernameValidationMessage = 'Username must be 3-30 characters long.';
  static const String phoneValidationMessage = 'Please enter a valid phone number.';
  static const String amountValidationMessage = 'Please enter a valid amount.';
  static const String addressValidationMessage = 'Please enter a valid address.';
  static const String fileValidationMessage = 'Invalid file format or size.';
  static const String dateValidationMessage = 'Please enter a valid date.';
  static const String requiredFieldMessage = 'This field is required.';
  static const String lengthValidationMessage = 'Input length is invalid.';

  // File Error Messages
  static const String fileTooLargeMessage = 'File size is too large. Maximum size is 10MB.';
  static const String fileTypeNotSupportedMessage = 'File type is not supported.';
  static const String fileUploadFailedMessage = 'File upload failed. Please try again.';
  static const String fileNotFoundMessage = 'File not found.';
  static const String fileCorruptedMessage = 'File is corrupted or unreadable.';

  // Network Error Messages
  static const String noInternetMessage = 'No internet connection. Please check your interceptor.';
  static const String connectionTimeoutMessage = 'Connection timeout. Please try again.';
  static const String serverUnavailableMessage = 'Server is currently unavailable. Please try again later.';
  static const String rateLimitExceededMessage = 'Too many requests. Please wait and try again.';
  static const String maintenanceModeMessage = 'Service is under maintenance. Please try again later.';

  // Biometric Error Messages
  static const String biometricNotAvailableMessage = 'Biometric authentication is not available on this device.';
  static const String biometricNotEnrolledMessage = 'No biometric credentials are enrolled. Please set up biometric authentication.';
  static const String biometricFailedMessage = 'Biometric authentication failed. Please try again.';
  static const String biometricCancelledMessage = 'Biometric authentication was cancelled.';
  static const String biometricLockedOutMessage = 'Biometric authentication is temporarily locked. Please try again later.';

  // Location Error Messages
  static const String locationPermissionDeniedMessage = 'Location permission denied. Please grant location access.';
  static const String locationServiceDisabledMessage = 'Location services are disabled. Please enable location services.';
  static const String locationUnavailableMessage = 'Unable to determine your location. Please try again.';

  // Error Categories
  static const String networkErrorCategory = 'Network';
  static const String authErrorCategory = 'Authentication';
  static const String validationErrorCategory = 'Validation';
  static const String blockchainErrorCategory = 'Blockchain';
  static const String fileErrorCategory = 'File';
  static const String biometricErrorCategory = 'Biometric';
  static const String locationErrorCategory = 'Location';
  static const String unknownErrorCategory = 'Unknown';

  // Error Severity Levels
  static const String lowSeverity = 'low';
  static const String mediumSeverity = 'medium';
  static const String highSeverity = 'high';
  static const String criticalSeverity = 'critical';

  // Error Action Types
  static const String retryAction = 'retry';
  static const String dismissAction = 'dismiss';
  static const String loginAction = 'login';
  static const String settingsAction = 'settings';
  static const String contactSupportAction = 'contact_support';
  static const String refreshAction = 'refresh';

  // Error Display Types
  static const String snackbarDisplay = 'snackbar';
  static const String dialogDisplay = 'dialog';
  static const String bannerDisplay = 'banner';
  static const String inlineDisplay = 'inline';
  static const String pageDisplay = 'page';

  // Helper Methods
  static String getErrorMessage(int errorCode) {
    switch (errorCode) {
      case networkErrorCode:
        return networkErrorMessage;
      case serverErrorCode:
        return serverErrorMessage;
      case timeoutErrorCode:
        return timeoutErrorMessage;
      case unauthorizedErrorCode:
        return unauthorizedErrorMessage;
      case validationErrorCode:
        return validationErrorMessage;
      case insufficientFundsErrorCode:
        return insufficientFundsMessage;
      case invalidAddressErrorCode:
        return invalidAddressMessage;
      case invalidCredentialsErrorCode:
        return invalidCredentialsMessage;
      case tokenExpiredErrorCode:
        return tokenExpiredMessage;
      default:
        return unknownErrorMessage;
    }
  }

  static String getErrorCategory(int errorCode) {
    if (errorCode >= 1000 && errorCode < 2000) return networkErrorCategory;
    if (errorCode >= 2000 && errorCode < 3000) return blockchainErrorCategory;
    if (errorCode >= 3000 && errorCode < 4000) return authErrorCategory;
    if (errorCode >= 4000 && errorCode < 5000) return validationErrorCategory;
    return unknownErrorCategory;
  }

  static String getErrorSeverity(int errorCode) {
    switch (errorCode) {
      case networkErrorCode:
      case timeoutErrorCode:
        return mediumSeverity;
      case serverErrorCode:
      case unauthorizedErrorCode:
        return highSeverity;
      case insufficientFundsErrorCode:
      case transactionFailedErrorCode:
        return highSeverity;
      case validationErrorCode:
        return lowSeverity;
      default:
        return mediumSeverity;
    }
  }

  static bool isRetryableError(int errorCode) {
    return [
      networkErrorCode,
      timeoutErrorCode,
      serverErrorCode,
      gasEstimationErrorCode,
    ].contains(errorCode);
  }

  static bool isAuthError(int errorCode) {
    return errorCode >= 3000 && errorCode < 4000;
  }

  static bool isBlockchainError(int errorCode) {
    return errorCode >= 2000 && errorCode < 3000;
  }

  static bool isValidationError(int errorCode) {
    return errorCode >= 4000 && errorCode < 5000;
  }
}
