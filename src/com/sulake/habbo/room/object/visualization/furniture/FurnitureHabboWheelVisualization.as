package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_957:int = 10;
      
      private static const const_635:int = 20;
      
      private static const const_1310:int = 31;
      
      private static const const_1309:int = 32;
       
      
      private var var_325:Array;
      
      private var var_761:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_325 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_761)
            {
               this.var_761 = true;
               this.var_325 = new Array();
               this.var_325.push(const_1310);
               this.var_325.push(const_1309);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_957)
         {
            if(this.var_761)
            {
               this.var_761 = false;
               this.var_325 = new Array();
               this.var_325.push(const_957 + param1);
               this.var_325.push(const_635 + param1);
               this.var_325.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_325.length > 0)
            {
               super.setAnimation(this.var_325.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
