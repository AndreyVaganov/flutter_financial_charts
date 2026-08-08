import 'i_renderer.dart';

/// Представление, поставляющее рендерер для панели
abstract interface class IPaneView {
  /// z-порядок: 'bottom' | 'normal' | 'top'.
  String get zOrder;

  /// Пересчитать внутреннее состояние при изменении данных/опций.
  void update(String reason);

  /// Актуальный рендерер (или null, если рисовать нечего).
  IRenderer? renderer();
}
