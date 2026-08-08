import 'package:flutter/foundation.dart';
import '../model/i_chart_model.dart';
import '../state/i_disposable.dart';

/// Централизованное состояние графика на базе ValueNotifier.
/// SOLID: SRP — отвечает только за уведомление о необходимости перерисовки.
class ChartState extends ChangeNotifier implements IDisposable {
  final IChartModel model;

  ChartState(this.model);

  /// Триггер перерисовки холста.
  void invalidate() => notifyListeners();
}

/// Обёртка над ValueNotifier для реактивных свойств (опции, размеры и т.п.).
class ObservableValue<T> extends ValueNotifier<T> implements IDisposable {
  ObservableValue(super.value);
}
