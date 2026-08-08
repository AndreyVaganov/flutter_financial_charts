import 'models/i_series_data.dart';
import '../series/i_series.dart';
import '../state/i_disposable.dart';

/// Слой преобразования пользовательских данных во внутреннее представление
abstract interface class IDataLayer implements IDisposable {
  /// Полная замена данных серии.
  void setSeriesData(ISeries series, List<ISeriesData> data);

  /// Инкрементальное обновление последней точки.
  void updateSeriesData(
    ISeries series,
    ISeriesData item, {
    bool historicalUpdate = false,
  });

  /// Удаление N последних точек.
  List<ISeriesData> popSeriesData(ISeries series, int count);

  /// Полное удаление серии из слоя данных.
  void removeSeries(ISeries series);
}
