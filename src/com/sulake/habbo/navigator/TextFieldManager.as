package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_74:ITextFieldWindow;
      
      private var var_580:Boolean;
      
      private var var_1481:String = "";
      
      private var var_1628:int;
      
      private var var_1627:Function;
      
      private var var_2195:String = "";
      
      private var var_128:IWindowContainer;
      
      private var var_2197:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2196:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_74 = param2;
         this.var_1628 = param3;
         this.var_1627 = param4;
         if(param5 != null)
         {
            this.var_580 = true;
            this.var_1481 = param5;
            this.var_74.text = param5;
         }
         Util.setProcDirectly(this.var_74,this.onInputClick);
         this.var_74.addEventListener(WindowKeyboardEvent.const_203,this.checkEnterPress);
         this.var_74.addEventListener(WindowEvent.const_107,this.checkMaxLen);
         this.var_2197 = this.var_74.textBackground;
         this._orgTextBackgroundColor = this.var_74.textBackgroundColor;
         this.var_2196 = this.var_74.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_74.textBackground = this.var_2197;
         this.var_74.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_74.textColor = this.var_2196;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_74.textBackground = true;
         this.var_74.textBackgroundColor = 4294021019;
         this.var_74.textColor = 4278190080;
         if(this.var_128 == null)
         {
            this.var_128 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_128,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_74.parent).addChild(this.var_128);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_128.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_128.findChildByName("border").width = _loc2_.width + 15;
         this.var_128.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_74.getLocalPosition(_loc3_);
         this.var_128.x = _loc3_.x;
         this.var_128.y = _loc3_.y - this.var_128.height + 3;
         var _loc4_:IWindow = this.var_128.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_128.width / 2 - _loc4_.width / 2;
         this.var_128.x += (this.var_74.width - this.var_128.width) / 2;
         this.var_128.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1481 != null)
         {
            this.var_74.text = this.var_1481;
            this.var_580 = true;
         }
         else
         {
            this.var_74.text = "";
            this.var_580 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_580)
         {
            return this.var_2195;
         }
         return this.var_74.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_580 = false;
         this.var_74.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_128 != null)
         {
            this.var_128.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_74;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_580 && Util.trim(this.getText()).length > 2;
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
         this.var_74.text = this.var_2195;
         this.var_580 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:WindowKeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER)
         {
            if(this.var_1627 != null)
            {
               this.var_1627();
            }
         }
      }
      
      private function checkMaxLen(param1:WindowEvent) : void
      {
         var _loc2_:String = this.var_74.text;
         if(_loc2_.length > this.var_1628)
         {
            this.var_74.text = _loc2_.substring(0,this.var_1628);
         }
      }
   }
}
