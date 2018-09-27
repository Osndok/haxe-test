
import haxe.ui.components.Button;
import haxe.ui.containers.VBox;
import haxe.ui.core.Screen;
import haxe.ui.Toolkit;


class HelloWorld
{
    static public
	function main()
	{
		var i=0;
		for (arg in Sys.args())
		{
	        trace(i++);
			var o=haxe.Json.parse(arg);
			Sys.println(o.abc);
		}

		Toolkit.init();
		
var main = new VBox();

var button1 = new Button();
button1.text = "Button 1";
main.addComponent(button1);

var button2 = new Button();
button2.text = "Button 2";
main.addComponent(button2);

Screen.instance.addComponent(main);

    }
}