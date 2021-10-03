package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1782:int = 1;
      
      public static const const_1516:int = 2;
       
      
      private var var_989:String;
      
      private var var_2829:int;
      
      private var var_2830:int;
      
      private var var_2831:int;
      
      private var var_2832:int;
      
      private var var_2836:Boolean;
      
      private var var_2222:Boolean;
      
      private var var_2833:int;
      
      private var var_2827:int;
      
      private var var_2834:Boolean;
      
      private var var_2835:int;
      
      private var var_2828:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_989 = param1.readString();
         this.var_2829 = param1.readInteger();
         this.var_2830 = param1.readInteger();
         this.var_2831 = param1.readInteger();
         this.var_2832 = param1.readInteger();
         this.var_2836 = param1.readBoolean();
         this.var_2222 = param1.readBoolean();
         this.var_2833 = param1.readInteger();
         this.var_2827 = param1.readInteger();
         this.var_2834 = param1.readBoolean();
         this.var_2835 = param1.readInteger();
         this.var_2828 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_989;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2829;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2830;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2831;
      }
      
      public function get responseType() : int
      {
         return this.var_2832;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2836;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2222;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2833;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2827;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2834;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2835;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2828;
      }
   }
}
