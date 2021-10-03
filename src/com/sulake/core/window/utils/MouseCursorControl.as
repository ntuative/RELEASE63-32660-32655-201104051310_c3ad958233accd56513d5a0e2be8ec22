package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_29;
      
      private static var var_127:Stage;
      
      private static var var_291:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_701:Boolean = true;
      
      private static var var_110:DisplayObject;
      
      private static var var_1322:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_127 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_110)
            {
               var_127.removeChild(var_110);
               var_127.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_127.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_127.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_127.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_701 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_291;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_291 = param1;
         if(var_291)
         {
            if(var_110)
            {
               var_110.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_110)
         {
            var_110.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_701)
         {
            _loc1_ = var_1322[_type];
            if(_loc1_)
            {
               if(var_110)
               {
                  var_127.removeChild(var_110);
               }
               else
               {
                  var_127.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_127.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_127.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_127.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_110 = _loc1_;
               var_127.addChild(var_110);
            }
            else
            {
               if(var_110)
               {
                  var_127.removeChild(var_110);
                  var_127.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_127.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_127.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_127.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_110 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_29:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_336:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_1524:
                  case MouseCursorType.const_264:
                  case MouseCursorType.const_1628:
                  case MouseCursorType.const_1509:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_701 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1322[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_110)
         {
            var_110.x = param1.stageX - 2;
            var_110.y = param1.stageY;
            if(_type == MouseCursorType.const_29)
            {
               var_291 = false;
               Mouse.show();
            }
            else
            {
               var_291 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_110 && _type != MouseCursorType.const_29)
         {
            Mouse.hide();
            var_291 = false;
         }
      }
   }
}
