package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_795:int = 500;
      
      private static var var_1004:Vector3d = new Vector3d();
       
      
      private var var_541:Vector3d;
      
      private var var_92:Vector3d;
      
      private var var_1979:int = 0;
      
      private var var_2743:int;
      
      private var var_1131:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_541 = new Vector3d();
         this.var_92 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this.var_1979;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_92 = null;
         this.var_541 = null;
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_1131 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               this.var_92.assign(param1.loc);
               _loc3_ = _loc2_.targetLoc;
               this.var_2743 = this.var_1979;
               this.var_541.assign(_loc3_);
               this.var_541.sub(this.var_92);
            }
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = 0;
         if(this.var_541.length > 0)
         {
            _loc2_ = param1 - this.var_2743;
            if(_loc2_ > this.var_1131)
            {
               _loc2_ = this.var_1131;
            }
            var_1004.assign(this.var_541);
            var_1004.mul(_loc2_ / Number(this.var_1131));
            var_1004.add(this.var_92);
            if(object != null)
            {
               object.setLocation(var_1004);
            }
            if(_loc2_ == this.var_1131)
            {
               this.var_541.x = 0;
               this.var_541.y = 0;
               this.var_541.z = 0;
            }
         }
         this.var_1979 = param1;
      }
   }
}
