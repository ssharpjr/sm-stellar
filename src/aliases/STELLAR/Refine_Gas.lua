-- Mudlet Alias Setup (minus the quotes)
-- Pattern: "^(refqg|REFQG) (\d+)"


-- Queue your gas and reset variables

send("refinery "..matches[3].." queue gas")

STELLAR.gas = nil
STELLAR.gas_count = nil
-- STELLAR.haul = nil

-- Check if hauling an asteroid too
if STELLAR.tow_id then
  STELLAR.echo("You are still towing an asteroid.")
else
  STELLAR.haul = nil
end
