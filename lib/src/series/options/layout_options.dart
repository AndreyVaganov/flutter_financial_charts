import 'dart:ui';

import 'background_options.dart';

class LayoutOptions {
  final BackgroundOptions background;
  final Color textColor;
  final double fontSize;
  final String fontFamily;
  final PanesLayoutOptions panes;
  final bool attributionLogo;

  const LayoutOptions({
    this.background = const BackgroundOptions(),
    this.textColor = const Color(0xFF191919),
    this.fontSize = 12,
    this.fontFamily = 'sans-serif',
    this.panes = const PanesLayoutOptions(),
    this.attributionLogo = true,
  });
}
