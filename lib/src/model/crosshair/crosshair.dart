import '../../core/enums/crosshair_mode.dart';
import '../../core/models/point.dart';
import '../../series/i_series.dart';
import '../../series/options/crosshair_options.dart';
import 'crosshair_state.dart';

class Crosshair {
  CrosshairOptions _options;
  final CrosshairState _state;

  Crosshair(this._options, {CrosshairState? state})
    : _state = state ?? CrosshairState();

  CrosshairOptions get options => _options;
  CrosshairMode get mode => _options.mode;

  bool get isVisible => _state.isVisible;
  ChartPoint? get position => _state.position;
  double get index => _state.index;
  double get price => _state.price;
  ISeries? get owner => _state.owner;

  void setPosition(
    double x,
    double y,
    double index,
    double price,
    ISeries? owner,
  ) {
    _state.set(ChartPoint(x, y), index, price, owner);
  }

  void hide() => _state.hide();

  void applyOptions(CrosshairOptions options) => _options = options;
}
