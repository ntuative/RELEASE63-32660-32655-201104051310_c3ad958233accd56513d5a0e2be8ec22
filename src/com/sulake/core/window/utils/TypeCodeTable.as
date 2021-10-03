package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_893;
         param1["bitmap"] = const_792;
         param1["border"] = const_899;
         param1["border_notify"] = const_1460;
         param1["button"] = const_556;
         param1["button_thick"] = const_709;
         param1["button_icon"] = const_1625;
         param1["button_group_left"] = const_640;
         param1["button_group_center"] = const_834;
         param1["button_group_right"] = const_743;
         param1["canvas"] = const_908;
         param1["checkbox"] = const_780;
         param1["closebutton"] = const_1138;
         param1["container"] = const_363;
         param1["container_button"] = const_786;
         param1["display_object_wrapper"] = const_639;
         param1["dropmenu"] = const_482;
         param1["dropmenu_item"] = const_510;
         param1["frame"] = const_373;
         param1["frame_notify"] = const_1424;
         param1["header"] = const_855;
         param1["html"] = const_1037;
         param1["icon"] = const_1184;
         param1["itemgrid"] = const_1149;
         param1["itemgrid_horizontal"] = const_595;
         param1["itemgrid_vertical"] = const_721;
         param1["itemlist"] = const_1194;
         param1["itemlist_horizontal"] = const_387;
         param1["itemlist_vertical"] = const_374;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1539;
         param1["menu"] = const_1717;
         param1["menu_item"] = const_1706;
         param1["submenu"] = const_1162;
         param1["minimizebox"] = const_1663;
         param1["notify"] = const_1485;
         param1["null"] = const_814;
         param1["password"] = const_906;
         param1["radiobutton"] = const_755;
         param1["region"] = const_558;
         param1["restorebox"] = const_1543;
         param1["scaler"] = const_525;
         param1["scaler_horizontal"] = const_1556;
         param1["scaler_vertical"] = const_1658;
         param1["scrollbar_horizontal"] = const_484;
         param1["scrollbar_vertical"] = const_701;
         param1["scrollbar_slider_button_up"] = const_1151;
         param1["scrollbar_slider_button_down"] = const_1069;
         param1["scrollbar_slider_button_left"] = const_1095;
         param1["scrollbar_slider_button_right"] = const_1045;
         param1["scrollbar_slider_bar_horizontal"] = const_1150;
         param1["scrollbar_slider_bar_vertical"] = const_1140;
         param1["scrollbar_slider_track_horizontal"] = const_1155;
         param1["scrollbar_slider_track_vertical"] = const_1179;
         param1["scrollable_itemlist"] = const_1592;
         param1["scrollable_itemlist_vertical"] = const_603;
         param1["scrollable_itemlist_horizontal"] = const_1020;
         param1["selector"] = const_656;
         param1["selector_list"] = const_729;
         param1["submenu"] = const_1162;
         param1["tab_button"] = const_503;
         param1["tab_container_button"] = const_1223;
         param1["tab_context"] = const_585;
         param1["tab_content"] = const_1075;
         param1["tab_selector"] = const_813;
         param1["text"] = const_579;
         param1["input"] = const_859;
         param1["toolbar"] = const_1442;
         param1["tooltip"] = const_426;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
