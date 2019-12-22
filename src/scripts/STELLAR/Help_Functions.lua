-- Help Functions

function STELLAR.helpSinglePage()
  STELLAR.borderText("STELLAR -+- Help System - Single Page Help File")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>Welcome to <cyan>S<white>.<cyan>T<white>.<cyan>E<white>.<cyan>L<white>"
                                        ..".<cyan>L<white>.<cyan>A<white>.<cyan>R<white>.")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>The")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<cyan>S<gold>ystem for")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<cyan>T<gold>racking, ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<cyan>E<gold>xcavating, ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<cyan>L<gold>ocating, and ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<cyan>L<gold>ogistics of ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<cyan>A<gold>strological ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<cyan>R<gold>esources")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>Release Version: <white>"..STELLAR.version)
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<cyan>STELLAR <gold>Keeps a record of all mineable asteroids and harvestable gases that")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>you come across during your space traveling adventures.")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>Basic Functionality")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>STELLAR uses the output of the <white>'SHIP BEACON' <gold>command to populate a database")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>of Asteroids and Gases.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>Most of STELLAR's functionality is dependent on the <white>'SHIP BEACON' <gold>command.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>STELLAR assigns a unique ID and timestamp to each entity it finds.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>The timestamp allows you to know how long ago you scanned that entity.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>Every time you scan the same entity, the timestamp updates,")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>keeping the record fresh. This way you will know if an entity is still")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>present if you fly within 50 spaces and the timestamp does not update.")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>Harvesting Asteroids")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>When you scan and find an asteroid that is not in the STELLAR database, ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>   you will see a <green>(NEW)<gold> tag beside it in the Beacon Entity Report and")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>   it gets added to the database.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>When you <white>'SHIP PROBE ASTEROID'<gold> it, the results update the database ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>   and the Beacon Entity Report.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>If the asteroid has not been probed, you will see a <orchid>(Not Identified)<gold> tag.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>If you are touching a non-tethered asteroid, you will see a <orange>(Not Tethered)<gold> tag.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>When you tether an asteroid, it is removed from the STELLAR database and ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>   marked as tethered in the Beacon Entity Report with <goldenrod>'in tow'<gold>.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>When you queue the asteroid at a refinery, it is removed from the STELLAR")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>   system completely.")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>Harvesting Gas Clouds")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>As with asteroids, new gas clouds are tagged with <green>(NEW)<gold> in the Beacon")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>   Entity Report.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>The gas collection tracking function is manual using the <white>'sreport'<gold> command.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>Each gas cloud record in the STELLAR report is accompanied by a <cyan>'C'<gold>.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>You must click this <cyan>'C'<gold> to Mark the cloud for Collection.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>   This will automatically remove the gas record once the cloud is depleted.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>This is optional as you can always click the <red>'X'<gold> at the beginning of any")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>   line on the report to remove that record.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>When you queue the gas at a refinery, it is removed from the STELLAR")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>   system completely.")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>STELLAR Report Features")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>The STELLAR Report is accessed directly with the <white>'sreport'<gold> command.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<gold>   It can also be displayed creatively in a MiniConsole.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <gold>Here is a breakdown of the report.")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."      <goldenrod> Resource U  Zone    Location   Age")
  cecho("\n"..STELLAR.colorBorder.."-- ".."     <red>X<gray> Asteroid <white>20 <gold>Iota    (125, 125) <white>10m")
  cecho("\n"..STELLAR.colorBorder.."-- ".."     <red>X<cyan> Titanium <white>20 <gold>Aleph   (100, 150) <white>10m")
  cecho("\n"..STELLAR.colorBorder.."-- ".."     <red>X<green> Iriil    <cyan>C  <gold>CA-3939 (10, 20)   <white>10m")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <red>X<white> = <gold>Click to delete the record from the database.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <cyan>C<white> = <gold>Click to mark a gas for collection.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <white>U = <gold>Mineable units (asteroids).")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <goldenrod>Location <gold>can be clicked to set your Auto Pilot (<white>SHIP TRAVEL TO<gold>).")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <white>Age <gold>is the number of minutes/hours an entity has been in the database.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."   <gold>This changes the color the longer it's in the database.")
  cecho("\n"..STELLAR.colorBorder.."-- ".."")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>Reporting Commands")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <cyan>sreport <white>- <gold>Shows the tracking report (usually sent to another console)")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <cyan>hcheck  <white>- <gold>Shows your current haul")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>Refining Commands")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <cyan>refh    <white>- <gold>Sends <white>'REFINERY LIST HERE' <gold>highlighting valid refineries")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <cyan>refqa # <white>- <gold>Sends <white>'REFINERY # QUEUE ASTEROID'")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <cyan>refqg # <white>- <gold>Sends <white>'REFINERY # QUEUE GAS'")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>Other Commands")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <cyan>help stellar <white>- <gold>Show STELLAR's Help System (this file)")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <cyan>svars        <white>- <gold>Show STELLAR's variables")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <cyan>sshowdb      <white>- <gold>Show STELLAR's database (table dump)")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <cyan>svarsreset   <white>- <gold>Resets STELLAR by clearing its variables")
  cecho("\n"..STELLAR.colorBorder.."-- ".."<white>+ <cyan>scleardb     <white>- <gold>Deletes the STELLAR database")
  cecho("\n"..STELLAR.colorBorder.."-- ")
  cecho("\n"..STELLAR.colorBorder..string.rep("-", STELLAR.lineWidth))
end
