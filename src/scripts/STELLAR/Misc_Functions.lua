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
  gas_id = id
  -- cecho("\n<white>[<steel_blue>Harvesting<white>]: <green>"..gas_id.."<white> cloud marked for collection \n")
  STELLAR.echo("<green>"..gas_id.."<gold> cloud marked for collections.\n")
end

function STELLAR.showVars()
  STELLAR.borderText("STELLAR -+- Variables")
  echo("\n\n")
  echo("asteroid = ") print(asteroid)
  echo("asteroid_units = ") print(asteroid_units)
  echo("gas = ") print(gas)
  echo("gas_count = ") print(gas_count)
  echo("gas_id = ") print(gas_id)
  echo("cur_a_id = ") print(cur_a_id)
  echo("tow_id = ") print(tow_id)
  echo("haul = ") print(haul)
  echo("probed = ") print(probed)
  echo("tethered = ") print(tethered)
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
  asteroid = nil
  asteroid_units = nil
  gas = nil
  gas_count = nil
  gas_id = nil
  haul = nil
  tow_id = nil
  cur_a_id = nil
  probed = false
  tethered = false
  
  -- Update Output Console
  STELLAR.UOF()
end
