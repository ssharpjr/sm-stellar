-- Mudlet Trigger Setup (minus the quotes)
-- Data Line 1 (perl regex): "^You queue up the (\w+) for refining in refinery (\d+), with an estimated return of (\d+) units of (.*).$"
-- Data Line 2 (perl regex): "^You queue up the collected (\w+) for refining in refinery (\d+), with an estimated return of (\d+) units of (.*).$"


-- Reset STELLAR when your haul is delivered for refining

-- Capture Example:
-- You queue up the asteroid for refining in refinery 37, with an estimated return of 6 units of Titanium.
-- You queue up the collected gas for refining in refinery 40, with an estimated return of 15 units of Ultarine.

-- Immersive Aesthetics
deleteLine()
echo("\n\n")
STELLAR.borderText("STELLAR -+- Refining "..matches[2]:title())
echo("\n")
cecho("\n<white> Refinery: <cyan>"..matches[3])
cecho("\n<white> Material: <cyan>"..matches[5])
cecho("\n<white>    Units: <cyan>"..matches[4])
echo("\n")
STELLAR.borderEnd()
resetFormat()
echo("\n\n")

-- Try to account for double hauling (asteroid and gas)
if STELLAR.asteroid and STELLAR.gas then
  if STELLAR.asteroid and not STELLAR.gas then
    -- Only hauling an asteroid, clear gas variables
    STELLAR.gas = nil
    STELLAR.gas_count = nil
    STELLAR.gas_id = nil
  elseif STELLAR.gas and not STELLAR.asteroid then
    -- Only hauling gas, clear asteroid variables
    STELLAR.asteroid = nil
    STELLAR.asteroid_units = nil
  end
else
  -- Clear all variables
  STELLAR.resetVars()
end

-- Update Console
STELLAR.UOF()
