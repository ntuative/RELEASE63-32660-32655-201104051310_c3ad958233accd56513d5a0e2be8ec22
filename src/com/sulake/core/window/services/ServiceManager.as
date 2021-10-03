package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2883:uint;
      
      private var var_148:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_269:IWindowContext;
      
      private var var_1087:IMouseDraggingService;
      
      private var var_1083:IMouseScalingService;
      
      private var var_1085:IMouseListenerService;
      
      private var var_1088:IFocusManagerService;
      
      private var var_1084:IToolTipAgentService;
      
      private var var_1086:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2883 = 0;
         this.var_148 = param2;
         this.var_269 = param1;
         this.var_1087 = new WindowMouseDragger(param2);
         this.var_1083 = new WindowMouseScaler(param2);
         this.var_1085 = new WindowMouseListener(param2);
         this.var_1088 = new FocusManager(param2);
         this.var_1084 = new WindowToolTipAgent(param2);
         this.var_1086 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1087 != null)
         {
            this.var_1087.dispose();
            this.var_1087 = null;
         }
         if(this.var_1083 != null)
         {
            this.var_1083.dispose();
            this.var_1083 = null;
         }
         if(this.var_1085 != null)
         {
            this.var_1085.dispose();
            this.var_1085 = null;
         }
         if(this.var_1088 != null)
         {
            this.var_1088.dispose();
            this.var_1088 = null;
         }
         if(this.var_1084 != null)
         {
            this.var_1084.dispose();
            this.var_1084 = null;
         }
         if(this.var_1086 != null)
         {
            this.var_1086.dispose();
            this.var_1086 = null;
         }
         this.var_148 = null;
         this.var_269 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1087;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1083;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1085;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1088;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1084;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1086;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
