package entity {
	import mx.controls.DateField;

	public class L3D {
		public function L3D(da:String) {
			var tempArray :Array = null;
			if(da != null && da != ""){
				var tempNum:int = 0;
				tempArray = da.split(" ");
				this.times = tempArray[tempNum++];
				this.date = tempArray[tempNum++];
				this.bw = tempArray[tempNum++];
				this.sw = tempArray[tempNum++];
				this.gw  = tempArray[tempNum++];
				this.bwTest  = tempArray[tempNum++];
				this.swTest  = tempArray[tempNum++];
				this.gwTest  = tempArray[tempNum++];
				tempNum++;tempNum++;
				this.totalMoney = tempArray[tempNum++];
				this.totalLuckNum = tempArray[tempNum++];
				
				timesUpright = this.times.charAt(0)+'&#13;'+ this.times.charAt(1)+'&#13;'
						+this.times.charAt(2)+'&#13;'+this.times.charAt(3)+'&#13;'+
						this.times.charAt(4)+'&#13;'+this.times.charAt(5)+'&#13;'+this.times.charAt(6);
			}
//				times = tempArray[0];//2004001
//				timesSpl = times.charAt(0)+times.charAt(1) + times.charAt(2)+ times.charAt(3)+'&#13;' + times.charAt(4)+ times.charAt(5)+times.charAt(6) ;
//				//				timesSpl = times.charAt(0)+'&#13;'+times.charAt(1)+'&#13;'+times.charAt(2)+'&#13;'+
//				//						times.charAt(3)+'&#13;'+times.charAt(4)+'&#13;'+times.charAt(5)+'&#13;'+times.charAt(6)+'&#13;';
//				luckNum = tempArray[1];
//				perLuckNum = tempArray[2];
//				baiPerLuckNum = Number(perLuckNum.charAt(0));
//				shiPerLuckNum = Number(perLuckNum.charAt(1));
//				gePerLuckNum = Number(perLuckNum.charAt(2));
//				baiLuckNum = Number(luckNum.charAt(0));
//				shiLuckNum = Number(luckNum.charAt(1));
//				geLuckNum = Number(luckNum.charAt(2));
		}
		public var times:String = "";
		public var timesUpright:String = "";
		public var year:String = "";
		public var date:String = "";
		
		public var bw:String = "";//正式号百位
		public var sw:String = "";//正式号个位
		public var gw:String = "";//正式号个位
		public var bwTest:String = "";//测试号百位
		public var swTest:String = "";//测试号十位
		public var gwTest:String = "";//测试号个位
		public var totalMoney:String = "";//本期奖金总数
		public var totalLuckNum:String = "";//总中奖注数
	}
}