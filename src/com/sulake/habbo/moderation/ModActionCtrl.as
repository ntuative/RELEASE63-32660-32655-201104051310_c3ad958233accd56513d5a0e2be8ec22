package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.moderation.INamed;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceData;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModAlertMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModBanMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModKickMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   
   public class ModActionCtrl implements IDisposable, TrackedWindow
   {
      
      private static var var_115:Array;
       
      
      private var var_33:ModerationManager;
      
      private var var_1349:int;
      
      private var var_1644:String;
      
      private var var_1350:String;
      
      private var _frame:IFrameWindow;
      
      private var var_1095:IDropMenuWindow;
      
      private var var_487:ITextFieldWindow;
      
      private var _disposed:Boolean;
      
      private var var_580:Boolean = true;
      
      private var var_890:OffenceCategoryData;
      
      private var var_889:OffenceData;
      
      private var var_1094:IButtonWindow;
      
      private var var_1093:IButtonWindow;
      
      public function ModActionCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         this.var_33 = param1;
         this.var_1349 = param2;
         this.var_1644 = param3;
         this.var_1350 = param4;
         if(var_115 == null)
         {
            var_115 = new Array();
            var_115.push(new BanDefinition("2 hours",2));
            var_115.push(new BanDefinition("4 hours",4));
            var_115.push(new BanDefinition("12 hours",12));
            var_115.push(new BanDefinition("24 hours",24));
            var_115.push(new BanDefinition("2 days",48));
            var_115.push(new BanDefinition("3 days",72));
            var_115.push(new BanDefinition("1 week",168));
            var_115.push(new BanDefinition("2 weeks",336));
            var_115.push(new BanDefinition("3 weeks",504));
            var_115.push(new BanDefinition("1 month",720));
            var_115.push(new BanDefinition("2 months",1440));
            var_115.push(new BanDefinition("1 year",8760));
            var_115.push(new BanDefinition("2 years",17520));
            var_115.push(new BanDefinition("Permanent",100000));
         }
         this.var_1094 = IButtonWindow(this.var_33.getXmlWindow("modact_offence"));
         this.var_1093 = IButtonWindow(this.var_33.getXmlWindow("modact_offencectg"));
      }
      
      public static function hideChildren(param1:IWindowContainer) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.numChildren)
         {
            param1.getChildAt(_loc2_).visible = false;
            _loc2_++;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function show() : void
      {
         this._frame = IFrameWindow(this.var_33.getXmlWindow("modact_summary"));
         this._frame.caption = "Mod action on: " + this.var_1644;
         this._frame.findChildByName("send_caution_but").procedure = this.onSendCautionButton;
         this._frame.findChildByName("kick_but").procedure = this.onKickButton;
         this._frame.findChildByName("ban_but").procedure = this.onBanButton;
         this._frame.findChildByName("change_categorization_but").procedure = this.onChangeCategorizationButton;
         this.var_33.disableButton(this.var_33.initMsg.alertPermission,this._frame,"send_caution_but");
         this.var_33.disableButton(this.var_33.initMsg.kickPermission,this._frame,"kick_but");
         this.var_33.disableButton(this.var_33.initMsg.banPermission,this._frame,"ban_but");
         this.var_487 = ITextFieldWindow(this._frame.findChildByName("message_input"));
         this.var_487.procedure = this.onInputClick;
         this.var_1095 = IDropMenuWindow(this._frame.findChildByName("banLengthSelect"));
         this.prepareBanSelect(this.var_1095);
         var _loc1_:IWindow = this._frame.findChildByTag("close");
         _loc1_.procedure = this.onClose;
         this.refreshCategorization();
         this._frame.visible = true;
      }
      
      public function refreshCategorization() : void
      {
         var _loc1_:IWindowContainer = IWindowContainer(this._frame.findChildByName("categorization_cont"));
         hideChildren(_loc1_);
         _loc1_.findChildByName("categorization_caption_txt").visible = true;
         _loc1_.findChildByName("change_categorization_but").visible = this.var_890 != null;
         if(this.var_889 != null)
         {
            this._frame.findChildByName("offence_txt").caption = this.var_889.name;
            this._frame.findChildByName("offence_category").visible = true;
         }
         else if(this.var_890 != null)
         {
            this.refreshButtons("offences_cont",2,this.var_890.offences,this.var_1094,this.onOffenceButton);
         }
         else
         {
            this.refreshButtons("offence_categories_cont",3,this.var_33.initMsg.offenceCategories,this.var_1093,this.onOffenceCtgButton);
            _loc1_.height = RoomToolCtrl.getLowestPoint(_loc1_);
         }
      }
      
      private function refreshButtons(param1:String, param2:int, param3:Array, param4:IWindow, param5:Function) : void
      {
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc6_:IWindowContainer = IWindowContainer(this._frame.findChildByName(param1));
         hideChildren(_loc6_);
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         for each(_loc11_ in param3)
         {
            _loc12_ = "" + _loc7_;
            _loc13_ = IButtonWindow(_loc6_.findChildByName(_loc12_));
            if(_loc13_ == null)
            {
               _loc13_ = IButtonWindow(param4.clone());
               _loc13_.procedure = param5;
               _loc13_.x = _loc9_ * (param4.width + 5);
               _loc13_.y = _loc8_ * (param4.height + 5);
               _loc13_.name = _loc12_;
               _loc6_.addChild(_loc13_);
            }
            _loc13_.caption = _loc11_.name;
            _loc13_.visible = true;
            _loc7_++;
            _loc9_++;
            if(_loc9_ >= param2)
            {
               _loc9_ = 0;
               _loc8_++;
            }
         }
         _loc6_.height = RoomToolCtrl.getLowestPoint(_loc6_);
         _loc6_.visible = true;
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1487;
      }
      
      public function getId() : String
      {
         return this.var_1644;
      }
      
      public function getFrame() : IFrameWindow
      {
         return this._frame;
      }
      
      private function prepareBanSelect(param1:IDropMenuWindow) : void
      {
         var _loc3_:* = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in var_115)
         {
            _loc2_.push(_loc3_.name);
         }
         param1.populate(_loc2_);
      }
      
      private function onSendCautionButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending caution...");
         if(!this.isMsgGiven())
         {
            return;
         }
         this.var_33.connection.send(new ModAlertMessageComposer(this.var_1349,this.var_487.text,this.var_1350));
         this.dispose();
      }
      
      private function onOffenceCtgButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = int(param2.name);
         this.var_890 = this.var_33.initMsg.offenceCategories[_loc3_];
         this.refreshCategorization();
      }
      
      private function onOffenceButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = int(param2.name);
         this.var_889 = this.var_890.offences[_loc3_];
         this.var_487.text = this.var_889.msg;
         this.var_580 = false;
         this.refreshCategorization();
      }
      
      private function onChangeCategorizationButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this.var_889 != null)
         {
            this.var_889 = null;
         }
         else
         {
            this.var_890 = null;
         }
         this.refreshCategorization();
      }
      
      private function onKickButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Kick...");
         if(!this.isMsgGiven())
         {
            return;
         }
         this.var_33.connection.send(new ModKickMessageComposer(this.var_1349,this.var_487.text,this.var_1350));
         this.dispose();
      }
      
      private function onBanButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Ban...");
         if(!this.isMsgGiven())
         {
            return;
         }
         if(this.var_1095.selection < 0)
         {
            this.var_33.windowManager.alert("Alert","You must select ban lenght",0,this.onAlertClose);
            return;
         }
         this.var_33.connection.send(new ModBanMessageComposer(this.var_1349,this.var_487.text,this.getBanLength(),this.var_1350));
         this.dispose();
      }
      
      private function isMsgGiven() : Boolean
      {
         if(this.var_580 || this.var_487.text == "")
         {
            this.var_33.windowManager.alert("Alert","You must input a message to the user",0,this.onAlertClose);
            return false;
         }
         return true;
      }
      
      private function getBanLength() : int
      {
         var _loc1_:int = this.var_1095.selection;
         var _loc2_:BanDefinition = var_115[_loc1_];
         return _loc2_.banLengthHours;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.dispose();
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_307)
         {
            return;
         }
         if(!this.var_580)
         {
            return;
         }
         this.var_487.text = "";
         this.var_580 = false;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this._frame != null)
         {
            this._frame.destroy();
            this._frame = null;
         }
         if(this.var_1094 != null)
         {
            this.var_1094.destroy();
            this.var_1094 = null;
         }
         if(this.var_1093 != null)
         {
            this.var_1093.destroy();
            this.var_1093 = null;
         }
         this.var_1095 = null;
         this.var_487 = null;
         this.var_33 = null;
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:WindowEvent) : void
      {
         param1.dispose();
      }
   }
}
