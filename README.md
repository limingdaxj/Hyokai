Hyokai
==========

About
-----

Hyokai is database viewer for big data analysis.
Easy to import from tab-separated values or CSV and export to them.

![Screen Shot](screenshot.png)

Downloads
---------

* [Source code](https://github.com/informationsea/Hyokai)
* [Binaries](https://hyokai.info)

Requirements
------------

* Mac OS X 10.8 or later
* Windows 7 or later

### Build Requirements

* Qt 5.5
* Qt Creator (Recommend)

Supported Databases
-------------------

* SQLite3 (built in)
* MySQL
* PosgreSQL

How to build
------------

### Release build

#### Mac OS X

1. Build Qt with configure options `./configure -prefix /usr/local/Qt-5.5.1-systemsqlite -system-sqlite -qt-sql-sqlite -confirm-license -opensource  -framework -system-proxies  -nomake examples -skip qtwebkit -skip qtwebengine -skip qtwebkit-examples -skip qtwebchannel`
2. Install Qt with `sudo make install`
3. move to `scripts/script-for-mac`
4. run `build.sh`

`qmake` should be included into `$PATH`

#### Windows

1. Install pre-built Qt 5.5
2. Open Qt command prompt
3. move to `scripts/script-for-windows`
4. run `build.bat`

Please read `build-scripts/script-for-windows/README.md` to learn more.

### Debug build

1. Build Qt if you are using OS X or other unix-like systems with `-qt-sql-sqlite -system-sqlite` options
2. Open `src/Hyokai.pro` with Qt Creator
3. Build it

Authors
-------

* Programming & Icon of application - Y.Okamura
* Programming - S.T
* Toolbar icons - Tango Desktop Project

License
-------

Copyright (C) 2012-2015 Yasunobu OKAMURA, S.T

Source code of Hyokai is licensed under GPL version 3 or later.

### Binary Distribution License

The binary package distributed by Y.Okamura is NOT licensed under GPL
version 3, because the package is signed with Apple Developer ID. The
binary package provided "AS IS", without warranty of any kind. Qt
libraries are still licensed under LGPL version 2.1. You can obtain
source code of Hyokai at
[Github](https://github.com/informationsea/Hyokai), but we cannot
provide certificates to sign.

Special thanks
--------------

* Hyokai uses [Qt Xlsx module](http://qtxlsx.debao.me/) distributed under MIT license

