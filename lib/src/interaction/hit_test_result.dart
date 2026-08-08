class HitTestResult {
  final double distance;
  final int priority;
  final String itemType;
  final Object? externalId;
  final Object? cursorStyle;

  const HitTestResult({
    required this.distance,
    required this.priority,
    required this.itemType,
    this.externalId,
    this.cursorStyle,
  });
}
