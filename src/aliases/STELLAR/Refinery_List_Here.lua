-- Mudlet Alias Setup (minus the quotes)
-- Pattern: "^(refh|REFH)$"


-- Highlights the refinery that is capable of refining your current haul

STELLAR.asteroid = STELLAR.asteroid or ""
STELLAR.gas = STELLAR.gas or ""

STELLAR.asteroid = STELLAR.asteroid:lower()
STELLAR.gas = STELLAR.gas:lower()

-- Determine haul
if STELLAR.asteroid and STELLAR.tow_id then
  -- Set names to refinery format
  if STELLAR.asteroid == "isotropic duramine" then STELLAR.haul = "duramine"
  else
    STELLAR.haul = STELLAR.asteroid
  end
elseif STELLAR.gas and STELLAR.gas_count then
  -- Set names to refinery format
  if STELLAR.gas == "helium-11" then STELLAR.haul = "helium11"
  else
    STELLAR.haul = STELLAR.gas
  end
end

-- cecho("\n<red>haul = "..haul)

-- Highlight the proper refinery
if STELLAR.haul then
  STELLAR.haul = STELLAR.haul:lower()
  if HaulHighlightID then killTrigger(HaulHighlightID) end
  HaulHighlightID = tempTrigger(STELLAR.haul, function() selectString(line, 1) fg("gold") deselect() resetFormat() end)
elseif STELLAR.haul == nil or STELLAR.haul == "" then 
  killTrigger(HaulHighlightID)
end

send("refinery list here")
tempTimer(1, function() killTrigger(HaulHighlightID) end)
