package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1319:IHabboTracking;
      
      private var var_1675:Boolean = false;
      
      private var var_2593:int = 0;
      
      private var var_1896:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1319 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1319 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1675 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2593 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1675)
         {
            return;
         }
         ++this.var_1896;
         if(this.var_1896 <= this.var_2593)
         {
            this.var_1319.track("toolbar",param1);
         }
      }
   }
}
