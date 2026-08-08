import 'dart:ui';

import 'series_options_base.dart';

class HistogramSeriesOptions extends SeriesOptionsBase {
  final Color color;
  final double base;

  const HistogramSeriesOptions({
    this.color = const Color.fromRGBO(38, 166, 154, 1),
    this.base = 0,
    super.title,
    super.visible,
    super.priceScaleId,
  });
}
