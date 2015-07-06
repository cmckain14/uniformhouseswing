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
function stateby(bas,adv,per)
	if bas == 1 then
		if adv == 1 then
			if per == 1 then
				sresult = " -b -a -p "
			elseif per == 0 then
				sresult = " -b -a "
				end
		elseif adv == 0 then
			if per == 1 then
				sresult = " -b -p "
			elseif per == 0 then
				sresult = " -b "
				end
			end
	elseif bas == 0 then
		sresult = " "
		end
	return sresult
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
pboolean3 = 1
pboolean4 = 0
pboolean5 = 0
os.remove("map.svg")
ret, preal, preal2, pboolean3, pboolean4, pboolean5, pboolean, pboolean2 = iup.GetParam("US House 2016", param_action, "GOP: %s\n".."Dem: %s\n".."State-by-state breakdown %t\n".."Basic? %b\n".."Advanced? %b\n".."Percentages? %b\n".."Other %t\n".."Map? %b\n".."Independents? %b\n", preal, preal2, pboolean3, pboolean4, pboolean5,pboolean, pboolean2)
addi = stateby(pboolean3, pboolean4, pboolean5)
if pboolean2 == 1 then
	ret, preal3 = iup.GetParam("US House 2016", param_action, "Independents: %s\n", preal3)
	if pboolean == 1 then 
		os.execute("lua election.lua "..preal.." "..preal2.." -g -m -i"..addi..preal3)
	elseif pboolean == 0 then
		os.execute("lua election.lua "..preal.." "..preal2.." -g -i"..addi..preal3)
		end
else
	if pboolean == 1 then 
		os.execute("lua election.lua "..preal.." "..preal2.." -g -m"..addi)
	elseif pboolean == 0 then
		os.execute("lua election.lua "..preal.." "..preal2.." -g"..addi)
		end
	end