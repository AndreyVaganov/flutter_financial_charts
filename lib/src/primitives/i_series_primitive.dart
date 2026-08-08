import '../rendering/i_pane_view.dart';
import '../series/i_series.dart';

/// Пользовательский примитив уровня серии (маркеры, линии, зоны).
abstract interface class ISeriesPrimitive {
  List<IPaneView> paneViews();
  void updateAllViews();

  void attached(SeriesPrimitiveContext context);
  void detached();
}

class SeriesPrimitiveContext {
  final ISeries series;
  final void Function() requestUpdate;
  const SeriesPrimitiveContext({
    required this.series,
    required this.requestUpdate,
  });
}
