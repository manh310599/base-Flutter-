import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLoadingDialog {
  static bool _isShowing = false;

  static void show(BuildContext context, {String? message}) {
    if (_isShowing) return;
    _isShowing = true;

    showDialog(
      context: context,
      barrierDismissible: false, // Không cho bấm ra ngoài để tắt
      builder: (_) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 24.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                SizedBox(height: 16.h),
                Text(
                  message ?? 'loading',
                  style: TextStyle(fontSize: 16.sp),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static void hide(BuildContext context) {
    if (_isShowing) {
      Navigator.of(context, rootNavigator: true).pop();
      _isShowing = false;
    }
  }
}
