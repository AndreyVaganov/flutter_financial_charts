import 'layout_options.dart';
import 'grid_options.dart';
import 'crosshair_options.dart';
import 'price_scale_options.dart';
import 'time_scale_options.dart';

class HandleScrollOptions {
  final bool mouseWheel;
  final bool pressedMouseMove;
  final bool horzTouchDrag;
  final bool vertTouchDrag;

  const HandleScrollOptions({
    this.mouseWheel = true,
    this.pressedMouseMove = true,
    this.horzTouchDrag = true,
    this.vertTouchDrag = true,
  });
}

class HandleScaleOptions {
  final bool mouseWheel;
  final bool pinch;

  const HandleScaleOptions({this.mouseWheel = true, this.pinch = true});
}

class ChartOptions {
  final double width;
  final double height;
  final bool autoSize;
  final LayoutOptions layout;
  final GridOptions grid;
  final CrosshairOptions crosshair;
  final PriceScaleOptions leftPriceScale;
  final PriceScaleOptions rightPriceScale;
  final String defaultVisiblePriceScaleId;
  final TimeScaleOptions timeScale;
  final HandleScrollOptions handleScroll;
  final HandleScaleOptions handleScale;

  const ChartOptions({
    this.width = 0,
    this.height = 0,
    this.autoSize = false,
    this.layout = const LayoutOptions(),
    this.grid = const GridOptions(),
    this.crosshair = const CrosshairOptions(),
    this.leftPriceScale = const PriceScaleOptions(visible: false),
    this.rightPriceScale = const PriceScaleOptions(visible: true),
    this.defaultVisiblePriceScaleId = 'right',
    this.timeScale = const TimeScaleOptions(),
    this.handleScroll = const HandleScrollOptions(),
    this.handleScale = const HandleScaleOptions(),
  });
}
