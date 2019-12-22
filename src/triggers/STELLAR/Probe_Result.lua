
-- Mudlet Trigger Setup (minus the quotes)
-- Data Line 1 (perl regex): "^The probe reports a source of (.*), good for (\d+) refined units of the material\.$"


-- Process probe results

-- Capture Example:
-- The probe reports a source of Magnaril, good for 23 refined units of the material.

STELLAR.asteroid = matches[2]:lower()
STELLAR.asteroid_units = matches[3]
STELLAR.tethered = false
STELLAR.probed = true

-- Set asteroid short names
if STELLAR.asteroid == "isotropic duramine" then STELLAR.asteroid = "duramine" end

-- Optional Probe Report
deleteLine()
echo("\n\n")
STELLAR.borderText("STELLAR -+- Probe Report")
echo("\n")
cecho("\n<royal_blue>Probe Result: <white>"..STELLAR.asteroid_units.." - <cyan:black>"..STELLAR.asteroid:title())
echo("\n")
STELLAR.borderEnd()
echo("\n\n")

-- Update DB (until I figure out a better way to do it)
tempTimer(0.1, [[send("ship beacon")]])
