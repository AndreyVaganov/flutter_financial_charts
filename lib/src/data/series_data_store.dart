import '../core/enums/mismatch_direction.dart';
import '../core/search/directional_search.dart';
import 'i_data_source.dart';
import 'models/internal_series_item.dart';
import 'models/internal_series_item_key_selector.dart';

/// Хранилище нормализованных точек одной серии.
/// Элементы упорядочены по возрастанию логического индекса.
class SeriesDataStore implements IDataSource {
  List<InternalSeriesItem> _items = <InternalSeriesItem>[];

  static final _search = DirectionalSearch<InternalSeriesItem>(
    const InternalSeriesItemKeySelector(),
  );

  @override
  bool get isEmpty => _items.isEmpty;

  @override
  int get size => _items.length;

  @override
  InternalSeriesItem? first() => _items.isEmpty ? null : _items.first;

  @override
  InternalSeriesItem? last() => _items.isEmpty ? null : _items.last;

  @override
  InternalSeriesItem? valueAt(int index) {
    if (index < 0 || index >= _items.length) return null;
    return _items[index];
  }

  @override
  InternalSeriesItem? search(int logicalIndex, MismatchDirection direction) {
    final pos = _search.indexOf(_items, logicalIndex, direction);
    return pos == null ? null : _items[pos];
  }

  @override
  bool contains(int logicalIndex) =>
      search(logicalIndex, MismatchDirection.none) != null;

  @override
  void setItems(List<InternalSeriesItem> items) {
    _items = items;
  }

  List<InternalSeriesItem> get items => _items;
}
