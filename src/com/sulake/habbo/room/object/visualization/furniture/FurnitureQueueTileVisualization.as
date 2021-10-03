package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1309:int = 3;
      
      private static const const_1406:int = 2;
      
      private static const const_1407:int = 1;
      
      private static const const_1405:int = 15;
       
      
      private var var_325:Array;
      
      private var var_1279:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_325 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1406)
         {
            this.var_325 = new Array();
            this.var_325.push(const_1407);
            this.var_1279 = const_1405;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1279 > 0)
         {
            --this.var_1279;
         }
         if(this.var_1279 == 0)
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
