package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2606:String;
      
      private var var_2607:String;
      
      private var var_2605:String;
      
      public function WelcomeNotification(param1:String, param2:String, param3:String)
      {
         super();
         this.var_2606 = param1;
         this.var_2607 = param2;
         this.var_2605 = param3;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2606;
      }
      
      public function get titleLocalizationKey() : String
      {
         return this.var_2607;
      }
      
      public function get descriptionLocalizationKey() : String
      {
         return this.var_2605;
      }
   }
}
