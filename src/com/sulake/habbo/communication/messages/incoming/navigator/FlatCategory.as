package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_2021:int;
      
      private var var_2115:String;
      
      private var var_291:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_2021 = param1.readInteger();
         this.var_2115 = param1.readString();
         this.var_291 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_2021;
      }
      
      public function get nodeName() : String
      {
         return this.var_2115;
      }
      
      public function get visible() : Boolean
      {
         return this.var_291;
      }
   }
}
