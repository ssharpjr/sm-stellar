
----------------------------------------------------------------------------------------
-- S.T.E.L.L.A.R.                                                                     --
-- System for Tracking, Excavating, Locating, and Logistics of Astrological Resources --
-- A Mudlet Package for space mining and harvesting resources in Starmourn            --
--                                                                                    --
-- Game: Starmourn (http://www.starmourn.com)                                         --
-- Client: Mudlet (http://www.mudlet.org)                                             --
--                                                                                    --
-- Package Author: Daikojun (github.com/ssharpjr)                                     --
-- Source: (https://github.com/ssharpjr/sm-stellar)                                   --
----------------------------------------------------------------------------------------

-- Initialize package and database
STELLAR = STELLAR or {}
stellardb = stellardb or {}

STELLAR.version = "v0.3-beta"

-- Set Update Output Function (replace with your miniconsole/label/whatever)
function STELLAR.UOF()
  -- My DSM UI info console update function. Calling this updates my Info Console.
  if DSM then
    DSM.updateInfoLabel()
  end
end

-- Set/Reset Vars
-- STELLAR.asteroid = STELLAR.asteroid or ""
-- STELLAR.asteroid_units = STELLAR.asteroid_units or ""
-- STELLAR.gas = STELLAR.gas or ""
-- STELLAR.gas_count = STELLAR.gas_count or ""

-- STELLAR Customizations --

-- Dimensions
STELLAR.lineWidth = 79

-- Colors
STELLAR.colorDebug = "<orange_red>"
STELLAR.colorTitle = "<royal_blue>"
STELLAR.colorBorder = "<dark_violet>"
STELLAR.colorInfo = "<gold>"
STELLAR.colorWarn = "<orange>"
STELLAR.colorError = "<red>"
