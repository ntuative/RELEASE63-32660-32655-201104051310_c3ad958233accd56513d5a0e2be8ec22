package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_205;
         param1["bound_to_parent_rect"] = const_96;
         param1["child_window"] = const_1130;
         param1["embedded_controller"] = const_1084;
         param1["resize_to_accommodate_children"] = const_69;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_740;
         param1["mouse_dragging_target"] = const_244;
         param1["mouse_dragging_trigger"] = const_416;
         param1["mouse_scaling_target"] = const_315;
         param1["mouse_scaling_trigger"] = const_457;
         param1["horizontal_mouse_scaling_trigger"] = const_228;
         param1["vertical_mouse_scaling_trigger"] = const_279;
         param1["observe_parent_input_events"] = const_1182;
         param1["optimize_region_to_layout_size"] = const_476;
         param1["parent_window"] = const_1177;
         param1["relative_horizontal_scale_center"] = const_187;
         param1["relative_horizontal_scale_fixed"] = const_128;
         param1["relative_horizontal_scale_move"] = const_362;
         param1["relative_horizontal_scale_strech"] = const_427;
         param1["relative_scale_center"] = const_1064;
         param1["relative_scale_fixed"] = const_847;
         param1["relative_scale_move"] = const_1218;
         param1["relative_scale_strech"] = const_1198;
         param1["relative_vertical_scale_center"] = const_207;
         param1["relative_vertical_scale_fixed"] = const_147;
         param1["relative_vertical_scale_move"] = const_274;
         param1["relative_vertical_scale_strech"] = const_319;
         param1["on_resize_align_left"] = const_797;
         param1["on_resize_align_right"] = const_572;
         param1["on_resize_align_center"] = const_569;
         param1["on_resize_align_top"] = const_657;
         param1["on_resize_align_bottom"] = const_451;
         param1["on_resize_align_middle"] = const_522;
         param1["on_accommodate_align_left"] = const_1131;
         param1["on_accommodate_align_right"] = const_506;
         param1["on_accommodate_align_center"] = const_695;
         param1["on_accommodate_align_top"] = const_1217;
         param1["on_accommodate_align_bottom"] = const_564;
         param1["on_accommodate_align_middle"] = const_686;
         param1["route_input_events_to_parent"] = const_523;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1104;
         param1["scalable_with_mouse"] = const_1103;
         param1["reflect_horizontal_resize_to_parent"] = const_555;
         param1["reflect_vertical_resize_to_parent"] = const_512;
         param1["reflect_resize_to_parent"] = const_289;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1117;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
