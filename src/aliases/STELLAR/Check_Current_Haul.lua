-- Mudlet Alias Setup (minus the quotes)
-- Pattern: "^(hcheck|HCHECK)$"

local haul_check = haul_check or false

STELLAR.borderText("STELLAR -+- Haul Report")
echo("\n")

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
