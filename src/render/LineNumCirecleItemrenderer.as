package render
{
	import mx.charts.ChartItem;
	import mx.charts.renderers.CircleItemRenderer;
	import mx.charts.series.items.LineSeriesItem;
	import mx.controls.Label;
	import mx.core.IDataRenderer;
	import mx.core.IUIComponent;
	import mx.core.UIComponent;
	
	public class LineNumCirecleItemrenderer extends  UIComponent implements IDataRenderer, IUIComponent
	{
		private var _label:Label;   
		
		public function LineNumCirecleItemrenderer()
		{
			super();   
			_label = new Label();   
			addChild(_label);   
			_label.setStyle("color",0XFF0000);
			_label.setStyle("fontSize",20);
		}
		private var _chartItem:ChartItem;   
		
		public function get data():Object   {   
			return _chartItem;   
		}   
		
		public function set data(value:Object):void   {   
			if (_chartItem == value)   
				return;   
			_chartItem = ChartItem(value);   
			
			if(_chartItem != null)   
				_label.text = LineSeriesItem(_chartItem).yValue.toString();   
		}   
		
		override protected function updateDisplayList(unscaledWidth:Number , unscaledHeight:Number):void {   
			_label.y = 10;
			_label.x = 5;
			_label.setActualSize(_label.getExplicitOrMeasuredWidth(),_label.getExplicitOrMeasuredHeight()); 
			this.graphics.clear(); 
			this.graphics.beginFill( getStyle('backgroundColor'), 1 ); 
			this.graphics.lineStyle(2, getStyle('borderColor'), 1); 
			this.graphics.drawRoundRect(0, 0, 10, 10, 24, 24); 
			this.graphics.endFill(); 
			
		}   
		
		
		
		
//		override protected function drawRoundRect(x:Number, y:Number, width:Number, height:Number, cornerRadius:Object=null, color:Object=null, alpha:Object=null, gradientMatrix:Matrix=null, gradientType:String="linear", gradientRatios:Array=null, hole:Object=null):void
//		{
//			// TODO Auto Generated method stub
//			super.drawRoundRect(x, y, width, height, 100,100,20);
//		}
		
	}
}