-- Core Function of STELLAR
function STELLAR.processBeacon(zone, cur_time, x, y, dist, dir, res, a_id, res_id)
  -- Check if ID is already in the table (duplicate check)
  for k, v in pairs(stellardb) do
    if res_id == stellardb[k]["res_id"] then
      -- ID is in the database
      if STELLAR.asteroid and STELLAR.probed then
        -- It is an asteroid and it's from a probe so update the record
        stellardb[k]["res"] = STELLAR.asteroid
        stellardb[k]["a_units"] = STELLAR.asteroid_units
        -- Update the time so we know the record is fresh
        stellardb[k]["time"] = cur_time
        -- Clear probed
        STELLAR.probed = false
      elseif not STELLAR.probed then
        -- ID exists and it's not from a probe (possibly a gas)
        -- Update the time to keep the record fresh
        stellardb[k]["time"] = cur_time
        -- Clear the res_id so a duplicate record is not created
        res_id = nil
        -- Clear asteroid vars
        -- asteroid = nil
        -- asteroid_units = nil
      end
    end
  end
  
  -- Real Time Entity Report
  if STELLAR.showMainDisplayOutput then
    -- Update entities report if asteroid is in the database and identified
    for k, v in pairs(stellardb) do
      if stellardb[k]["a_id"] == a_id and stellardb[k]["res"] ~= "asteroid" then
        -- Found in the database and it has been identified. Update entity report
        
        -- Gas Filter
        if a_id:len() < 1 then
          -- (report is duplicating. Not working yet. Using default report)
          -- cecho("\n<gold>"..x..string.rep(" ", 6-x:len())..y..string.rep(" ", 6-y:len())..dist..string.rep(" ", 3-dist:len())..dir
          -- ..string.rep(" ", 11-dir:len()).."Gas Cloud: ".."<green>"..v.res:title()
          -- )
          break
        else
          deleteLine()
          -- Asteroid
          cecho("\n<gold>"..x..string.rep(" ", 6-x:len())..y..string.rep(" ", 6-y:len())..dist..string.rep(" ", 3-dist:len())..dir
            ..string.rep(" ", 11-dir:len()).."Asteroid: #"..a_id.." ".."<dodger_blue>"..v.res:title()..", <white>"..v.a_units.." units"
          )
          break
        end
      elseif stellardb[k]["a_id"] == a_id and res == "asteroid" then
        -- Not in the database and not identified. Update entity report
        deleteLine()
        cecho("\n<gold>"..x..string.rep(" ", 6-x:len())..y..string.rep(" ", 6-y:len())..dist..string.rep(" ", 3-dist:len())..dir
          ..string.rep(" ", 11-dir:len()).."a mineable asteroid (#"..a_id..")<orchid>  (Not Identified)"
        )
      end
    end
  end
  
  -- Report on the asteroid you are touching (dist=1)
  if dist == "1" then
    -- Set asteroid
    for k, v in pairs(stellardb) do
      if stellardb[k]["a_id"] == a_id then
        -- Only set 'asteroid' if it has been identified
        if v.res ~= "asteroid" then
          STELLAR.asteroid = v.res
          STELLAR.asteroid_units = v.a_units
        end
        STELLAR.cur_a_id = a_id
        break
      end
    end
  
    if not STELLAR.probed then
      -- Not from a probe report
      if STELLAR.tethered then
        -- Current asteroid is in tow/tethered
        STELLAR.tow_id = a_id
        res_id = nil  -- Remove to prevent database entry
        -- Clear current asteroid ID since we are towing
        STELLAR.cur_a_id = ""
        if STELLAR.showMainDisplayOutput then
          -- Update entity report
          deleteLine()
          cecho("\n<goldenrod>---   ---   ---           (Asteroid #"..a_id.." in tow)")
        end
      else
        -- Asteroid you are touching is not in tow/tethered
        STELLAR.cur_a_id = a_id
        STELLAR.tow_id = nil
        res_id = nil
        if STELLAR.showMainDisplayOutput then
          cecho("<orange>  (Not Tethered)")
        end
      end
    end
  end
  
  -- Add new resources to table
  -- Only add record to table if it has an ID
  if res_id then
  
    if STELLAR.asteroid == "asteroid" then
      -- Don't assign a stale asteroid_units value
      STELLAR.asteroid_units = ""
    end
  
    if STELLAR.showMainDisplayOutput then
      cecho("<green>  (NEW)")
    end
    table.insert(stellardb,
      {
        res_id=res_id,
        a_id=a_id,
        zone=zone,
        x=x,
        y=y,
        res=res,
        a_units=STELLAR.asteroid_units,
        time=cur_time
      }
    )
  end
  
  tempTimer(0.5, function()
    disableTrigger("STELLAR Beacon Capture")
    STELLAR.saveDB()
    STELLAR.UOF()
  end)
end
