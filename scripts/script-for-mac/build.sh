#!/bin/sh

DISTDIR="Table View"
APPNAME="TableView.app"


if [ -f Makefile ];then
    make distclean
fi

if [ -d "$DISTDIR" ];then
    rm -rf "$DISTDIR"
fi

qmake -spec macx-clang -config release ../../src
make -j5
echo "Deploying..."
macdeployqt $APPNAME # for dynamic link library
#strip TableView.app/Contents/MacOS/TableView # for static link library
#cp -R qt_menu.nib TableView.app/Contents/Resources
cp Info.plist $APPNAME/Contents/
cp ../../src/images/fileicon/sqlite.icns $APPNAME/Contents/Resources
cp ../../src/images/fileicon/table.icns $APPNAME/Contents/Resources

if [ -f ./codesign.sh ];then
    sh ./codesign.sh
fi

mkdir "$DISTDIR"

mv "$APPNAME" "$DISTDIR/$APPNAME"
cp ../../COPYING "$DISTDIR/LICENSE.txt"
cp ../../README.md "$DISTDIR/README.md"
cp ../../sampledata/iris.data.sqlite3 "$DISTDIR/sample-iris.sqlite3"
ln -s /Applications "$DISTDIR/Applications"

echo "Creating disk image"
hdiutil create -ov -srcfolder "$DISTDIR" -fs HFS+J -format UDBZ -volname "Table View" tableview.dmg

#rm TableView-osx.zip
#7za a TableView-osx.zip TableView.app



