package knightJumpCode.ui.simpleGame
	//knightJumpCode.ui.simpleGame.MyBall
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.TransformGestureEvent;
	
	public class MyBall extends MovieClip
	{
		private var stageWidth:Number,
					stageHeigh:Number;
					
		private const graviti:Number = 0.5;
		
		private var ySpeed:Number ;
		
		public function MyBall(StageWidth:Number=0,StageHeigh:Number=0)
		{
			super();
			
			stageWidth = StageWidth ;
			stageHeigh = StageHeigh ;
			
			ySpeed = 0 ;
			
			
			this.addEventListener(Event.ENTER_FRAME,animate);
		}
		
		private function animate(event:Event):void
		{
			trace(ySpeed);
			ySpeed+=graviti;
			
			this.y+=ySpeed;
			
			if(this.y>stageHeigh)
			{
				this.y = stageHeigh ;
				ySpeed = -1*ySpeed;
			}
		}
		
		protected function touched(event:TransformGestureEvent):void
		{
			// TODO Auto-generated method stub
			this.parent.removeChild(this);
		}
	}
}