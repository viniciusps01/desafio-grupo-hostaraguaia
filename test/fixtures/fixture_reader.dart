import 'dart:io';

enum FixtureOption { pokemonOne, pokemonList, evolutionList, searchHistoryList }

String fixtureSync(FixtureOption option) =>
    File(_fixturePath(option)).readAsStringSync();

Future<String> fixtureAsync(FixtureOption option) =>
    File(_fixturePath(option)).readAsString();

const _basePath = 'test/fixtures';

final _paths = {
  FixtureOption.pokemonOne: '$_basePath/pokemon_one.json',
  FixtureOption.evolutionList: '$_basePath/evolution_list.json',
  FixtureOption.pokemonList: '$_basePath/pokemon_list.json',
  FixtureOption.searchHistoryList: '$_basePath/search_history.json'
};

String _fixturePath(FixtureOption option) => _paths[option]!;
