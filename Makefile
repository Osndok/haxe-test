
NATIVE_GUI=-lib haxeui-core -lib haxeui-hxwidgets
FUZZY_GUI=-lib haxeui-core -lib haxeui-openfl -lib lime

default: cpp
all: html java cpp gui

html:
	mkdir -p 'out/html'
	haxe -lib haxeui-core -lib haxeui-html5 -main HelloWorld -html out/html/main.js

java:
	mkdir -p 'out/java'
	haxe $(FUZZY_GUI) -main HelloWorld -java out/java

cpp:
	mkdir -p 'out/cpp'
	haxe $(NATIVE_GUI) -main HelloWorld -cpp out/cpp

