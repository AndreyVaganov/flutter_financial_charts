import 'dart:ui';

import 'series_options_base.dart';
import '../../core/enums/line_style.dart';
import '../../core/enums/line_type.dart';

class AreaSeriesOptions extends SeriesOptionsBase {
  final Color topColor;
  final Color bottomColor;
  final Color lineColor;
  final bool invertFilledArea;
  final bool relativeGradient;
  final LineStyle lineStyle;
  final int lineWidth;
  final LineType lineType;
  final bool lineVisible;

  const AreaSeriesOptions({
    this.topColor = const Color.fromRGBO(46, 220, 135, 0.4),
    this.bottomColor = const Color.fromRGBO(40, 221, 100, 0),
    this.lineColor = const Color.fromRGBO(51, 215, 120, 1),
    this.invertFilledArea = false,
    this.relativeGradient = false,
    this.lineStyle = LineStyle.solid,
    this.lineWidth = 3,
    this.lineType = LineType.simple,
    this.lineVisible = true,
    super.title,
    super.visible,
    super.priceScaleId,
  });
}
