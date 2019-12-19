-- Mudlet Alias Setup (minus the quotes)
-- Pattern: "^refqg (\d+)"


-- Queue your gas and reset variables

send("refinery "..matches[2].." queue gas")

gas = nil
gas_count = nil
haul = nil

-- Check if hauling an asteroid too
if tow_id then
  STELLAR.echo("You are still towing an asteroid.")
end
