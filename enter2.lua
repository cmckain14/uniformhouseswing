require( "iuplua" )
require( "iupluacontrols" )

file = io.open("new.txt", "r")
line1 = file:read()
line2 = file:read()
iup.Message("Results",line1.."\n"..line2)
file:close()
os.remove("new.txt")