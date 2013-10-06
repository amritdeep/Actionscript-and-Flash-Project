package  {
	
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	
	
	public class addition extends MovieClip {
		var a = texta.text;		
				
		public function addition() {
			// constructor code
			resulta.addEventListener(KeyboardEvent.KEY_DOWN, outputA);
		}
		
		function outputA(e:KeyboardEvent):void{
			
			
		}
	}
	
}
