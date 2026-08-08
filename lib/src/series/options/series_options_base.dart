import 'dart:ui';

import '../../core/enums/line_style.dart';
import '../../core/enums/price_line_source.dart';

/// Базовые опции, общие для всех серий.
class SeriesOptionsBase {
  final String title;
  final bool visible;
  final bool lastValueVisible;
  final bool priceLineVisible;
  final PriceLineSource priceLineSource;
  final int priceLineWidth;
  final Color? priceLineColor;
  final LineStyle priceLineStyle;
  final bool baseLineVisible;
  final int baseLineWidth;
  final Color baseLineColor;
  final LineStyle baseLineStyle;
  final String priceScaleId;

  const SeriesOptionsBase({
    this.title = '',
    this.visible = true,
    this.lastValueVisible = true,
    this.priceLineVisible = true,
    this.priceLineSource = PriceLineSource.lastBar,
    this.priceLineWidth = 1,
    this.priceLineColor,
    this.priceLineStyle = LineStyle.dashed,
    this.baseLineVisible = true,
    this.baseLineWidth = 1,
    this.baseLineColor = const Color(0xFFB2B5BE),
    this.baseLineStyle = LineStyle.solid,
    this.priceScaleId = 'right',
  });
}
