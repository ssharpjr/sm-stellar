
-- Mudlet Trigger Setup (minus the quotes)
-- Data Line 1 (perl regex): "^The probe reports a source of (.*), good for (\d+) refined units of the material\.$"


-- Process probe results

-- Capture Example:
-- The probe reports a source of Magnaril, good for 23 refined units of the material.

asteroid = matches[2]
asteroid = asteroid:lower()
asteroid_units = matches[3]
tethered = false
probed = true

-- Set asteroid short names
if asteroid == "isotropic duramine" then asteroid = "duramine" end

-- Optional Probe Report
deleteLine()
echo("\n\n")
STELLAR.borderText("STELLAR -+- Probe Report")
echo("\n")
cecho("\n<royal_blue>Probe Result: <white>"..asteroid_units.." - <cyan:black>"..asteroid:title())
echo("\n")
STELLAR.borderEnd()
echo("\n\n")

-- Update DB (until I figure out a better way to do it)
tempTimer(0.1, [[send("ship beacon")]])
