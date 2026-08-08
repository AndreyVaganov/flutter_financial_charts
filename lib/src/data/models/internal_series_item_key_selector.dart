import '../../core/search/i_key_selector.dart';
import 'internal_series_item.dart';

class InternalSeriesItemKeySelector
    implements IKeySelector<InternalSeriesItem> {
  const InternalSeriesItemKeySelector();

  @override
  int keyOf(InternalSeriesItem item) => item.index;
}
