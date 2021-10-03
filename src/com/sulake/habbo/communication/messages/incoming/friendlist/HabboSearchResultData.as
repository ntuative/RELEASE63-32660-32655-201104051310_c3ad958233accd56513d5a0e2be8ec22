package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2616:int;
      
      private var var_1865:String;
      
      private var var_2531:String;
      
      private var var_2674:Boolean;
      
      private var var_2673:Boolean;
      
      private var var_2675:int;
      
      private var var_2530:String;
      
      private var var_2672:String;
      
      private var var_1688:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2616 = param1.readInteger();
         this.var_1865 = param1.readString();
         this.var_2531 = param1.readString();
         this.var_2674 = param1.readBoolean();
         this.var_2673 = param1.readBoolean();
         param1.readString();
         this.var_2675 = param1.readInteger();
         this.var_2530 = param1.readString();
         this.var_2672 = param1.readString();
         this.var_1688 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2616;
      }
      
      public function get avatarName() : String
      {
         return this.var_1865;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2531;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2674;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2673;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2675;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2530;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2672;
      }
      
      public function get realName() : String
      {
         return this.var_1688;
      }
   }
}
