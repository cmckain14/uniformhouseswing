require( "iuplua" )
require( "iupluacontrols" )

file = io.open("new.txt", "r")
line1 = file:read()
line2 = file:read()
line3 = file:read()
if line3 == nil or line3 == "" then
	iup.Message("Results",line1.."\n"..line2)
else 
	iup.Message("Results",line1.."\n"..line2.."\n"..line3)
	end
file:close()
os.remove("new.txt")