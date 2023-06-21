/// [color], and [space] used in [Padding], [Margin], and [Color] etc
class LayoutConstants {
  const LayoutConstants._();

  /// ScreenSize
  /// - Responsive Layout을 지원하기 위해 사용함
  ///
  /// Desktop Threshold
  static const desktopThreshold = 1400;

  /// Laptop Threshold
  static const laptopThreshold = 800;

  /// Tablet Threshold
  static const tabletThreshold = 500;

  /// Space
  /// - padding, margin, gap, gutter 등에 사용함
  ///
  /// 4.0
  static const spaceXS = 4.0;

  /// 8.0
  static const spaceS = 2 * spaceXS;

  /// 12.0
  static const spaceM = 3 * spaceXS;

  /// 16.0
  static const spaceL = 4 * spaceXS;

  /// 20.0
  static const spaceXL = 5 * spaceXS;

  /// 24.0
  static const space2XL = 6 * spaceXS;

  /// 28.0
  static const space3XL = 7 * spaceXS;

  /// 32.0
  static const space4XL = 8 * spaceXS;
}
