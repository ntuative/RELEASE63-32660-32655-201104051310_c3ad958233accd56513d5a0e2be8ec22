package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetPackageEvent extends RoomSessionEvent
   {
      
      public static const const_560:String = "RSOPPE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_567:String = "RSOPPE_OPEN_PET_PACKAGE_RESULT";
       
      
      private var var_382:int = -1;
      
      private var var_1115:int = -1;
      
      private var var_1646:int = -1;
      
      private var _color:String = "";
      
      private var var_1608:int = 0;
      
      private var var_1607:String = null;
      
      public function RoomSessionPetPackageEvent(param1:String, param2:IRoomSession, param3:int, param4:int, param5:int, param6:String, param7:int, param8:String, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param2,param9,param10);
         this.var_382 = param3;
         this.var_1115 = param4;
         this.var_1646 = param5;
         this._color = param6;
         this.var_1608 = param7;
         this.var_1607 = param8;
      }
      
      public function get objectId() : int
      {
         return this.var_382;
      }
      
      public function get petType() : int
      {
         return this.var_1115;
      }
      
      public function get breed() : int
      {
         return this.var_1646;
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1608;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1607;
      }
   }
}
