package  {
	
	import flash.display.MovieClip;
	import flash.ui.Keyboard;
	import flash.events.KeyboardEvent;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.net.drm.VoucherAccessInfo;
	
	
	public class week17 extends MovieClip {
		
		var valueA:Number=5;
		var valueB:Number=4;
		var valueC:Number=3;
		var valueD:Number=2;
		
		var rectCount:Array= new Array();
		
		public function week17() {
			
			nextBtn.visible=false;
			
			texta.addEventListener(KeyboardEvent.KEY_DOWN, showA(25,100,valueA,"0xFFCC00"));
			textb.addEventListener(KeyboardEvent.KEY_DOWN,showA(150,100,valueB,"0xFFCC00"));
			textc.addEventListener(KeyboardEvent.KEY_DOWN,showA(290,100,valueC,"0xCCCC00"));
			textd.addEventListener(KeyboardEvent.KEY_DOWN,showA(415,100,valueD,"0xCCCC00"));
			
			//nextBtn.addEventListener(MouseEvent.CLICK,showAnimation);
		}
				
		function showA(j:int,k:int,i:Number,col:String):Function {
			return function(evt:KeyboardEvent):void 
			{
					
				var rectA:Sprite= new Sprite();
				rectA.graphics.beginFill(col);
				rectA.graphics.drawRect(j, k, i*20,10);
				addChild(rectA);
				rectCount.push(1);
				checkCount();
			
			};
		}//function
		
		
		function checkCount()
		{
			trace(rectCount.length);
			if(rectCount.length==4)
			{
				nextBtn.visible=true;
			}
		}//func
		
		
		/*
		function showAnimation(e:MouseEvent):void
		{
			
			
			
		}//func*/
			
	}
	
}
