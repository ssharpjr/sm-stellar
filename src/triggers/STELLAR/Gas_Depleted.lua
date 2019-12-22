-- Mudlet Trigger Setup (minus the quotes)
-- Data Line 1 (perl regex): "^The gas cloud is entirely depleted."


deleteLine()

STELLAR.echo(line)

-- Remove gas_id from STELLAR database
if STELLAR.gas_id then
  STELLAR.removeFromDB(STELLAR.gas_id)
end
