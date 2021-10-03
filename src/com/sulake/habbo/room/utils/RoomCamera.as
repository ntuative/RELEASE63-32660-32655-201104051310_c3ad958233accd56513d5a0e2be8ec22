package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_976:int = 3;
       
      
      private var var_2549:int = -1;
      
      private var var_2557:int = -2;
      
      private var var_375:Vector3d = null;
      
      private var var_439:Vector3d = null;
      
      private var var_1873:Vector3d;
      
      private var var_2554:Boolean = false;
      
      private var _limitedLocY:Boolean = false;
      
      private var var_2551:Boolean = false;
      
      private var var_2553:Boolean = false;
      
      private var var_2555:int = 0;
      
      private var var_2550:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2552:int = 0;
      
      private var var_2556:int = 0;
      
      private var var_1609:int = -1;
      
      private var var_1480:int = 0;
      
      public function RoomCamera()
      {
         this.var_1873 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_439;
      }
      
      public function get targetId() : int
      {
         return this.var_2549;
      }
      
      public function get method_3() : int
      {
         return this.var_2557;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1873;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2554;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this._limitedLocY;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2551;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2553;
      }
      
      public function get screenWd() : int
      {
         return this.var_2555;
      }
      
      public function get screenHt() : int
      {
         return this.var_2550;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2552;
      }
      
      public function get roomHt() : int
      {
         return this.var_2556;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1609;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2549 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1873.assign(param1);
      }
      
      public function set method_3(param1:int) : void
      {
         this.var_2557 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2554 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this._limitedLocY = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2551 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2553 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2555 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2550 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         this._scale = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2552 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2556 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1609 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_375 == null)
         {
            this.var_375 = new Vector3d();
         }
         if(this.var_375.x != param1.x || this.var_375.y != param1.y || this.var_375.z != param1.z)
         {
            this.var_375.assign(param1);
            this.var_1480 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_375 = null;
         this.var_439 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_439 != null)
         {
            return;
         }
         this.var_439 = new Vector3d();
         this.var_439.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_375 != null && this.var_439 != null)
         {
            ++this.var_1480;
            _loc4_ = Vector3d.dif(this.var_375,this.var_439);
            if(_loc4_.length <= param2)
            {
               this.var_439 = this.var_375;
               this.var_375 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_976 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1480 <= const_976)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_439 = Vector3d.sum(this.var_439,_loc4_);
            }
         }
      }
   }
}
