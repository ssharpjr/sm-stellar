-- Mudlet Alias Setup (minus the quotes)
-- Pattern: "^refqa (\d+)"


-- Queue your asteroid and reset variables

send("refinery "..matches[2].." queue asteroid")

asteroid = nil
asteroid_units = nil
haul = nil

-- Check if hauling gas too
if gas_id then
  STELLAR.echo("You are still hauling gas.")
end
