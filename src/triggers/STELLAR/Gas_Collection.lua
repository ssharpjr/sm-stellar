-- Mudlet Trigger Setup (minus the quotes)
-- Data Line 1 (perl regex): "^The ship collects the surrounding (.*) into its scoops, bringing the collected total to (\d+)\.$"


-- Process gas collection

-- Capture Example:
-- The ship collects the surrounding Tritium into its scoops, bringing the collected total to 44.

-- STELLAR.asteroid = nil
-- STELLAR.asteroid_units = nil
-- STELLAR.cur_a_id = nil

STELLAR.gas = matches[2]:lower()
STELLAR.gas_count = matches[3]

-- Set gas color
local gas_color = ""
if STELLAR.gas == "helium-11" then gas_color = "helium11" end
local hcolor = STELLAR.harvest_colors[gas_color] or "white"
local hcolor = "<"..hcolor..">"

selectString(line, 1)
deleteLine()
STELLAR.echo("Harvesting "..hcolor..matches[2].."<white> - "..matches[3].."/200")

-- Update Console
STELLAR.UOF()
