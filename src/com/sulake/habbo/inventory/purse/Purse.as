package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2027:int = 0;
      
      private var var_2026:int = 0;
      
      private var var_2221:int = 0;
      
      private var var_2223:Boolean = false;
      
      private var var_2222:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2027 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2026 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2221 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2223 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2222 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2027;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2026;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2221;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2223;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2222;
      }
   }
}
