/// OHLC-значения одного бара во внутреннем представлении.
class BarPrice {
  final double open;
  final double high;
  final double low;
  final double close;

  const BarPrice({
    required this.open,
    required this.high,
    required this.low,
    required this.close,
  });
}
