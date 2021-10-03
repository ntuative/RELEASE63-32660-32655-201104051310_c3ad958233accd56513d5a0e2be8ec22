package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1003:int;
      
      private var var_798:Boolean;
      
      private var var_1731:Boolean;
      
      private var var_657:String;
      
      private var var_1564:int;
      
      private var var_1685:String;
      
      private var var_1686:String;
      
      private var var_1688:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1003 = param1.readInteger();
         this.var_798 = param1.readBoolean();
         this.var_1731 = param1.readBoolean();
         this.var_657 = param1.readString();
         this.var_1564 = param1.readInteger();
         this.var_1685 = param1.readString();
         this.var_1686 = param1.readString();
         this.var_1688 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1003;
      }
      
      public function get online() : Boolean
      {
         return this.var_798;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1731;
      }
      
      public function get figure() : String
      {
         return this.var_657;
      }
      
      public function get categoryId() : int
      {
         return this.var_1564;
      }
      
      public function get motto() : String
      {
         return this.var_1685;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1686;
      }
      
      public function get realName() : String
      {
         return this.var_1688;
      }
   }
}
