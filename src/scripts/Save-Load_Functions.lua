function STELLAR.saveDB()
  local separator = string.char(getMudletHomeDir():byte()) == "/" and "/" or "\\"
  local filename = getMudletHomeDir()..separator.."stellar.db"
  if stellardb then
    table.save(filename, stellardb)
  end
end

function STELLAR.loadDB()
  local separator = string.char(getMudletHomeDir():byte()) == "/" and "/" or "\\"
  local filename = getMudletHomeDir()..separator.."stellar.db"
  stellardb = {}
  table.load(filename, stellardb)
  STELLAR.echo("Database Loaded")
  STELLAR.echo("Type <white>'HELP STELLAR' <gold>to access the STELLAR help system")
end
