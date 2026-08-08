/// Диапазон цен на ценовой шкале.
abstract class IPriceRange {
  double get minValue;
  double get maxValue;

  bool get isEmpty;
  double get length;

  IPriceRange merge(IPriceRange? other);
  IPriceRange scale(double coeff);
  IPriceRange shift(double delta);
}

class PriceRange implements IPriceRange {
  final double _min;
  final double _max;

  const PriceRange(this._min, this._max);

  @override
  double get minValue => _min;

  @override
  double get maxValue => _max;

  @override
  bool get isEmpty => _max == _min || _max.isNaN || _min.isNaN;

  @override
  double get length => _max - _min;

  @override
  IPriceRange merge(IPriceRange? other) {
    if (other == null) return this;
    return PriceRange(
      _min < other.minValue ? _min : other.minValue,
      _max > other.maxValue ? _max : other.maxValue,
    );
  }

  @override
  IPriceRange scale(double coeff) {
    final center = (_max + _min) * 0.5;
    final halfLength = (_max - _min) * 0.5 * coeff;
    return PriceRange(center - halfLength, center + halfLength);
  }

  @override
  IPriceRange shift(double delta) => PriceRange(_min + delta, _max + delta);
}
