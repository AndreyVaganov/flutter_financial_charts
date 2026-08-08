import 'dart:ui';

import '../../core/enums/price_scale_mode.dart';

class PriceScaleMargins {
  final double top;
  final double bottom;

  const PriceScaleMargins({this.top = 0.2, this.bottom = 0.1});
}

class PriceScaleOptions {
  final bool autoScale;
  final PriceScaleMode mode;
  final bool invertScale;
  final bool alignLabels;
  final bool borderVisible;
  final Color borderColor;
  final bool entireTextOnly;
  final bool visible;
  final bool ticksVisible;
  final PriceScaleMargins scaleMargins;
  final double minimumWidth;

  /// Доля расширения диапазона сверху (от длины диапазона).
  final double autoScaleExpandTop;

  /// Доля расширения диапазона снизу (от длины диапазона).
  final double autoScaleExpandBottom;

  const PriceScaleOptions({
    this.autoScale = true,
    this.mode = PriceScaleMode.normal,
    this.invertScale = false,
    this.alignLabels = true,
    this.borderVisible = true,
    this.borderColor = const Color(0xFF2B2B43),
    this.entireTextOnly = false,
    this.visible = false,
    this.ticksVisible = false,
    this.scaleMargins = const PriceScaleMargins(),
    this.minimumWidth = 0,
    this.autoScaleExpandTop = 0.1,
    this.autoScaleExpandBottom = 0.1,
  });
}
