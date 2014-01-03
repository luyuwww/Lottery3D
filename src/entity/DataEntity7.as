package entity
{
	public class DataEntity7
	{
		public var times:String = "";
		public var timesSpl:String = "";
		public var luckNum:String = "";//中奖号
		public var perLuckNum:String = "";//试验机奖号
		public var baiPerLuckNum:int = 0;//试验机奖号 百位
		public var shiPerLuckNum:int = 0;//试验机奖号  十位
		public var gePerLuckNum:int = 0;//试验机奖号  个位
		public var baiLuckNum:int = 0;// 正式号   百位
 		public var shiLuckNum:int = 0;//正式号 十位
		public var geLuckNum:int = 0;//正式号 个位
		
		
		
		
		public function DataEntity7(da:String){
			var tempArray :Array = null;
			if(da != null && da != ""){
				tempArray = da.split("	");
				times = tempArray[0];//2004001
				timesSpl = times.charAt(4)+ times.charAt(5)+times.charAt(6)+'&#13;' + times.charAt(0)+times.charAt(1)
					+times.charAt(2)+ times.charAt(3);
//				timesSpl = times.charAt(0)+'&#13;'+times.charAt(1)+'&#13;'+times.charAt(2)+'&#13;'+
//						times.charAt(3)+'&#13;'+times.charAt(4)+'&#13;'+times.charAt(5)+'&#13;'+times.charAt(6)+'&#13;';
				luckNum = tempArray[1];
				perLuckNum = tempArray[2];
				baiPerLuckNum = Number(perLuckNum.charAt(0));
				shiPerLuckNum = Number(perLuckNum.charAt(1));
				gePerLuckNum = Number(perLuckNum.charAt(2));
				baiLuckNum = Number(luckNum.charAt(0));
				shiLuckNum = Number(luckNum.charAt(1));
				geLuckNum = Number(luckNum.charAt(2));
			}
		}
	}
}