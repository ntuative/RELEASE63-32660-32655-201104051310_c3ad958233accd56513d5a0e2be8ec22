package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_72:String = "i";
      
      public static const const_77:String = "s";
      
      public static const const_186:String = "e";
       
      
      private var var_1571:String;
      
      private var var_2620:int;
      
      private var var_1570:String;
      
      private var var_1569:int;
      
      private var var_2038:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1571 = param1.readString();
         this.var_2620 = param1.readInteger();
         this.var_1570 = param1.readString();
         this.var_1569 = param1.readInteger();
         this.var_2038 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1571;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2620;
      }
      
      public function get extraParam() : String
      {
         return this.var_1570;
      }
      
      public function get productCount() : int
      {
         return this.var_1569;
      }
      
      public function get expiration() : int
      {
         return this.var_2038;
      }
   }
}
