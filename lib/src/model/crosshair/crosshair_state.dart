import '../../core/models/point.dart';
import '../../series/i_series.dart';

/// Изменяемое состояние перекрестия: видимость, координаты, привязка.
class CrosshairState {
  ChartPoint? _position;
  double _index = 0;
  double _price = 0;
  ISeries? _owner;

  bool get isVisible => _position != null;
  ChartPoint? get position => _position;
  double get index => _index;
  double get price => _price;
  ISeries? get owner => _owner;

  void set(ChartPoint position, double index, double price, ISeries? owner) {
    _position = position;
    _index = index;
    _price = price;
    _owner = owner;
  }

  void hide() {
    _position = null;
    _owner = null;
  }
}
