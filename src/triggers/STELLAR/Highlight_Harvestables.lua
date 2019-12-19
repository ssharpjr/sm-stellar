-- Mudlet Trigger Setup (minus the quotes)
-- Data Line 1 (substring): "a cloud of harvestable"
-- Data Line 1 (substring): "a mineable asteroid"


-- Highlight Harvestable entities in BEACON report
selectString(line, 1)
fg("gold")
bg("black")
resetFormat()
