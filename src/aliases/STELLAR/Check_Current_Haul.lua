-- Mudlet Alias Setup (minus the quotes)
-- Pattern: "^hcheck$"

local haul_check = haul_check or false

STELLAR.borderText("STELLAR -+- Haul Report")
echo("\n")

-- if gas or gas == "" then
  -- cecho("\n<dodger_blue:black>  Gas: <cyan:black>"..gas:title().." - <white:black>"..gas_count.."/200")
-- elseif asteroid or asteroid == "" then
  -- cecho("\n<dodger_blue:black>  Asteroid: <cyan:black>"..asteroid:title().."<white:black>, "..asteroid_units.." units")
-- else
  -- cecho("\n<white:black>  Nothing in tow")
-- end

if STELLAR.gas then
      if STELLAR.gas_count then
        cecho("\n<steel_blue>  Hauling: <cyan>"..STELLAR.gas:title().."<papaya_whip>, "..STELLAR.gas_count.."/200 units")
        haul_check = true
      end
else
  haul_check = false
end
    
if STELLAR.asteroid then
  if STELLAR.tethered then
    cecho("\n<steel_blue>  Towing:<papaya_whip> Asteroid #"..STELLAR.tow_id.." - <cyan>"..STELLAR.asteroid:title()
      ..STELLAR.au_display
    )
    haul_check = true
  end
else
  haul_check = false
end

if not haul_check then
  cecho("\n<papaya_whip>  Nothing in Tow")
end

echo("\n")
cecho("\n"..STELLAR.colorBorder..string.rep("-", STELLAR.lineWidth))
echo("\n\n")
