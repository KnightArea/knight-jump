package
{
	import flash.display.Sprite;
	
	import knightJumpCode.ui.simpleGame.MyBall;
	
	public class KnightJump extends Sprite
	{
		private var ball:MyBall ;
		
		public function KnightJump()
		{
			super();
			
			for(var i:int = 0 ; i<1 ; i++)
			{
				ball = new MyBall(stage.stageWidth,stage.stageHeight);
				this.addChild(ball);
			}
		}
	}
}