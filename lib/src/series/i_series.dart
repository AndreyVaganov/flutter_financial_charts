import '../core/enums/series_type.dart';
import '../core/models/bar_price.dart';
import '../core/models/price_range.dart';
import '../core/models/range.dart';
import '../data/i_data_source.dart';
import '../data/series_data_store.dart';
import '../rendering/series/coordinate_context.dart';
import '../rendering/series/coordinate_context_factory.dart';
import '../scales/price_scale/i_price_scale.dart';
import '../series/options/series_options_base.dart';
import '../primitives/i_series_primitive.dart';
import '../rendering/i_pane_view.dart';

abstract class ISeries {
  SeriesType get seriesType;
  SeriesOptionsBase get options;
  bool get visible;
  String get title;

  IDataSource get dataSource;

  /// Хранилище нормализованных точек, в которое пишет DataLayer.
  /// Единый источник истины для рендеринга.
  SeriesDataStore get store;

  IPriceScale? get priceScale;
  set priceScale(IPriceScale? scale);

  set coordinateContextFactory(ICoordinateContextFactory? factory);
  BarPrice? firstValue();
  BarPrice? lastValue();

  void applyOptions(SeriesOptionsBase options);

  List<IPaneView> paneViews();

  void attachPrimitive(ISeriesPrimitive primitive);
  void detachPrimitive(ISeriesPrimitive primitive);

  void invalidate();
  IPriceRange? priceRangeForRange(Range<int>? visibleRange);
  CoordinateContext? coordinateContext();
}
