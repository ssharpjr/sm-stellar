-- Mudlet Alias Setup (minus the quotes)
-- Pattern: "^refh$"


-- Highlights the refinery that is capable of refining your current haul

asteroid = asteroid or ""
gas = gas or ""

asteroid = asteroid:lower()
gas = gas:lower()

-- Determine haul
if asteroid and tow_id then
  -- Set names to refinery format
  if asteroid == "isotropic duramine" then haul = "duramine"
  else
    haul = asteroid
  end
elseif gas and gas_count then
  -- Set names to refinery format
  if gas == "helium-11" then haul = "helium11"
  else
    haul = gas
  end
end

-- cecho("\n<red>haul = "..haul)

-- Highlight the proper refinery
if haul then
  haul = haul:lower()
  if HaulHighlightID then killTrigger(HaulHighlightID) end
  HaulHighlightID = tempTrigger(haul, function() selectString(line, 1) fg("gold") deselect() resetFormat() end)
elseif haul == nil or haul == "" then 
  killTrigger(HaulHighlightID)
end

send("refinery list here")
tempTimer(1, function() killTrigger(HaulHighlightID) end)
