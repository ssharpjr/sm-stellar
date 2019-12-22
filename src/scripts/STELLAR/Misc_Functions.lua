-- Functions called from Aliases and other functions

function STELLAR.echo(text)
  prog = " STELLAR "
  title = "<white>[<steel_blue>"..prog.."<white>]: "
  text = STELLAR.colorInfo..text
  return cecho("\n"..title..text)
end

function STELLAR.borderText(text)
  cecho("\n"..STELLAR.colorBorder.."-- "..STELLAR.colorTitle..text.." "
    ..STELLAR.colorBorder..string.rep("-", (STELLAR.lineWidth-4)-text:len())
  )
end

function STELLAR.borderEnd()
  cecho("\n"..STELLAR.colorBorder..string.rep("-", STELLAR.lineWidth))
end

function STELLAR.clearDatabase()
  -- Clear the stellar database
  stellardb = {}
  STELLAR.saveDB()
  cecho("\n"..STELLAR.colorDebug.."STELLAR Database Cleared\n")
  -- Update Output Console
  STELLAR.UOF()
end

function STELLAR.removeFromDB(id)
  -- Removes an entry from the stellar database
  for k, v in pairs(stellardb) do
    if stellardb[k]["res_id"] == id then
      STELLAR.echo("Removed <green>"..id.."<gold> from the STELLAR database")
      stellardb[k] = nil
    end
  end
  -- Update Output Console
  STELLAR.UOF()
  -- Save DB
  STELLAR.saveDB()
end

function STELLAR.asteroidRemoveFromDB(a_id)
  -- Removes an asteroid from the stellar database
  for k, v in pairs(stellardb) do
    if stellardb[k]["a_id"] == a_id then
      STELLAR.echo("Removed Asteroid #"..a_id.." from the STELLAR database")
      stellardb[k] = nil
    end
  end
  -- Update Output Console
  STELLAR.UOF()
  -- Save DB
  STELLAR.saveDB()
end

function STELLAR.assignGasID(id)
  STELLAR.gas_id = id
  -- cecho("\n<white>[<steel_blue>Harvesting<white>]: <green>"..gas_id.."<white> cloud marked for collection \n")
  STELLAR.echo("<green>"..STELLAR.gas_id.."<gold> cloud marked for collection.\n")
end

function STELLAR.showVars()
  STELLAR.borderText("STELLAR -+- Variables")
  echo("\n\n")
  echo("asteroid = ") print(STELLAR.asteroid)
  echo("asteroid_units = ") print(STELLAR.asteroid_units)
  echo("gas = ") print(STELLAR.gas)
  echo("gas_count = ") print(STELLAR.gas_count)
  echo("gas_id = ") print(STELLAR.gas_id)
  echo("cur_a_id = ") print(STELLAR.cur_a_id)
  echo("tow_id = ") print(STELLAR.tow_id)
  echo("haul = ") print(STELLAR.haul)
  echo("probed = ") print(STELLAR.probed)
  echo("tethered = ") print(STELLAR.tethered)
  cecho("\n"..STELLAR.colorBorder..string.rep("-", STELLAR.lineWidth))
end

function STELLAR.showDB()
  STELLAR.borderText("STELLAR -+- Raw Database Output")
  echo("\n\n")
  display(stellardb)
  cecho("\n"..STELLAR.colorBorder..string.rep("-", STELLAR.lineWidth))
end

function STELLAR.resetVars()
  -- Clear all variables
  STELLAR.asteroid = nil
  STELLAR.asteroid_units = nil
  STELLAR.gas = nil
  STELLAR.gas_count = nil
  STELLAR.gas_id = nil
  STELLAR.haul = nil
  STELLAR.tow_id = nil
  STELLAR.cur_a_id = nil
  STELLAR.probed = false
  STELLAR.tethered = false
  
  -- Update Output Console
  STELLAR.UOF()
end
