import 'hit_test_result.dart';

/// Узкий интерфейс проверки попадания курсора.
abstract interface class IHitTestable {
  HitTestResult? hitTest(double x, double y);
}
