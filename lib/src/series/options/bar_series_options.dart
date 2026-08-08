import 'dart:ui';

import 'series_options_base.dart';

class BarSeriesOptions extends SeriesOptionsBase {
  final Color upColor;
  final Color downColor;
  final bool openVisible;
  final bool thinBars;

  const BarSeriesOptions({
    this.upColor = const Color.fromRGBO(38, 166, 154, 1),
    this.downColor = const Color.fromRGBO(239, 83, 80, 1),
    this.openVisible = true,
    this.thinBars = true,
    super.title,
    super.visible,
    super.priceScaleId,
  });
}
