import 'dart:ui';

import 'series_options_base.dart';

class CandlestickSeriesOptions extends SeriesOptionsBase {
  final Color upColor;
  final Color downColor;
  final bool wickVisible;
  final bool borderVisible;
  final Color borderColor;
  final Color borderUpColor;
  final Color borderDownColor;
  final Color wickColor;
  final Color wickUpColor;
  final Color wickDownColor;

  const CandlestickSeriesOptions({
    this.upColor = const Color.fromRGBO(38, 166, 154, 1),
    this.downColor = const Color.fromRGBO(239, 83, 80, 1),
    this.wickVisible = true,
    this.borderVisible = true,
    this.borderColor = const Color.fromRGBO(55, 134, 88, 1),
    this.borderUpColor = const Color.fromRGBO(38, 166, 154, 1),
    this.borderDownColor = const Color.fromRGBO(239, 83, 80, 1),
    this.wickColor = const Color.fromRGBO(115, 115, 117, 1),
    this.wickUpColor = const Color.fromRGBO(38, 166, 154, 1),
    this.wickDownColor = const Color.fromRGBO(239, 83, 80, 1),
    super.title,
    super.visible,
    super.priceScaleId,
  });
}

// this.downColor = '#ef5350',
// this.wickVisible = true,
// this.borderVisible = true,
// this.borderColor = '#378658',
// this.borderUpColor = '#26a69a',
// this.borderDownColor = '#ef5350',
// this.wickColor = '#737375',
// this.wickUpColor = '#26a69a',
// this.wickDownColor = '#ef5350',
