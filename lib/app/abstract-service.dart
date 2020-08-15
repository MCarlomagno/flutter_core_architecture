

abstract class AbstractService<T> {

  Future<T> create(T);

  Future<T> update(T);

  Future<void> delete(int);

  Future<T> getById(int);

  Future<List<T>> getAll();

}