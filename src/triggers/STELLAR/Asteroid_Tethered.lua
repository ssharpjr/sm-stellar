
-- Mudlet Trigger Setup (minus the quotes)
-- Data Line 1 (substring): "The ship shoots a multifield tether at an asteroid, catching it and hooking it to itself."


-- Process tethering

deleteLine()

STELLAR.tethered = true

-- Set current asteroid ID to tow_id
if STELLAR.cur_a_id then
  STELLAR.tow_id = STELLAR.cur_a_id
  STELLAR.cur_a_id = ""
  -- gas = nil
  -- gas_count = nil
end

-- Set asteroid
for k, v in pairs(stellardb) do
  if stellardb[k]["a_id"] == STELLAR.tow_id then
    STELLAR.asteroid = v.res
    STELLAR.asteroid_units = v.a_units
    break
  end
end

STELLAR.echo("Asteroid #"..STELLAR.tow_id.." tethered")

-- Remove tow_id asteroid from stellar DB
if STELLAR.tow_id then
  STELLAR.asteroidRemoveFromDB(STELLAR.tow_id)
end

-- Update (until I figure out a better way to do it)
tempTimer(0.1, [[send("ship beacon")]])
