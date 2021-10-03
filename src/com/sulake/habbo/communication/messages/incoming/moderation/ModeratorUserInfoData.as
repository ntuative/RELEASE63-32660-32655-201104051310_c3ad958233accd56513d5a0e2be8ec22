package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2631:int;
      
      private var var_2630:int;
      
      private var var_798:Boolean;
      
      private var var_2632:int;
      
      private var var_2634:int;
      
      private var var_2629:int;
      
      private var var_2633:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2631 = param1.readInteger();
         this.var_2630 = param1.readInteger();
         this.var_798 = param1.readBoolean();
         this.var_2632 = param1.readInteger();
         this.var_2634 = param1.readInteger();
         this.var_2629 = param1.readInteger();
         this.var_2633 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2631;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2630;
      }
      
      public function get online() : Boolean
      {
         return this.var_798;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2632;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2634;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2629;
      }
      
      public function get banCount() : int
      {
         return this.var_2633;
      }
   }
}
