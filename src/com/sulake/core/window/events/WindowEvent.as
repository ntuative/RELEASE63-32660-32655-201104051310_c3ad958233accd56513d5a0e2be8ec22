package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1507:String = "WE_DESTROY";
      
      public static const const_300:String = "WE_DESTROYED";
      
      public static const const_1613:String = "WE_OPEN";
      
      public static const const_1510:String = "WE_OPENED";
      
      public static const const_1436:String = "WE_CLOSE";
      
      public static const const_1687:String = "WE_CLOSED";
      
      public static const const_1463:String = "WE_FOCUS";
      
      public static const const_307:String = "WE_FOCUSED";
      
      public static const const_1606:String = "WE_UNFOCUS";
      
      public static const const_1595:String = "WE_UNFOCUSED";
      
      public static const const_1427:String = "WE_ACTIVATE";
      
      public static const const_580:String = "WE_ACTIVATED";
      
      public static const const_1422:String = "WE_DEACTIVATE";
      
      public static const const_478:String = "WE_DEACTIVATED";
      
      public static const const_317:String = "WE_SELECT";
      
      public static const const_59:String = "WE_SELECTED";
      
      public static const const_574:String = "WE_UNSELECT";
      
      public static const const_568:String = "WE_UNSELECTED";
      
      public static const const_1669:String = "WE_LOCK";
      
      public static const const_1576:String = "WE_LOCKED";
      
      public static const const_1701:String = "WE_UNLOCK";
      
      public static const const_1635:String = "WE_UNLOCKED";
      
      public static const const_886:String = "WE_ENABLE";
      
      public static const const_223:String = "WE_ENABLED";
      
      public static const const_720:String = "WE_DISABLE";
      
      public static const const_182:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_270:String = "WE_RELOCATED";
      
      public static const const_1027:String = "WE_RESIZE";
      
      public static const const_38:String = "WE_RESIZED";
      
      public static const const_1542:String = "WE_MINIMIZE";
      
      public static const const_1546:String = "WE_MINIMIZED";
      
      public static const const_1707:String = "WE_MAXIMIZE";
      
      public static const const_1713:String = "WE_MAXIMIZED";
      
      public static const const_1599:String = "WE_RESTORE";
      
      public static const const_1621:String = "WE_RESTORED";
      
      public static const const_549:String = "WE_CHILD_ADDED";
      
      public static const const_370:String = "WE_CHILD_REMOVED";
      
      public static const const_184:String = "WE_CHILD_RELOCATED";
      
      public static const const_136:String = "WE_CHILD_RESIZED";
      
      public static const const_329:String = "WE_CHILD_ACTIVATED";
      
      public static const const_676:String = "WE_PARENT_ADDED";
      
      public static const const_1678:String = "WE_PARENT_REMOVED";
      
      public static const const_1496:String = "WE_PARENT_RELOCATED";
      
      public static const const_1090:String = "WE_PARENT_RESIZED";
      
      public static const const_1195:String = "WE_PARENT_ACTIVATED";
      
      public static const const_189:String = "WE_OK";
      
      public static const const_884:String = "WE_CANCEL";
      
      public static const const_107:String = "WE_CHANGE";
      
      public static const const_500:String = "WE_SCROLL";
      
      public static const const_172:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_695:IWindow;
      
      protected var var_1064:Boolean;
      
      protected var var_471:Boolean;
      
      protected var var_565:Boolean;
      
      protected var var_696:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_695 = param3;
         _loc5_.var_471 = param4;
         _loc5_.var_565 = false;
         _loc5_.var_696 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_695;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_471;
      }
      
      public function recycle() : void
      {
         if(this.var_565)
         {
            throw new Error("Event already recycled!");
         }
         this.var_695 = null;
         this._window = null;
         this.var_565 = true;
         this.var_1064 = false;
         this.var_696.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1064;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1064 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1064;
      }
      
      public function stopPropagation() : void
      {
         this.var_1064 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1064 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_471 + " window: " + this._window + " }";
      }
   }
}
