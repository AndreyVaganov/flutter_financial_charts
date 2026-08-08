import 'dart:ui';

import 'series_options_base.dart';
import '../../core/enums/line_style.dart';
import '../../core/enums/line_type.dart';

class BaselineSeriesOptions extends SeriesOptionsBase {
  final double baseValue;
  final bool relativeGradient;
  final Color topFillColor1;
  final Color topFillColor2;
  final Color topLineColor;
  final Color bottomFillColor1;
  final Color bottomFillColor2;
  final Color bottomLineColor;
  final int lineWidth;
  final LineStyle lineStyle;
  final LineType lineType;
  final bool lineVisible;

  const BaselineSeriesOptions({
    this.baseValue = 0,
    this.relativeGradient = false,
    this.topFillColor1 = const Color.fromRGBO(38, 166, 154, 0.28),
    this.topFillColor2 = const Color.fromRGBO(38, 166, 154, 0.05),
    this.topLineColor = const Color.fromRGBO(38, 166, 154, 1),
    this.bottomFillColor1 = const Color.fromRGBO(239, 83, 80, 0.05),
    this.bottomFillColor2 = const Color.fromRGBO(239, 83, 80, 0.28),
    this.bottomLineColor = const Color.fromRGBO(239, 83, 80, 1),
    this.lineWidth = 3,
    this.lineStyle = LineStyle.solid,
    this.lineType = LineType.simple,
    this.lineVisible = true,
    super.title,
    super.visible,
    super.priceScaleId,
  });
}
