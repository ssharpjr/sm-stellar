-- Mudlet Trigger Setup (minus the quotes)
-- Data Line 1 (perl regex): "^The ship launches a probe towards the asteroid."


-- Immersive Aesthetics
if STELLAR.cur_a_id then
  deleteLine()
  STELLAR.echo("Probing Asteroid #"..STELLAR.cur_a_id.."...")
end
