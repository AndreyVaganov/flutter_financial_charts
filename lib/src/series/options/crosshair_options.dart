import 'dart:ui';

import '../../core/enums/crosshair_mode.dart';
import '../../core/enums/line_style.dart';

class CrosshairLineOptions {
  final Color color;
  final int width;
  final LineStyle style;
  final bool visible;
  final bool labelVisible;
  final Color labelBackgroundColor;

  const CrosshairLineOptions({
    this.color = const Color(0xFF9598A1),
    this.width = 1,
    this.style = LineStyle.dashed,
    this.visible = true,
    this.labelVisible = true,
    this.labelBackgroundColor = const Color(0xFF131722),
  });
}

class CrosshairOptions {
  final CrosshairLineOptions vertLine;
  final CrosshairLineOptions horzLine;
  final CrosshairMode mode;

  const CrosshairOptions({
    this.vertLine = const CrosshairLineOptions(),
    this.horzLine = const CrosshairLineOptions(),
    this.mode = CrosshairMode.magnet,
  });
}
