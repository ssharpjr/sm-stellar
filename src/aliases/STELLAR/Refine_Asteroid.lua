-- Mudlet Alias Setup (minus the quotes)
-- Pattern: "^(refqa|REFQA) (\d+)"


-- Queue your asteroid and reset variables
send("refinery "..matches[3].." queue asteroid")

STELLAR.asteroid = nil
STELLAR.asteroid_units = nil
-- STELLAR.haul = nil

-- Check if hauling gas too
if STELLAR.gas_id then
  STELLAR.echo("You are still hauling gas.")
else
  STELLAR.haul = nil
end
