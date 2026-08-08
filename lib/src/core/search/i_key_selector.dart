/// Извлекает целочисленный ключ сортировки из элемента коллекции.
/// без изменения алгоритма поиска.
abstract interface class IKeySelector<T> {
  int keyOf(T item);
}
