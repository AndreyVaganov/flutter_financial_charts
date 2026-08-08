import '../../scales/price_scale/i_price_scale.dart';
import '../../series/i_series.dart';
import '../../primitives/i_pane_primitive.dart';

/// Панель графика — контейнер серий и ценовых шкал.
abstract interface class IPane {
  double get height;
  set height(double value);

  double get stretchFactor;
  set stretchFactor(double value);

  IPriceScale get leftPriceScale;
  IPriceScale get rightPriceScale;

  List<ISeries> get series;

  void addSeries(ISeries series, String priceScaleId, {int? index});
  void removeSeries(ISeries series);

  IPriceScale? priceScaleById(String id);

  void addPrimitive(IPanePrimitive primitive);
  void removePrimitive(IPanePrimitive primitive);

  void setSize(double width);
  void recalculatePriceScales();
  void invalidate();
}
