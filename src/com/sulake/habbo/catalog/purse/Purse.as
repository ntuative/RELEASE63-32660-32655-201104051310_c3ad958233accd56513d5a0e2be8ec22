package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_185:int = 0;
       
      
      private var var_1900:int = 0;
      
      private var var_1563:Dictionary;
      
      private var var_2027:int = 0;
      
      private var var_2026:int = 0;
      
      private var var_2222:Boolean = false;
      
      private var var_2833:int = 0;
      
      private var var_2827:int = 0;
      
      public function Purse()
      {
         this.var_1563 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1900;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1900 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2027;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2027 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2026;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2026 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2027 > 0 || this.var_2026 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2222;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2222 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2833;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2833 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2827;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2827 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1563;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1563 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1563[param1];
      }
   }
}
