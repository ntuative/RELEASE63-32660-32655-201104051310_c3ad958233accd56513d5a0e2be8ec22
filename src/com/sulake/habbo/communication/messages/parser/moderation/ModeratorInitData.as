package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var var_1484:Array;
      
      private var var_1483:Array;
      
      private var _issues:Array;
      
      private var var_1199:Array;
      
      private var var_2572:Boolean;
      
      private var var_2568:Boolean;
      
      private var var_2571:Boolean;
      
      private var var_2566:Boolean;
      
      private var var_2570:Boolean;
      
      private var var_2569:Boolean;
      
      private var var_2567:Boolean;
      
      private var _disposed:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         this._issues = [];
         this.var_1484 = [];
         this.var_1483 = [];
         this.var_1199 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               this._issues.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1484.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1199.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         this.var_2572 = param1.readBoolean();
         this.var_2568 = param1.readBoolean();
         this.var_2571 = param1.readBoolean();
         this.var_2566 = param1.readBoolean();
         this.var_2570 = param1.readBoolean();
         this.var_2569 = param1.readBoolean();
         this.var_2567 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1483.push(param1.readString());
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1484 = null;
         this.var_1483 = null;
         this._issues = null;
         for each(_loc1_ in this.var_1199)
         {
            _loc1_.dispose();
         }
         this.var_1199 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get messageTemplates() : Array
      {
         return this.var_1484;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return this.var_1483;
      }
      
      public function get issues() : Array
      {
         return this._issues;
      }
      
      public function get offenceCategories() : Array
      {
         return this.var_1199;
      }
      
      public function get cfhPermission() : Boolean
      {
         return this.var_2572;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return this.var_2568;
      }
      
      public function get alertPermission() : Boolean
      {
         return this.var_2571;
      }
      
      public function get kickPermission() : Boolean
      {
         return this.var_2566;
      }
      
      public function get banPermission() : Boolean
      {
         return this.var_2570;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return this.var_2569;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return this.var_2567;
      }
   }
}
