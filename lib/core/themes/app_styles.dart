import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wazafny_app/core/themes/app_colors.dart';

import 'font_weight_helper.dart';

class AppTextStyles {
  //! ibmPlexMono
  static TextStyle font14mediumGrayRegular = GoogleFonts.ibmPlexMono(
    fontSize: 14,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.mediumGray,
    letterSpacing: 0.1,
  );
  static TextStyle font12WhiteSemiBold = GoogleFonts.ibmPlexMono(
    fontSize: 12,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.white,
  );
  static TextStyle font12lightGrayRegular = GoogleFonts.ibmPlexMono(
    fontSize: 12,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.lightGray,
  );
  static TextStyle font14WhiteBold = GoogleFonts.ibmPlexMono(
    fontSize: 14,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.white,
  );
  static TextStyle font16WhiteBold = GoogleFonts.ibmPlexMono(
    fontSize: 16,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.white,
  );
  static TextStyle font14WhiteRegular = GoogleFonts.ibmPlexMono(
    fontSize: 14,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.white,
  );
  static TextStyle font12VibrantOrangeBold = GoogleFonts.ibmPlexMono(
    fontSize: 12,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.vibrantOrange,
  );

  static TextStyle font12PrimaryBlueBold = GoogleFonts.ibmPlexMono(
    fontSize: 12,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryBlue,
    letterSpacing: 0.1,
  );
  static TextStyle font12EmeraldGreenBold = GoogleFonts.ibmPlexMono(
    fontSize: 12,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.emeraldGreen,
    letterSpacing: 0.1,
  );
  //! raleway
  static TextStyle font44WhiteExtraBold = GoogleFonts.raleway(
    fontSize: 44,
    fontWeight: FontWeightHelper.extraBold,
    color: AppColors.white,
    letterSpacing: 0.1,
  );

  static TextStyle font34PureBlackExtraBold = GoogleFonts.raleway(
    fontSize: 34,
    fontWeight: FontWeightHelper.extraBold,
    color: AppColors.pureBlack,
  );

  static TextStyle font34WhiteExtraBold = GoogleFonts.raleway(
    fontSize: 34,
    fontWeight: FontWeightHelper.extraBold,
    color: AppColors.white,
  );
  static TextStyle font24PureBlackExtraBold = GoogleFonts.raleway(
    fontSize: 24,
    fontWeight: FontWeightHelper.extraBold,
    color: AppColors.pureBlack,
  );
  static TextStyle font18WhiteBold = GoogleFonts.raleway(
    fontSize: 18,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.white,
  );
}
