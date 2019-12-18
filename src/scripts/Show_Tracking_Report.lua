function STELLAR.trackingReport()
  if stellardb then
    echo("\n")
    STELLAR.borderText("STELLAR -+- Tracking Report")
    echo("\n")
    cecho("\n<light_goldenrod>   Resource"..string.rep(" ", 8).."U"..string.rep(" ", 3).."Location"
      ..string.rep(" ", 11).."Age"
    )
    local cur_time = os.time()
    for k, v in pairs(stellardb) do
      
      -- Timer
      local time_delta = (cur_time - v.time)/60  -- sec to min
      local tcolor = "<papaya_whip>"
      if time_delta < 60 then
        tcolor = "<papaya_whip>"
        time_delta = math.floor(time_delta).." m"  -- min
      elseif time_delta >= 60 and time_delta < 120 then
        tcolor = "<yellow>"
        time_delta = time_delta/60
        time_delta = string.format("%.1f", time_delta).." h"  -- 1 hour
      elseif time_delta >= 120 and time_delta < 1440 then
        tcolor = "<orange>"
        time_delta = time_delta/60
        time_delta = string.format("%.1f", time_delta).." h"  -- 2 or more hours
      elseif time_delta >= 1440 then
        tcolor = "<red>"
        time_delta = time_delta/60
        time_delta = string.format("%.1f", time_delta).." h"  -- days
      end
      
      -- Set location
      ap_loc = v.zone.." "..v.x.." "..v.y
      
      -- Set harvestable color
      res_lower = v.res:lower()
      if res_lower == "helium-11" then res_lower = "helium11" end
      hcolor = STELLAR.harvest_colors[res_lower] or "papaya_whip"
      
      cechoLink("\n<red> X", [[ STELLAR.removeFromDB("]]..v.res_id..[[") ]], "Remove this entry", true)
      
      if v.a_id:len() > 1 then
        -- Asteroid
        v.a_units = v.a_units or ""
        cecho("<deep_sky_blue> "..
          "<"..hcolor..">"..v.res:title()..string.rep(" ", 9-v.res:len()).."#"..v.a_id..string.rep(" ", 5-(v.a_id:len()))..
          " <white>"..v.a_units..string.rep(" ", 3-v.a_units:len())
        )
          
          cechoLink(" <gold>"..v.zone.." ("..v.x..","..v.y..") ",[[ send("ship travel to ]]..ap_loc
            ..[[")]] ,"Set Auto Pilot", true
          )
          
          cecho(string.rep(" ",14-(v.zone:len()+v.x:len()+v.y:len()))..tcolor..time_delta)
      else
        -- Gas
        cecho("<deep_sky_blue> "..
          "<"..hcolor..">"..v.res:title()..string.rep(" ", 9-v.res:len()).."     ")
        cechoLink("<cyan>  C ", [[ STELLAR.assignGasID("]]..v.res_id..[[") ]], "Mark as Collecting", true)
        cecho("  ")
        cechoLink("<gold>"..v.zone.." ("..v.x..","..v.y..") ",[[ send("ship travel to ]]..ap_loc
            ..[[")]] ,"Set Auto Pilot", true
        )
        cecho(string.rep(" ",14-(v.zone:len()+v.x:len()+v.y:len()))..tcolor..time_delta)
      end
    end
  end
  echo("\n")
  cecho("\n"..STELLAR.colorBorder..string.rep("-", STELLAR.lineWidth))
  echo("\n\n")
end