package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2933:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_83 = param1.desktop;
         var_65 = param1.var_1297 as WindowController;
         var_174 = param1.var_1296 as WindowController;
         var_162 = param1.renderer;
         var_857 = param1.var_1298;
         param2.begin();
         param2.end();
         param1.desktop = var_83;
         param1.var_1297 = var_65;
         param1.var_1296 = var_174;
         param1.renderer = var_162;
         param1.var_1298 = var_857;
      }
   }
}
