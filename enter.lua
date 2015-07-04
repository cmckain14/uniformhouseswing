-- IupGetParam Example in IupLua 
-- Shows a dialog with many possible fields. 

require( "iuplua" )
require( "iupluacontrols" )

function param_action(dialog, param_index)
  if (param_index == iup.GETPARAM_OK) then
    --print("OK")
  elseif (param_index == iup.GETPARAM_INIT) then
    --print("Map")
  elseif (param_index == iup.GETPARAM_CANCEL) then
    --print("Cancel")
  elseif (param_index == iup.GETPARAM_HELP) then
    --print("Help")
  else
    local param = iup.GetParamParam(dialog, param_index)
    --print("PARAM"..param_index.." = "..param.value)
  end
  return 1
end

-- set initial values
fh,err = io.open("org.txt")
if err then error(); return; end
one = fh:read()
two = fh:read()
preal = one
preal2 = two
preal3 = "0"
pboolean = 1
pboolean2 = 0
os.remove("map.svg")
ret, preal, preal2, pboolean, pboolean2 = iup.GetParam("US House 2016", param_action, "GOP: %s\n".."Dem: %s\n".."Map: %b\n".."Independents?: %b\n", preal, preal2, pboolean, pboolean2)
if pboolean2 == 1 then
	ret, preal3 = iup.GetParam("US House 2016", param_action, "Independents: %s\n", preal3)
	if pboolean == 1 then 
		os.execute("lua election.lua "..preal.." "..preal2.." -g -m -i "..preal3)
	elseif pboolean == 2 then
		os.execute("lua election.lua "..preal.." "..preal2.." -g -i "..preal3)
		end
else
	if pboolean == 1 then 
		os.execute("lua election.lua "..preal.." "..preal2.." -g -m")
	elseif pboolean == 2 then
		os.execute("lua election.lua "..preal.." "..preal2.." -g")
		end
	end