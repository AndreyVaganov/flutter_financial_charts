import 'dart:ui';

import '../../core/enums/last_price_animation_mode.dart';
import '../../core/enums/line_style.dart';
import '../../core/enums/line_type.dart';
import 'series_options_base.dart';

class LineSeriesOptions extends SeriesOptionsBase {
  final Color color;
  final LineStyle lineStyle;
  final int lineWidth;
  final LineType lineType;
  final bool lineVisible;
  final bool crosshairMarkerVisible;
  final int crosshairMarkerRadius;
  final String crosshairMarkerBorderColor;
  final int crosshairMarkerBorderWidth;
  final String crosshairMarkerBackgroundColor;
  final LastPriceAnimationMode lastPriceAnimation;
  final bool pointMarkersVisible;

  const LineSeriesOptions({
    this.color = const Color(0xFF2196F3),
    this.lineStyle = LineStyle.solid,
    this.lineWidth = 3,
    this.lineType = LineType.simple,
    this.lineVisible = true,
    this.crosshairMarkerVisible = true,
    this.crosshairMarkerRadius = 4,
    this.crosshairMarkerBorderColor = '',
    this.crosshairMarkerBorderWidth = 2,
    this.crosshairMarkerBackgroundColor = '',
    this.lastPriceAnimation = LastPriceAnimationMode.disabled,
    this.pointMarkersVisible = false,
    super.title,
    super.visible,
    super.priceScaleId,
  });
}
