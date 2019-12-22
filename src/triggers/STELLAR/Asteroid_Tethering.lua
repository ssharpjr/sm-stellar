
-- Mudlet Trigger Setup (minus the quotes)
-- Data Line 1 (substring): "The ship starts aiming at an asteroid, preparing to hook it up."


-- Immersive Aesthetics
if STELLAR.cur_a_id then
  deleteLine()
  STELLAR.echo("Tethering Asteroid #"..STELLAR.cur_a_id.."...")
end


