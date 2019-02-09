Database and Data Model for [Star Wars: Legion][1].

[![Build Status](https://travis-ci.org/hquplink/swlegion.svg?branch=master)](https://travis-ci.org/hquplink/swlegion)

This package is written and maintained in [Dart][2] for maintainability. There
is also a JSON format for use with other languages or systems (see
[`lib/catalog.json`][json]).

[json]: https://github.com/hquplink/swlegion/blob/master/lib/catalog.json

_Star Wars, Star Wars: Legion and all related properties and text are owned by Fantasy Flight Games, Lucasfilm Ltd., and/or Disney._

[1]: https://www.fantasyflightgames.com/en/products/star-wars-legion/
[2]: https://www.dartlang.org/

<img src="https://user-images.githubusercontent.com/168174/52512735-58311080-2bbb-11e9-8bad-c2338bfe0fbc.png">

## Usage

This package provides 2 libraries: `catalog.dart` and `swlegion.dart`. Library
`catalog` is a (best effort) collection of all known cards and other models
that may change over time. Common APIs include:

- `catalog.commands` and `Commands`
- `catalog.units` and `Units`
- `catalog.upgrades` and `Upgrades`
- `catalog.weapons` and `Weapons`

Library `swlegion.dart` is just the data _models_, with the idea that they are
used to create `catalog.dart` (and exported as `catalog.json` for use in
non-Dart clients).

There is also a utility class `Catalog` (or the built-in instance, `catalog`)
which adds the ability to do easy aggregations or compuations, for example which
`Upgrade`(s) are valid given a `Unit` instance or reference, and a utility class
`Holodeck` for running dice simulations and calculating statistics
(`holodeck.dart`).
