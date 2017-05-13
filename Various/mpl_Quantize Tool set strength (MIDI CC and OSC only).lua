--[[
   * ReaScript Name: Quantize Tool set strength (MIDI CC and OSC only)
   * Lua script for Cockos REAPER
   * Author: MPL
   * Author URI: http://forum.cockos.com/member.php?u=70694
   * Licence: GPL v3
   * Version: 1.0
  ]]
  
-- set strenght value for mpl Quantize tool
 
is_new_value,filename,sectionID,cmdID,mode,resolution,val = reaper.get_action_context()
val_ret=val/resolution
value = tostring(val_ret)
reaper.SetExtState("mplQT_settings", "Strenght", value, false)
