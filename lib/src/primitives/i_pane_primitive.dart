import '../rendering/i_pane_view.dart';

/// Пользовательский примитив уровня панели (водяные знаки и т.п.).
abstract interface class IPanePrimitive {
  List<IPaneView> paneViews();
  void updateAllViews();

  void attached(PanePrimitiveContext context);
  void detached();
}

/// Контекст, передаваемый примитиву при подключении.
class PanePrimitiveContext {
  final void Function() requestUpdate;
  const PanePrimitiveContext({required this.requestUpdate});
}
