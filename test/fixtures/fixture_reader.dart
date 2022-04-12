import 'dart:io';

enum FixtureOption {
  pokemonOne,
}

String fixtureSync(FixtureOption option) =>
    File(_fixturePath(option)).readAsStringSync();

Future<String> fixtureAsync(FixtureOption option) =>
    File(_fixturePath(option)).readAsString();

const _basePath = 'test/fixtures';

final _paths = {FixtureOption.pokemonOne: '$_basePath/pokemon_one.json'};

String _fixturePath(FixtureOption option) => _paths[option]!;
