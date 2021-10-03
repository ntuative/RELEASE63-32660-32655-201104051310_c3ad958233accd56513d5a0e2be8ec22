package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1751:int;
      
      private var var_2373:int;
      
      private var var_831:int;
      
      private var var_526:Number;
      
      private var var_2374:Boolean;
      
      private var var_2372:int;
      
      private var var_1752:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_526);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2373 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2372 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2374 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_831;
         if(this.var_831 == 1)
         {
            this.var_526 = param1;
            this.var_1751 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_831);
            this.var_526 = this.var_526 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2374 && param3 - this.var_1751 >= this.var_2373)
         {
            this.var_831 = 0;
            if(this.var_1752 < this.var_2372)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_1752;
               this.var_1751 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
