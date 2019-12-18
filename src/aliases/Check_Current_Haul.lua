-- Mudlet Alias Setup (minus the quotes)
-- Pattern: "^hcheck$"


STELLAR.borderText("STELLAR -+- Haul Report")
echo("\n")

if gas or gas == "" then
  cecho("\n<dodger_blue:black>  Gas: <cyan:black>"..gas:title().." - <white:black>"..gas_count.."/200")
elseif asteroid or asteroid == "" then
  cecho("\n<dodger_blue:black>  Asteroid: <cyan:black>"..asteroid:title().."<white:black>, "..asteroid_units.." units")
else
  cecho("\n<white:black>  Nothing in tow")
end

echo("\n")
cecho("\n"..STELLAR.colorBorder..string.rep("-", STELLAR.lineWidth))
echo("\n\n")
