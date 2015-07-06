function file_check(file_name)
	local file_found=io.open(file_name, "r")      
	if file_found==nil then
		file_found = false
	else
		file_found = true
		end
	return file_found
end
require( "iuplua" )
require( "iupluacontrols" )

file = io.open("new.txt", "r")
line1 = file:read()
line2 = file:read()
line3 = file:read()
file2 = io.open("state.txt", "r")
local ctr = 0
for _ in io.lines'state.txt' do
	ctr = ctr + 1
	end
if ctr <= 1 then
	sstring = ""
elseif ctr > 1 then
	str = {}
	for abc=1,ctr do
		str[abc] = file2:read()
		end
	sstring = str[1].."\n"
	for abc=2,ctr do
		sstring = string.format("%s %s", sstring, str[abc] .. "\n")
		end
	end
file:close()
os.remove("new.txt")
--os.remove("state.txt")
if sstring == "" then
	nnn = "\n"
else
	nnn = "\n\n"
	end
if line3 == nil or line3 == "" then
	iup.Message("Results",line1.."\n"..line2..nnn..sstring)
else 
	iup.Message("Results",line1.."\n"..line2.."\n"..line3..nnn..sstring)
	end
if file_check("map.svg") == true then
	os.execute("start map.svg")
	end