-- Mudlet Trigger Setup (minus the quotes)
-- Data Line 1 (perl regex): "^(.+) halts gracefully to avoid collision with (\w+)"


selectString(line, 1)
fg("gold")
bg("black")
resetFormat()


-- Refresh DB when an asteroid is touched
if matches[3] == "asteroid" then
  send("ship beacon")
end
