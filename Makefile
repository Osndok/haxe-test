
NATIVE_GUI=-lib haxeui-core -lib haxeui-hxwidgets
FUZZY_GUI=-lib haxeui-core -lib haxeui-openfl -lib lime

all: java cpp gui

java:
	haxe $(FUZZY_GUI) -main HelloWorld -java out/java

cpp:
	haxe $(NATIVE_GUI) -main HelloWorld -cpp out/cpp

