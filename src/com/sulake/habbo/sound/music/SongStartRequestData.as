package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1961:int;
      
      private var var_1986:Number;
      
      private var var_2774:Number;
      
      private var var_2772:int;
      
      private var var_2775:Number;
      
      private var var_2773:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1961 = param1;
         this.var_1986 = param2;
         this.var_2774 = param3;
         this.var_2775 = param4;
         this.var_2773 = param5;
         this.var_2772 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1961;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1986 < 0)
         {
            return 0;
         }
         return this.var_1986 + (getTimer() - this.var_2772) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2774;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2775;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2773;
      }
   }
}
