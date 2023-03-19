# raylib-api [![@raylib/api](http://img.shields.io/npm/v/@raylib/api.svg)](https://npmjs.org/package/@raylib/api "@raylib/api on npm")

Exports of the [raylib](https://github.com/raysan5/raylib/) API through [raylib's parser](https://github.com/raysan5/raylib/tree/master/parser).

**Target Version:** 4.5.0

## Features

Versioned exports of the latest raylib APIs through the latest version of the [parser](https://github.com/raysan5/raylib/tree/master/parser):

- reasings
- raygui
- raylib
- raymath
- rlgl
- rmem
- rres

## Usage

Since this is just data, there are a few ways to use *raylib-api*...

### [Node.js](https://www.npmjs.com/package/@raylib/api)

``` bash
npm install @raylib/api
```

``` js
const raylibApi = require('@raylib/api')
```

### git

``` bash
# Clone
git clone https://github.com/RobLoach/raylib-api.git

# Submodule
git submodule add https://github.com/RobLoach/raylib-api.git
```

## Update

To update the exported APIs based on the latest parser, run:

```
make
```

See [Makefile](Makefile) for more.

## License

*raylib-api* is licensed under an unmodified zlib/libpng license, which is an OSI-certified,
BSD-like license that allows static linking with closed source software. Check [LICENSE](LICENSE) for further details.

*Copyright (c) 2022 Rob Loach ([@RobLoach](https://twitter.com/RobLoach))*
