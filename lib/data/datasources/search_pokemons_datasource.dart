abstract class SearchPokemonsDataSource {
  Future<String> call(String searchTerm, {int limit = 10, int offset = 0});
}
