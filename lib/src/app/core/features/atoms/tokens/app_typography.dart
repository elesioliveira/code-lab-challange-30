import 'package:challange_trinta/src/app/core/features/atoms/tokens/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static defaultTypoGraphy(
          {Color? color, double? fontSize, FontWeight? fontWeight}) =>
      GoogleFonts.poppins(
        fontSize: fontSize ?? 36.sp,
        fontWeight: fontWeight ?? FontWeight.w600,
        color: color ?? AppColors.dartk10,
      );
}
