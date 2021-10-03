package com.sulake.habbo.widget.infostand
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetPetCommandMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetUserActionMessage;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class PetCommandTool
   {
       
      
      private var _widget:InfostandWidget;
      
      private var var_40:IFrameWindow;
      
      private var var_432:IFrameWindow;
      
      private var var_1173:Map;
      
      private var var_514:int;
      
      private var var_1824:String;
      
      private var var_367:Timer;
      
      private const const_2022:int = 1100;
      
      public function PetCommandTool(param1:InfostandWidget)
      {
         super();
         this._widget = param1;
         this.var_1173 = new Map();
         this.var_367 = new Timer(this.const_2022);
         this.var_367.addEventListener(TimerEvent.TIMER,this.onButtonDisableTimeout);
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
      
      public static function getLowestPoint(param1:IWindowContainer) : int
      {
         var _loc4_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.numChildren)
         {
            _loc4_ = param1.getChildAt(_loc3_);
            if(_loc4_.visible)
            {
               _loc2_ = Math.max(_loc2_,_loc4_.y + _loc4_.height);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function dispose() : void
      {
         if(this.var_367)
         {
            this.var_367.stop();
            this.var_367 = null;
         }
         if(this._widget)
         {
            this._widget = null;
         }
         if(this.var_40)
         {
            this.var_40.dispose();
         }
         this.var_40 = null;
         if(this.var_432)
         {
            this.var_432.dispose();
         }
         this.var_432 = null;
      }
      
      public function getPetId() : int
      {
         return this.var_514;
      }
      
      public function isVisible() : Boolean
      {
         if(this.var_40 == null)
         {
            return false;
         }
         return this.var_40.visible;
      }
      
      public function showCommandToolForPet(param1:int, param2:String, param3:BitmapData = null) : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(this.var_514 == param1)
         {
            return;
         }
         this.var_514 = param1;
         this.var_1824 = param2;
         if(this.var_40 == null)
         {
            return;
         }
         var _loc4_:ITextWindow = this.var_40.findChildByName("pet_name") as ITextWindow;
         if(_loc4_ != null)
         {
            _loc4_.text = param2;
         }
         var _loc5_:IBitmapWrapperWindow = this.var_40.findChildByName("avatar_image") as IBitmapWrapperWindow;
         if(_loc5_ != null)
         {
            if(param3 != null)
            {
               _loc7_ = new BitmapData(_loc5_.width,_loc5_.height,true,0);
               _loc8_ = new Point(0,0);
               _loc8_.x = Math.round((_loc5_.width - param3.width) / 2);
               _loc8_.y = Math.round((_loc5_.height - param3.height) / 2);
               _loc7_.copyPixels(param3,param3.rect,_loc8_);
               _loc5_.bitmap = _loc7_;
            }
            else
            {
               _loc5_.bitmap = null;
            }
            _loc5_.invalidate();
         }
         var _loc6_:CommandConfiguration = this.var_1173.getValue(param1) as CommandConfiguration;
         if(_loc6_ == null)
         {
            this.disableAllButtons();
            this.requestEnabledCommands(this.var_514);
         }
         else
         {
            this.updateCommandButtonsViewState(_loc6_);
         }
      }
      
      private function onButtonDisableTimeout(param1:TimerEvent) : void
      {
         var _loc2_:CommandConfiguration = this.var_1173.getValue(this.var_514) as CommandConfiguration;
         this.updateCommandButtonsViewState(_loc2_);
         this.var_367.stop();
      }
      
      public function setEnabledCommands(param1:int, param2:CommandConfiguration) : void
      {
         this.var_1173.remove(param1);
         this.var_1173.add(param1,param2);
         if(param1 != this.var_514)
         {
            return;
         }
         this.updateCommandButtonsViewState(param2);
         this.var_367.stop();
      }
      
      public function showWindow(param1:Boolean) : void
      {
         if(param1)
         {
            if(this.var_40 == null)
            {
               this.createCommandWindow();
            }
            this.var_40.visible = true;
         }
         else if(this.var_40 != null)
         {
            this.var_40.visible = false;
         }
         this.var_367.stop();
      }
      
      private function requestEnabledCommands(param1:int) : void
      {
         var _loc2_:RoomWidgetPetCommandMessage = new RoomWidgetPetCommandMessage(RoomWidgetPetCommandMessage.const_832,param1);
         this._widget.messageListener.processWidgetMessage(_loc2_);
      }
      
      private function createCommandWindow() : void
      {
         var _loc1_:XmlAsset = this._widget.assets.getAssetByName("pet_commands") as XmlAsset;
         this.var_40 = this._widget.windowManager.buildFromXML(_loc1_.content as XML) as IFrameWindow;
         if(this.var_40 == null)
         {
            throw new Error("Failed to construct command window from XML!");
         }
         this.var_40.setParamFlag(WindowParam.const_96,true);
         this.var_40.context.getDesktopWindow().addEventListener(WindowEvent.const_38,this.onWindowDesktopResized);
         this.var_40.procedure = this.onCommandWindowProcedure;
         this.var_40.x = 80;
      }
      
      private function updateCommandButtonsViewState(param1:CommandConfiguration) : void
      {
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(this.var_40 == null)
         {
            return;
         }
         var _loc2_:IWindowContainer = IWindowContainer(this.var_40.findChildByName("commands_container"));
         hideChildren(_loc2_);
         var _loc3_:Array = param1.allCommandIds;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         while(_loc8_ < _loc3_.length)
         {
            _loc9_ = IButtonWindow(_loc2_.getChildAt(_loc8_));
            if(_loc9_ == null)
            {
               _loc11_ = this._widget.assets.getAssetByName("pet_command") as XmlAsset;
               _loc9_ = this._widget.windowManager.buildFromXML(_loc11_.content as XML) as IButtonWindow;
               _loc9_.procedure = this.onTrainButton;
               _loc2_.addChild(_loc9_);
            }
            _loc9_.visible = true;
            _loc10_ = _loc3_[_loc8_];
            _loc9_.id = _loc10_;
            _loc9_.caption = this._widget.localizations.getKey("pet.command." + _loc10_);
            if(param1.isEnabled(_loc10_))
            {
               _loc9_.enable();
            }
            else
            {
               _loc9_.disable();
            }
            _loc9_.y = _loc7_;
            if(_loc8_ % 2 == 1)
            {
               _loc7_ += 25;
               _loc9_.x = 86;
            }
            else
            {
               _loc9_.x = 0;
            }
            _loc8_++;
         }
         _loc2_.height = getLowestPoint(_loc2_);
         this.var_40.height = _loc2_.height + 160;
         this.var_367.stop();
      }
      
      private function disableAllButtons() : void
      {
         var _loc3_:* = null;
         if(this.var_40 == null)
         {
            return;
         }
         var _loc1_:IWindowContainer = IWindowContainer(this.var_40.findChildByName("commands_container"));
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.numChildren)
         {
            _loc3_ = IButtonWindow(_loc1_.getChildAt(_loc2_));
            _loc3_.disable();
            _loc2_++;
         }
      }
      
      private function openInfoWindow() : void
      {
         var _loc1_:* = null;
         if(this.var_432 == null)
         {
            _loc1_ = this._widget.assets.getAssetByName("pet_commands_info") as XmlAsset;
            this.var_432 = this._widget.windowManager.buildFromXML(_loc1_.content as XML) as IFrameWindow;
            if(this.var_432 == null)
            {
               throw new Error("Failed to construct command info window from XML!");
            }
            this.var_432.x = 200;
            this.var_432.procedure = this.onInfoWindowProcedure;
         }
         else
         {
            this.var_432.visible = true;
         }
      }
      
      private function onInfoWindowProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ != null && _loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            if(param2.name == "header_button_close")
            {
               this.var_432.visible = false;
            }
         }
      }
      
      private function onCommandWindowProcedure(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ != null && _loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            if(param2.name == "header_button_close")
            {
               this.var_40.visible = false;
            }
            else if(param2.name == "description_link")
            {
               this.openInfoWindow();
            }
            else if(param2.name == "avatar_image")
            {
               this._widget.messageListener.processWidgetMessage(new RoomWidgetUserActionMessage(RoomWidgetUserActionMessage.const_411,this.var_514));
            }
            else if(param2.name.indexOf("btn_cmd_") > -1)
            {
               _loc4_ = int(param2.name.substring(8));
               _loc5_ = "pet.command." + _loc4_;
               _loc6_ = this._widget.localizations.getKey(_loc5_);
               _loc7_ = new RoomWidgetPetCommandMessage(RoomWidgetPetCommandMessage.const_454,this.var_514,this.var_1824 + " " + _loc6_);
               this._widget.messageListener.processWidgetMessage(_loc7_);
               this.disableAllButtons();
               this.var_367.start();
            }
         }
      }
      
      private function onTrainButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:int = param2.id;
         var _loc4_:String = "pet.command." + _loc3_;
         var _loc5_:String = this._widget.localizations.getKey(_loc4_);
         var _loc6_:RoomWidgetPetCommandMessage = new RoomWidgetPetCommandMessage(RoomWidgetPetCommandMessage.const_454,this.var_514,this.var_1824 + " " + _loc5_);
         this._widget.messageListener.processWidgetMessage(_loc6_);
         this.disableAllButtons();
         this.var_367.start();
      }
      
      private function onWindowDesktopResized(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this.var_40 && !this.var_40.disposed)
         {
            _loc2_ = param1.window;
            _loc3_ = new Rectangle();
            this.var_40.getGlobalRectangle(_loc3_);
            if(_loc3_.x > _loc2_.width)
            {
               this.var_40.x = _loc2_.width - this.var_40.width;
               this.var_40.getGlobalRectangle(_loc3_);
            }
            if(_loc3_.x + _loc3_.width <= 0)
            {
               this.var_40.x = 0;
               this.var_40.getGlobalRectangle(_loc3_);
            }
            if(_loc3_.y > _loc2_.height)
            {
               this.var_40.y = 0;
               this.var_40.getGlobalRectangle(_loc3_);
            }
            if(_loc3_.y + _loc3_.height <= 0)
            {
               this.var_40.y = 0;
               this.var_40.getGlobalRectangle(_loc3_);
            }
         }
      }
   }
}
