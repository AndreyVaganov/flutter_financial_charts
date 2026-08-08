import 'models/internal_series_item.dart';
import '../core/enums/mismatch_direction.dart';

/// Доступ к упорядоченным данным серии.
abstract interface class IDataSource {
  bool get isEmpty;
  int get size;

  InternalSeriesItem? first();
  InternalSeriesItem? last();
  InternalSeriesItem? valueAt(int index);

  /// Поиск ближайшего элемента по логическому индексу.
  InternalSeriesItem? search(int logicalIndex, MismatchDirection direction);

  bool contains(int logicalIndex);

  void setItems(List<InternalSeriesItem> items);
}
