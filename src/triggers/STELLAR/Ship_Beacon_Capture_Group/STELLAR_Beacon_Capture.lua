-- Mudlet Trigger Setup (minus the quotes)
-- Data Line 1 (perl regex): "^(\d+)\s+(\d+)\s+(\d+)\s+(\w+)\s+a (.*) of harvestable\s(\S+)"
-- Data Line 2 (perl regex): "^(\d+)\s+(\d+)\s+(\d+)\s+(\w+)\s+a (.*)\s(\w+)\s\(\#(\d+)\)"
-- Data Line 3 (perl regex): "^(\d+)\s+(\d+)\s+(\d+)\s+(\w+)\s+a\s(\w+)\scalled\s(.*)"
-- Data Line 4 (perl regex): "^(\d+)\s+(\d+)\s+(\d+)\s+(\w+)\s+the\s(\w+)\s(.*)"
-- Data Line 5 (perl regex): "^(\d+)\s+(\d+)\s+(\d+)\s+(\w+)\s+a\s(\w+)\s(.*)"


-- Capture Example:
-- ------------------------------< Entities Nearby >------------------------------
-- X     Y     Dist.         Description                                          
-- -------------------------------------------------------------------------------
-- 156   12    13 southwest  a cloud of harvestable Helium-11                     
-- 50    47    48 north      a mineable asteroid (#6064)
-- -------------------------------------------------------------------------------

-- Extract "Iota" from "Iota (20, 40)" or "CA-3939" from "CA-3939 (20, 40)"
local zone = gmcp.Room.Info.area:match("%w+-?%w+")
local cur_time = os.time() -- UNIX UTC Time
local x = matches[2]
local y = matches[3]
local dist = matches[4]
local dir = matches[5]
local class = matches[6]:lower()
local res = matches[7]
local a_id = ""

if matches[8] then
  -- Asteroids have this ID
  a_id = matches[8]
end

-- -- BEGIN Sector Mapper
-- local entity_name = string.gsub(res, "%s+", "")  -- Trim trailing spaces
-- local entity_id = class.."_"..entity_name:lower().."_"..zone:lower().."_"..x.."_"..y
-- if class == "planet" or
   -- class == "station" or
   -- class == "sun" or
   -- class == "voidgate" or
   -- class == "asteroid" then
  -- SECMAP.processBeacon(entity_id, zone, x, y, class, res)
  -- return
-- end
-- -- END Sector Mapper

-- Create unique resource ID
res = res:lower()
local res_id = res:lower().."_"..zone:lower().."_"..x.."_"..y

-- Process Beacon Capture
STELLAR.processBeacon(zone, cur_time, x, y, dist, dir, res, a_id, res_id)
