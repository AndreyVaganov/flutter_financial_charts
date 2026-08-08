/// Обобщённый диапазон значений [from; to].
class Range<T extends num> {
  final T from;
  final T to;

  const Range(this.from, this.to);
}
