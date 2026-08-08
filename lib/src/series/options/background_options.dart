import 'dart:ui';

import '../../core/enums/color_type.dart';

class BackgroundOptions {
  final ColorType type;
  final Color color;
  final Color topColor;
  final Color bottomColor;

  const BackgroundOptions({
    this.type = ColorType.solid,
    this.color = const Color(0xFFFFFFFF),
    this.topColor = const Color(0xFFFFFFFF),
    this.bottomColor = const Color(0xFFFFFFFF),
  });
}

class PanesLayoutOptions {
  final bool enableResize;
  final Color separatorColor;
  final Color separatorHoverColor;

  const PanesLayoutOptions({
    this.enableResize = true,
    this.separatorColor = const Color(0xFFE0E3EB),
    this.separatorHoverColor = const Color(0x33B2B5BD),
  });
}
