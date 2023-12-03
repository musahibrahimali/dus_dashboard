import 'package:flutter/material.dart';

const gold = Color(0xFFFFA506);
const goldDark = Color(0xFFA14400);
const brandYellowLight = Color(0xFFFFEE95);
const brandYellow = Color(0xFFFCE95F);
const brandSurface = Color(0xFF122523);

CustomColors lightCustomColors = const CustomColors(
  sourceGold: Color(0xFFFFA506),
  gold: Color(0xFF855400),
  onGold: Color(0xFFFFFFFF),
  goldContainer: Color(0xFFFFDDB7),
  onGoldContainer: Color(0xFF2A1700),
  sourceGoldDark: Color(0xFFA14400),
  goldDark: Color(0xFF9E4300),
  onGoldDark: Color(0xFFFFFFFF),
  goldDarkContainer: Color(0xFFFFDBCB),
  onGoldDarkContainer: Color(0xFF341100),
  sourceBrandYellowLight: Color(0xFFFFEE95),
  brandYellowLight: Color(0xFF6B5F00),
  onBrandYellowLight: Color(0xFFFFFFFF),
  brandYellowLightContainer: Color(0xFFF9E366),
  onBrandYellowLightContainer: Color(0xFF211C00),
  sourceBrandYellow: Color(0xFFFCE95F),
  brandYellow: Color(0xFF6A5F00),
  onBrandYellow: Color(0xFFFFFFFF),
  brandYellowContainer: Color(0xFFF7E45B),
  onBrandYellowContainer: Color(0xFF201C00),
  sourceBrandSurface: Color(0xFF122523),
  brandSurface: Color(0xFF006A63),
  onBrandSurface: Color(0xFFFFFFFF),
  brandSurfaceContainer: Color(0xFF71F7EB),
  onBrandSurfaceContainer: Color(0xFF00201D),
);

CustomColors darkCustomColors = const CustomColors(
  sourceGold: Color(0xFFFFA506),
  gold: Color(0xFFFFB95D),
  onGold: Color(0xFF462A00),
  goldContainer: Color(0xFF653E00),
  onGoldContainer: Color(0xFFFFDDB7),
  sourceGoldDark: Color(0xFFA14400),
  goldDark: Color(0xFFFFB691),
  onGoldDark: Color(0xFF552000),
  goldDarkContainer: Color(0xFF793100),
  onGoldDarkContainer: Color(0xFFFFDBCB),
  sourceBrandYellowLight: Color(0xFFFFEE95),
  brandYellowLight: Color(0xFFDCC74D),
  onBrandYellowLight: Color(0xFF383000),
  brandYellowLightContainer: Color(0xFF514700),
  onBrandYellowLightContainer: Color(0xFFF9E366),
  sourceBrandYellow: Color(0xFFFCE95F),
  brandYellow: Color(0xFFDAC841),
  onBrandYellow: Color(0xFF373100),
  brandYellowContainer: Color(0xFF504700),
  onBrandYellowContainer: Color(0xFFF7E45B),
  sourceBrandSurface: Color(0xFF122523),
  brandSurface: Color(0xFF50DBCF),
  onBrandSurface: Color(0xFF003733),
  brandSurfaceContainer: Color(0xFF00504B),
  onBrandSurfaceContainer: Color(0xFF71F7EB),
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceGold,
    required this.gold,
    required this.onGold,
    required this.goldContainer,
    required this.onGoldContainer,
    required this.sourceGoldDark,
    required this.goldDark,
    required this.onGoldDark,
    required this.goldDarkContainer,
    required this.onGoldDarkContainer,
    required this.sourceBrandYellowLight,
    required this.brandYellowLight,
    required this.onBrandYellowLight,
    required this.brandYellowLightContainer,
    required this.onBrandYellowLightContainer,
    required this.sourceBrandYellow,
    required this.brandYellow,
    required this.onBrandYellow,
    required this.brandYellowContainer,
    required this.onBrandYellowContainer,
    required this.sourceBrandSurface,
    required this.brandSurface,
    required this.onBrandSurface,
    required this.brandSurfaceContainer,
    required this.onBrandSurfaceContainer,
  });

  final Color? sourceGold;
  final Color? gold;
  final Color? onGold;
  final Color? goldContainer;
  final Color? onGoldContainer;
  final Color? sourceGoldDark;
  final Color? goldDark;
  final Color? onGoldDark;
  final Color? goldDarkContainer;
  final Color? onGoldDarkContainer;
  final Color? sourceBrandYellowLight;
  final Color? brandYellowLight;
  final Color? onBrandYellowLight;
  final Color? brandYellowLightContainer;
  final Color? onBrandYellowLightContainer;
  final Color? sourceBrandYellow;
  final Color? brandYellow;
  final Color? onBrandYellow;
  final Color? brandYellowContainer;
  final Color? onBrandYellowContainer;
  final Color? sourceBrandSurface;
  final Color? brandSurface;
  final Color? onBrandSurface;
  final Color? brandSurfaceContainer;
  final Color? onBrandSurfaceContainer;

  @override
  CustomColors copyWith({
    Color? sourceGold,
    Color? gold,
    Color? onGold,
    Color? goldContainer,
    Color? onGoldContainer,
    Color? sourceGoldDark,
    Color? goldDark,
    Color? onGoldDark,
    Color? goldDarkContainer,
    Color? onGoldDarkContainer,
    Color? sourceBrandYellowLight,
    Color? brandYellowLight,
    Color? onBrandYellowLight,
    Color? brandYellowLightContainer,
    Color? onBrandYellowLightContainer,
    Color? sourceBrandYellow,
    Color? brandYellow,
    Color? onBrandYellow,
    Color? brandYellowContainer,
    Color? onBrandYellowContainer,
    Color? sourceBrandSurface,
    Color? brandSurface,
    Color? onBrandSurface,
    Color? brandSurfaceContainer,
    Color? onBrandSurfaceContainer,
  }) {
    return CustomColors(
      sourceGold: sourceGold ?? this.sourceGold,
      gold: gold ?? this.gold,
      onGold: onGold ?? this.onGold,
      goldContainer: goldContainer ?? this.goldContainer,
      onGoldContainer: onGoldContainer ?? this.onGoldContainer,
      sourceGoldDark: sourceGoldDark ?? this.sourceGoldDark,
      goldDark: goldDark ?? this.goldDark,
      onGoldDark: onGoldDark ?? this.onGoldDark,
      goldDarkContainer: goldDarkContainer ?? this.goldDarkContainer,
      onGoldDarkContainer: onGoldDarkContainer ?? this.onGoldDarkContainer,
      sourceBrandYellowLight: sourceBrandYellowLight ?? this.sourceBrandYellowLight,
      brandYellowLight: brandYellowLight ?? this.brandYellowLight,
      onBrandYellowLight: onBrandYellowLight ?? this.onBrandYellowLight,
      brandYellowLightContainer: brandYellowLightContainer ?? this.brandYellowLightContainer,
      onBrandYellowLightContainer: onBrandYellowLightContainer ?? this.onBrandYellowLightContainer,
      sourceBrandYellow: sourceBrandYellow ?? this.sourceBrandYellow,
      brandYellow: brandYellow ?? this.brandYellow,
      onBrandYellow: onBrandYellow ?? this.onBrandYellow,
      brandYellowContainer: brandYellowContainer ?? this.brandYellowContainer,
      onBrandYellowContainer: onBrandYellowContainer ?? this.onBrandYellowContainer,
      sourceBrandSurface: sourceBrandSurface ?? this.sourceBrandSurface,
      brandSurface: brandSurface ?? this.brandSurface,
      onBrandSurface: onBrandSurface ?? this.onBrandSurface,
      brandSurfaceContainer: brandSurfaceContainer ?? this.brandSurfaceContainer,
      onBrandSurfaceContainer: onBrandSurfaceContainer ?? this.onBrandSurfaceContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceGold: Color.lerp(sourceGold, other.sourceGold, t),
      gold: Color.lerp(gold, other.gold, t),
      onGold: Color.lerp(onGold, other.onGold, t),
      goldContainer: Color.lerp(goldContainer, other.goldContainer, t),
      onGoldContainer: Color.lerp(onGoldContainer, other.onGoldContainer, t),
      sourceGoldDark: Color.lerp(sourceGoldDark, other.sourceGoldDark, t),
      goldDark: Color.lerp(goldDark, other.goldDark, t),
      onGoldDark: Color.lerp(onGoldDark, other.onGoldDark, t),
      goldDarkContainer: Color.lerp(goldDarkContainer, other.goldDarkContainer, t),
      onGoldDarkContainer: Color.lerp(onGoldDarkContainer, other.onGoldDarkContainer, t),
      sourceBrandYellowLight: Color.lerp(sourceBrandYellowLight, other.sourceBrandYellowLight, t),
      brandYellowLight: Color.lerp(brandYellowLight, other.brandYellowLight, t),
      onBrandYellowLight: Color.lerp(onBrandYellowLight, other.onBrandYellowLight, t),
      brandYellowLightContainer: Color.lerp(brandYellowLightContainer, other.brandYellowLightContainer, t),
      onBrandYellowLightContainer: Color.lerp(onBrandYellowLightContainer, other.onBrandYellowLightContainer, t),
      sourceBrandYellow: Color.lerp(sourceBrandYellow, other.sourceBrandYellow, t),
      brandYellow: Color.lerp(brandYellow, other.brandYellow, t),
      onBrandYellow: Color.lerp(onBrandYellow, other.onBrandYellow, t),
      brandYellowContainer: Color.lerp(brandYellowContainer, other.brandYellowContainer, t),
      onBrandYellowContainer: Color.lerp(onBrandYellowContainer, other.onBrandYellowContainer, t),
      sourceBrandSurface: Color.lerp(sourceBrandSurface, other.sourceBrandSurface, t),
      brandSurface: Color.lerp(brandSurface, other.brandSurface, t),
      onBrandSurface: Color.lerp(onBrandSurface, other.onBrandSurface, t),
      brandSurfaceContainer: Color.lerp(brandSurfaceContainer, other.brandSurfaceContainer, t),
      onBrandSurfaceContainer: Color.lerp(onBrandSurfaceContainer, other.onBrandSurfaceContainer, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith();
  }
}
