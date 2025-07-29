import 'package:flutter/material.dart';

/// Application color constants and theme colors
class AppColors {
  AppColors._();

  // Brand Colors
  static const Color primary = Color(0xFF6366F1); // Indigo
  static const Color primaryDark = Color(0xFF4F46E5);
  static const Color primaryLight = Color(0xFFC7D2FE);
  static const Color primaryVariant = Color(0xFF8B5CF6); // Purple variant

  // Secondary Colors
  static const Color secondary = Color(0xFF10B981); // Emerald
  static const Color secondaryDark = Color(0xFF059669);
  static const Color secondaryLight = Color(0xFFA7F3D0);
  static const Color secondaryVariant = Color(0xFF06B6D4); // Cyan variant

  // Accent Colors
  static const Color accent = Color(0xFFF59E0B); // Amber
  static const Color accentDark = Color(0xFFD97706);
  static const Color accentLight = Color(0xFFFEF3C7);

  // Background Colors
  static const Color background = Color(0xFFFAFAFA);
  static const Color backgroundDark = Color(0xFF121212);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceDark = Color(0xFF1E1E1E);
  static const Color surfaceVariant = Color(0xFFF5F5F5);
  static const Color surfaceVariantDark = Color(0xFF2D2D2D);

  // Card Colors
  static const Color card = Color(0xFFFFFFFF);
  static const Color cardDark = Color(0xFF1E1E1E);
  static const Color cardElevated = Color(0xFFFFFFFF);
  static const Color cardElevatedDark = Color(0xFF2D2D2D);

  // Text Colors
  static const Color textPrimary = Color(0xFF1F2937); // Gray-800
  static const Color textPrimaryDark = Color(0xFFF9FAFB); // Gray-50
  static const Color textSecondary = Color(0xFF6B7280); // Gray-500
  static const Color textSecondaryDark = Color(0xFF9CA3AF); // Gray-400
  static const Color textTertiary = Color(0xFF9CA3AF); // Gray-400
  static const Color textTertiaryDark = Color(0xFF6B7280); // Gray-500
  static const Color textHint = Color(0xFFD1D5DB); // Gray-300
  static const Color textHintDark = Color(0xFF4B5563); // Gray-600
  static const Color textDisabled = Color(0xFFE5E7EB); // Gray-200
  static const Color textDisabledDark = Color(0xFF374151); // Gray-700
  static const Color textOnPrimary = Color(0xFFFFFFFF);
  static const Color textOnSecondary = Color(0xFFFFFFFF);
  static const Color textOnSurface = Color(0xFF1F2937);
  static const Color textOnSurfaceDark = Color(0xFFF9FAFB);

  // Status Colors
  static const Color success = Color(0xFF10B981); // Emerald-500
  static const Color successDark = Color(0xFF059669); // Emerald-600
  static const Color successLight = Color(0xFFD1FAE5); // Emerald-100
  static const Color warning = Color(0xFFF59E0B); // Amber-500
  static const Color warningDark = Color(0xFFD97706); // Amber-600
  static const Color warningLight = Color(0xFFFEF3C7); // Amber-100
  static const Color error = Color(0xFFEF4444); // Red-500
  static const Color errorDark = Color(0xFFDC2626); // Red-600
  static const Color errorLight = Color(0xFFFEE2E2); // Red-100
  static const Color info = Color(0xFF3B82F6); // Blue-500
  static const Color infoDark = Color(0xFF2563EB); // Blue-600
  static const Color infoLight = Color(0xFFDBEAFE); // Blue-100

  // Border Colors
  static const Color border = Color(0xFFE5E7EB); // Gray-200
  static const Color borderDark = Color(0xFF374151); // Gray-700
  static const Color borderLight = Color(0xFFF3F4F6); // Gray-100
  static const Color borderFocus = Color(0xFF6366F1); // Primary
  static const Color borderError = Color(0xFFEF4444); // Error
  static const Color borderSuccess = Color(0xFF10B981); // Success
  static const Color borderWarning = Color(0xFFF59E0B); // Warning

  // Divider Colors
  static const Color divider = Color(0xFFE5E7EB); // Gray-200
  static const Color dividerDark = Color(0xFF374151); // Gray-700
  static const Color dividerLight = Color(0xFFF9FAFB); // Gray-50

  // Shadow Colors
  static const Color shadow = Color(0x1A000000); // 10% black
  static const Color shadowDark = Color(0x33000000); // 20% black
  static const Color shadowLight = Color(0x0D000000); // 5% black

  // Overlay Colors
  static const Color overlay = Color(0x80000000); // 50% black
  static const Color overlayLight = Color(0x40000000); // 25% black
  static const Color overlayDark = Color(0xB3000000); // 70% black

  // Blockchain Specific Colors
  static const Color bitcoin = Color(0xFFF7931A);
  static const Color ethereum = Color(0xFF627EEA);
  static const Color binance = Color(0xFFF3BA2F);
  static const Color polygon = Color(0xFF8247E5);
  static const Color cardano = Color(0xFF0033AD);
  static const Color solana = Color(0xFF9945FF);
  static const Color avalanche = Color(0xFFE84142);
  static const Color fantom = Color(0xFF1969FF);

  // Transaction Colors
  static const Color transactionSent = Color(0xFFEF4444); // Red
  static const Color transactionReceived = Color(0xFF10B981); // Green
  static const Color transactionPending = Color(0xFFF59E0B); // Amber
  static const Color transactionFailed = Color(0xFF991B1B); // Dark red
  static const Color transactionSwap = Color(0xFF8B5CF6); // Purple

  // Chart Colors
  static const List<Color> chartColors = [
    Color(0xFF6366F1), // Indigo
    Color(0xFF10B981), // Emerald
    Color(0xFFF59E0B), // Amber
    Color(0xFFEF4444), // Red
    Color(0xFF8B5CF6), // Purple
    Color(0xFF06B6D4), // Cyan
    Color(0xFFEC4899), // Pink
    Color(0xFF84CC16), // Lime
  ];

  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, primaryDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [secondary, secondaryDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [accent, accentDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient successGradient = LinearGradient(
    colors: [success, successDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient errorGradient = LinearGradient(
    colors: [error, errorDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [Color(0xFFF8FAFC), Color(0xFFE2E8F0)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient darkBackgroundGradient = LinearGradient(
    colors: [Color(0xFF0F172A), Color(0xFF1E293B)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // Shimmer Colors
  static const Color shimmerBase = Color(0xFFE5E7EB);
  static const Color shimmerHighlight = Color(0xFFF3F4F6);
  static const Color shimmerBaseDark = Color(0xFF374151);
  static const Color shimmerHighlightDark = Color(0xFF4B5563);

  // Special Colors
  static const Color transparent = Colors.transparent;
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // Utility Colors
  static const Color scaffoldBackground = Color(0xFFFAFAFA);
  static const Color scaffoldBackgroundDark = Color(0xFF121212);
  static const Color appBarBackground = Color(0xFFFFFFFF);
  static const Color appBarBackgroundDark = Color(0xFF1E1E1E);
  static const Color bottomNavBackground = Color(0xFFFFFFFF);
  static const Color bottomNavBackgroundDark = Color(0xFF1E1E1E);

  // Input Colors
  static const Color inputFill = Color(0xFFF9FAFB);
  static const Color inputFillDark = Color(0xFF374151);
  static const Color inputBorder = Color(0xFFD1D5DB);
  static const Color inputBorderDark = Color(0xFF4B5563);
  static const Color inputFocused = primary;
  static const Color inputError = error;

  // Button Colors
  static const Color buttonPrimary = primary;
  static const Color buttonSecondary = secondary;
  static const Color buttonDisabled = Color(0xFFE5E7EB);
  static const Color buttonDisabledDark = Color(0xFF374151);

  // Helper Methods
  static Color withOpacity(Color color, double opacity) {
    return color.withOpacity(opacity);
  }

  static Color lighten(Color color, [double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    return hslLight.toColor();
  }

  static Color darken(Color color, [double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }

  static Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'success':
      case 'completed':
      case 'confirmed':
        return success;
      case 'warning':
      case 'pending':
        return warning;
      case 'error':
      case 'failed':
      case 'cancelled':
        return error;
      case 'info':
      default:
        return info;
    }
  }

  static Color getTransactionColor(String type) {
    switch (type.toLowerCase()) {
      case 'send':
      case 'sent':
        return transactionSent;
      case 'receive':
      case 'received':
        return transactionReceived;
      case 'swap':
      case 'exchange':
        return transactionSwap;
      case 'pending':
        return transactionPending;
      case 'failed':
        return transactionFailed;
      default:
        return textSecondary;
    }
  }

  static Color getNetworkColor(String network) {
    switch (network.toLowerCase()) {
      case 'bitcoin':
      case 'btc':
        return bitcoin;
      case 'ethereum':
      case 'eth':
        return ethereum;
      case 'binance':
      case 'bsc':
      case 'bnb':
        return binance;
      case 'polygon':
      case 'matic':
        return polygon;
      case 'cardano':
      case 'ada':
        return cardano;
      case 'solana':
      case 'sol':
        return solana;
      case 'avalanche':
      case 'avax':
        return avalanche;
      case 'fantom':
      case 'ftm':
        return fantom;
      default:
        return primary;
    }
  }
}
