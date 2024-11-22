# SQLite-Net-Extensions for Unity

This package provides the `sqlite-net-extensions` library as a Unity package to extend[ `unity-sqlite-net`](https://github.com/gilzoide/unity-sqlite-net).

## Overview

The `sqlite-net-extensions` library is a set of extensions for the `unity-sqlite-net` library, providing additional functionality such as relationships and cascading operations.

## Installation

### Dependencies:

- [`unity-sqlite-net`](https://github.com/gilzoide/unity-sqlite-net) package, providing the core ORM functionality
- [`Newtonsoft Json Unity`](https://docs.unity3d.com/Packages/com.unity.nuget.newtonsoft-json@3.2/manual/index.html) package, required for serialization in the sqlite-net-extensions

### Install

1. In your package manager (`Window > Package Manager`) choose the `+`.
2. Select *"Add from git URL"*
3. Enter `https://github.com/AbandonedCrypt/unity-sqlite-net-extensions.git` and go.
4. You are done and ready to use advanced relation features in sqlite-net

## Usage

Once installed, you can use the `sqlite-net-extensions` library in your Unity project as you would normally.

You can find the **[documentation](https://github.com/media-tools/sqlite-net-extensions)** for all of the features over at the original projects' repository.

## Dependencies

This package works with:

`unity-sqlite-net`

This package depends on *Unity's Newtonsoft JSON.NET* package, as `sqlite-net-extensions` depends on the presence of a JSON.NET install. At this point in time, the dependency is ***not*** enforced, but may in the future.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
