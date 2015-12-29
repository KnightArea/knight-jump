package knightJumpCode.ui.simpleGame
	//knightJumpCode.ui.simpleGame.MyBall
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.TransformGestureEvent;
	
	public class MyBall extends MovieClip
	{
		private var speed:Number ;
		
		public function MyBall(X0:Number=0,Y0:Number=0)
		{
			super();
			
			this.x = X0 ;
			this.y = Y0 ;
			
			
			speed = Math.floor(Math.random()*10)+2;
			
			this.addEventListener(Event.ENTER_FRAME,animate);
			this.addEventListener(TransformGestureEvent.GESTURE_PAN,touched);
		}
		
		private function animate(event:Event):void
		{
			//this.x=(this.parent.mouseX-this.x);
			this.y+=(this.parent.mouseY-this.y)/speed;
			this.x+=(this.parent.mouseX-this.x)/speed;
		}
		
		protected function touched(event:TransformGestureEvent):void
		{
			// TODO Auto-generated method stub
			this.parent.removeChild(this);
		}
	}
}