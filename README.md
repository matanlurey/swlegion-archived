Database and Data Model for [Star Wars: Legion][1].

[![Build Status](https://travis-ci.org/hquplink/swlegion.svg?branch=master)](https://travis-ci.org/hquplink/swlegion)

This package is written and maintained in [Dart][2] for maintainability. Future
versions will have `JSON`-formatted build artifacts as well for use within other
systems.

_Star Wars, Star Wars: Legion and all related properties and text are owned by Fantasy Flight Games, Lucasfilm Ltd., and/or Disney._

[1]: https://www.fantasyflightgames.com/en/products/star-wars-legion/
[2]: https://www.dartlang.org/

## Usage

This package provides 2 libraries: `database.dart` and `swlegion.dart`. Library
`database` is a (best effort) collection of all known units (`Unit`) and weapons
(`Weapon`) in the game, and other models that may change over time.

Library `swlegion.dart` is just the data _models_, with the idea that they are
used to create `database.dart`. In future versions, data may be exported to an
API and/or `JSON`, and the data models should be used to access the data once
deserialized.
