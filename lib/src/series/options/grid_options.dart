import 'dart:ui';

import '../../core/enums/line_style.dart';

class GridLineOptions {
  final Color color;
  final LineStyle style;
  final bool visible;

  const GridLineOptions({
    this.color = const Color(0xFFD6DCDE),
    this.style = LineStyle.solid,
    this.visible = true,
  });
}

class GridOptions {
  final GridLineOptions vertLines;
  final GridLineOptions horzLines;

  const GridOptions({
    this.vertLines = const GridLineOptions(),
    this.horzLines = const GridLineOptions(),
  });
}
