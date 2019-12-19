-- Mudlet Trigger Setup (minus the quotes)
-- Data Line 1 (perl regex): "^The ship launches a probe towards the asteroid."


-- Immersive Aesthetics
if cur_a_id then
  deleteLine()
  STELLAR.echo("Probing Asteroid #"..cur_a_id.."...")
end
