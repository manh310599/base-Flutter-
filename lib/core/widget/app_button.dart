import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

enum AppButtonType {
  primary,
  secondary,
  outlined,
  ghost,
}

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;

  final AppButtonType type;
  final bool isFullWidth;
  final bool isLoading;
  final double? height;
  final double? minWidth;

  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;

  final ButtonStyle? styleOverride;

  const AppButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.type = AppButtonType.primary,
    this.isFullWidth = true,
    this.isLoading = false,
    this.height,
    this.minWidth,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.styleOverride,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle defaultStyle = _getButtonStyle();

    return SizedBox(
      width: isFullWidth ? double.infinity : minWidth?.w,
      height: height?.h ?? 48.h,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: styleOverride ?? defaultStyle,
        child: isLoading
            ? SizedBox(
          height: 20.h,
          width: 20.h,
          child: const CircularProgressIndicator(strokeWidth: 2),
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Icon(
                icon,
                size: iconSize?.sp ?? 20.sp,
                color: iconColor ?? _getTextColor(context),
              ),
            if (icon != null) SizedBox(width: 8.w),
            if (child != null) Flexible(child: child!),
          ],
        ),
      ),
    );
  }

  ButtonStyle _getButtonStyle() {
    switch (type) {
      case AppButtonType.primary:
        return ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        );
      case AppButtonType.secondary:
        return ElevatedButton.styleFrom(
          backgroundColor: AppColors.secondary,
          foregroundColor: Colors.black87,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        );
      case AppButtonType.outlined:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.indigo,
          side: const BorderSide(color: Colors.indigo),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        );
      case AppButtonType.ghost:
        return ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.indigo,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        );
    }
  }

  Color _getTextColor(BuildContext context) {
    switch (type) {
      case AppButtonType.primary:
        return Colors.white;
      case AppButtonType.secondary:
        return Colors.black;
      default:
        return Colors.indigo;
    }
  }
}
