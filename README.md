# Schoutedenapus

Generate Swift packages from podspecs.

Looking for the reverse conversion? => [Chocolat][1]

## Usage

Running

    $ pod lib schoutedenapus POD_SPEC

will generate a new `Package.swift` in the current directory.

As of right now, Schoutedenapus will only pick up the name and dependencies
from the original podspec, you will have to manually move your source files
into a directory structure that works with SPM.

## Installation

Schoutedenapus is a CocoaPods plugin distributed as RubyGem:

    $ gem install cocoapods-schoutedenapus

[1]: https://github.com/neonichu/Chocolat
