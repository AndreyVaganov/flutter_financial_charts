import 'dart:ui';

class TimeScaleOptions {
  final double rightOffset;
  final double barSpacing;
  final double minBarSpacing;
  final double maxBarSpacing;
  final bool fixLeftEdge;
  final bool fixRightEdge;
  final bool lockVisibleTimeRangeOnResize;
  final bool rightBarStaysOnScroll;
  final bool borderVisible;
  final Color borderColor;
  final bool visible;
  final bool timeVisible;
  final bool secondsVisible;
  final bool shiftVisibleRangeOnNewBar;
  final bool ticksVisible;
  final double minimumHeight;

  const TimeScaleOptions({
    this.rightOffset = 0,
    this.barSpacing = 6,
    this.minBarSpacing = 0.5,
    this.maxBarSpacing = 0,
    this.fixLeftEdge = false,
    this.fixRightEdge = false,
    this.lockVisibleTimeRangeOnResize = false,
    this.rightBarStaysOnScroll = false,
    this.borderVisible = true,
    this.borderColor = const Color(0xFF2B2B43),
    this.visible = true,
    this.timeVisible = false,
    this.secondsVisible = true,
    this.shiftVisibleRangeOnNewBar = true,
    this.ticksVisible = false,
    this.minimumHeight = 0,
  });
}
