function check()
	if d.s == dovote.nat then
		d.s = 100
		end
	if r.s == rovote.nat then
		r.s = 100
		end
	end
function calswing()
	r.s = rnvote - rovote.nat
	if r.s < 0 then
		rsn = true
		r.s = r.s / -1
	elseif r.s >= 0 then
		rsn = false
		end
	d.s = dnvote - dovote.nat 
	if d.s < 0 then
		dsn = true
		d.s = d.s / -1
	elseif r.s >= 0 then
		dsn = false
		end
	check()
	return rsn,dsn
end
function fixswing(i)
	if dfv[i] + rfv[i] > 100 then
		fix = dfv[i] + rfv[i] - 100
		if fix > 0 then
			fix = fix / 2
			if is == true then
				fix = fix + isn 
				end
			end
		dfv[i] = dfv[i] - fix
		rfv[i] = rfv[i] - fix
		end
	end
function election(i)
	if r.sn == false then
		rfv[i] = rovote[i] + r.s
	elseif r.sn == true then
		rfv[i] = rovote[i] - r.s
		end
	if d.sn == false then
		dfv[i] = dovote[i] + d.s
	elseif d.sn == true then
		dfv[i] = dovote[i] - d.s
		end
	fixswing(i)
	if rfv[i] > 100 then
		rfv[i] = 100
	elseif rfv[i] <= 0 then
		rfv[i] = 0
		end
	if dfv[i] > 100 then
		dfv[i] = 100
	elseif dfv[i] <= 0 then
		dfv[i] = 0
		end
end
function winner(i)
	es = state(i,false)
	dfv[i] = dfv[i] - es
	rfv[i] = rfv[i] + es
	ifv[i] = 100 - dfv[i] - rfv[i]
	if i == 48 and cheat == true then
		dfv[48] = dfv[48] - 10
		rfv[48] = rfv[48] + 10
		end
	if ifv[i] > dfv[i] and ifv[i] > rfv[i] then
		nresult[i] = "I" 
	elseif dfv[i] > rfv[i] then
		nresult[i] = "D"
	elseif rfv[i] > dfv[i] then
		nresult[i] = "R"
	elseif dfv[i] == rfv[i] then
		dfv[i] = dfv[i] - .01
		rfv[i] = rfv[i] + .01
		nresult[i] = "R"
		end
	end
function state(i,qu)
	need = false
	if i > 0 and i <= 7 then
		extraswing = 0
		s = "Alabama"
		su = 0
		if i == 1 then
			need = true
			end
	elseif i >= 8 and i <= 8 then
		extraswing = 8
		s = "Alaska"
		su = 7
		if i == 8 then
			need = true
			end
	elseif i >= 9 and i <= 17 then
		s = "Arizona"
		extraswing = 1
		su = 8
		if i == 9 then
			need = true
			end
	elseif i >= 18 and i <= 21 then
		s = "Arkansas"
		extraswing = 5
		su = 17
		if i == 18 then
			need = true
			end
	elseif i >= 22 and i <= 74 then
		s = "California"
		extraswing = 0
		su = 21
		if i == 22 then
			need = true
			end
	elseif i >= 75 and i <= 81 then
		s = "Colorado"
		extraswing = -1
		su = 74
		if i == 75 then
			need = true
			end
	elseif i >= 82 and i <= 86 then
		s = "Connecticut"
		extraswing = 0
		su = 81
		if i == 82 then
			need = true
			end
	elseif i >= 87 and i <= 87 then
		s = "Delaware"
		extraswing = 0
		su = 86
		if i == 87 then
			need = true
			end
	elseif i >= 88 and i <= 114 then
		s = "Florida"
		extraswing = 1
		su = 87
		if i == 88 then
			need = true
			end
	elseif i >= 115 and i <= 128 then
		s = "Georgia"
		extraswing = 5
		su = 114
		if i == 115 then
			need = true
			end
	elseif i >= 129 and i <= 130 then
		s = "Hawaii"
		extraswing = 0
		su = 128
		if i == 129 then
			need = true
			end
	elseif i >= 131 and i <= 132 then
		s = "Idaho"
		extraswing = 5
		su = 130
		if i == 131 then
			need = true
			end
	elseif i >= 133 and i <= 150 then
		s = "Illinois"
		extraswing = 3
		su = 132
		if i == 133 then
			need = true
			end
	elseif i >= 151 and i <= 159 then
		s = "Indiana"
		extraswing = 0
		su = 150
		if i == 151 then
			need = true
			end
	elseif i >= 160 and i <= 163 then
		s = "Iowa"
		extraswing = 2
		su = 159
		if i == 160 then
			need = true
			end
	elseif i >= 164 and i <= 167 then
		s = "Kansas"
		extraswing = 5
		su = 163
		if i == 164 then
			need = true
			end
	elseif i >= 168 and i <= 173 then
		s = "Kentucky"
		extraswing = 2
		su = 167
		if i == 168 then
			need = true
			end
	elseif i >= 174 and i <= 179 then
		s = "Louisiana"
		extraswing = 5
		su = 173
		if i == 174 then
			need = true
			end
	elseif i >= 180 and i <= 181 then
		s = "Maine"
		extraswing = -3
		su = 179
		if i == 180 then
			need = true
			end
	elseif i >= 182 and i <= 189 then
		s = "Maryland"
		extraswing = 0
		su = 181
		if i == 182 then
			need = true
			end
	elseif i >= 190 and i <= 198 then
		s = "Massachusetts"
		extraswing = 0
		su = 189
		if i == 190 then
			need = true
			end
	elseif i >= 199 and i <= 212 then
		s = "Michigan"
		extraswing = 1
		su = 198
		if i == 199 then
			need = true
			end
	elseif i >= 213 and i <= 220 then
		s = "Minnesota"
		extraswing = 1
		su = 212
		if i == 213 then
			need = true
			end
	elseif i >= 221 and i <= 224 then
		s = "Mississippi"
		extraswing = 5
		su = 220
		if i == 221 then
			need = true
			end
	elseif i >= 225 and i <= 232 then
		s = "Missouri"
		extraswing = 1
		su = 224
		if i == 225 then
			need = true
			end
	elseif i >= 233 and i <= 233 then
		s = "Montana"
		extraswing = 10
		su = 232
		if i == 233 then
			need = true
			end
	elseif i >= 234 and i <= 236 then
		s = "Nebraska"
		extraswing = 1
		su = 233
		if i == 234 then
			need = true
			end
	elseif i >= 237 and i <= 240 then
		s = "Nevada"
		extraswing = 2
		su = 236
		if i == 237 then
			need = true
			end
	elseif i >= 241 and i <= 242 then
		s = "New Hampshire"
		extraswing = 5
		su = 240
		if i == 241 then
			need = true
			end
	elseif i >= 243 and i <= 254 then
		s = "New Jersey"
		extraswing = -1
		su = 242
		if i == 243 then
			need = true
			end
	elseif i >= 255 and i <= 257 then
		s = "New Mexico"
		extraswing = -1
		su = 254
		if i == 255 then
			need = true
			end
	elseif i >= 258 and i <= 284 then
		s = "New York"
		extraswing = -1
		su = 257
		if i == 258 then
			need = true
			end
	elseif i >= 285 and i <= 297 then
		s = "North Carolina"
		extraswing = 1
		su = 284
		if i == 285 then
			need = true
			end
	elseif i >= 298 and i <= 298 then
		s = "North Dakota"
		extraswing = 2
		su = 297
		if i == 298 then
			need = true
			end
	elseif i >= 299 and i <= 314 then
		s = "Ohio"
		extraswing = 0
		su = 298
		if i == 299 then
			need = true
			end
	elseif i >= 315 and i <= 319 then
		s = "Oklahoma"
		extraswing = 2
		su = 314
		if i == 315 then
			need = true
			end
	elseif i >= 320 and i <= 324 then
		s = "Oregon"
		extraswing = 1
		su = 319
		if i == 320 then
			need = true
			end
	elseif i >= 325 and i <= 342 then
		s = "Pennsylvania"
		extraswing = 1
		su = 324
		if i == 325 then
			need = true
			end
	elseif i >= 343 and i <= 344 then
		s = "Rhode Island"
		extraswing = -5
		su = 342 
		if i == 343 then
			need = true
			end
	elseif i >= 345 and i <= 351 then
		s = "South Carolina"
		extraswing = 1
		su = 344
		if i == 345 then
			need = true
			end
	elseif i >= 352 and i <= 352 then
		s = "South Dakota"
		extraswing = 2
		su = 351
		if i == 352 then
			need = true
			end
	elseif i >= 353 and i <= 361 then
		s = "Tennessee"
		extraswing = 2
		su = 352
		if i == 353 then
			need = true
			end
	elseif i >= 362 and i <= 397 then
		s = "Texas"
		extraswing = 2
		su = 361
		if i == 362 then
			need = true
			end
	elseif i >= 398 and i <= 401 then
		s = "Utah"
		extraswing = 5
		su = 397
		if i == 398 then
			need = true
			end
	elseif i >= 402 and i <= 402 then
		s = "Vermont"
		extraswing = -2
		su = 401
		if i == 402 then
			need = true
			end
	elseif i >= 403 and i <= 413 then
		s = "Virginia"
		extraswing = -1
		su = 402
		if i == 403 then
			need = true
			end
	elseif i >= 414 and i <= 423 then
		s = "Washington"
		extraswing = -1
		su = 413
		if i == 414 then
			need = true
			end
	elseif i >= 424 and i <= 426 then
		s = "West Virginia"
		extraswing = 10
		su = 423
		if i == 424 then
			need = true
			end
	elseif i >= 427 and i <= 434 then
		s = "Wisconsin"
		extraswing = 0
		su = 426
		if i == 427 then
			need = true
			end
	elseif i >= 435 and i <= 435 then
		s = "Wyoming"
		extraswing = 5
		su = 434
		if i == 435 then
			need = true
			end
		end
	if RRR[s] == nil then
		RRR[s] = 0
		end
	if DDD[s] == nil then
		DDD[s] = 0
		end
	if qu == true then
		return s,su,need
	elseif qu == false then
		return extraswing
		end
end
function results(i)
	rgainn = 0
	dgainn = 0
	winner(i)
	if oresult[i] == nresult[i] then
		if nresult[i] == "R" then
			fr = "GOP Hold"
			ric = ric + 1
			rgainn = 1
			seatc[i] = "800000"
		elseif nresult[i] == "D" then
			fr = "Dem Hold"
			dic = dic + 1
			dgainn = 1
			seatc[i] = "000080"
		elseif nresult[i] == "I" then
			fr = "Indy Hold"
			iic = iic + 1
			seatc[i] = "008000"
			end
	elseif oresult[i] ~= nresult[i] then
		if nresult[i] == "R" then
			fr = "GOP Gain+"
			gain = true
			rgainn = 1
			ric  = ric + 1
			seatc[i] = "FF0000"
		elseif nresult[i] == "D" then
			fr = "Dem Gain+"
			gain = true
			dgainn = 1
			dic  = dic + 1
			seatc[i] = "0000FF"
		elseif nresult[i] == "I" then
			fr = "Indy Gain+"
			gain = true
			iic = iic + 1
			seatc[i] = "00FF00"
			end
		end
	st,subt,need = state(i,true)
	RRR[st] = RRR[st] + rgainn
	DDD[st] = DDD[st] + dgainn
	if need == true then
		print(st..": ")
		end
	ii = i - subt
	if gain or long then
		io.write("  District "..ii..": ")
		print(fr)
		end
	if gain or long and res then
		longresults(i)
		end
	fr = nil
	gain = false
	end
function longresults(i)
		print("  GOP: "..rfv[i].."%")
		print("  Dem: "..dfv[i].."%")
		if ifv[i] ~= nil and ifv[i] > 10 then
			print("  Ind: "..ifv[i].."%")
			end
end
map = require "map"
arg = {...}
if #arg < 2 then
	print(arg[1])
	error("Usage: {program name} (GOP Vote) (Dem Vote) {Other arguments}",50)
	end
rnvote = arg[1]
dnvote = arg[2]
if arg[3] == "-r" or arg[4] == "-r" or arg[5] == "-r" then
	res = true
	end
if arg[3] == "-b" or arg[4] == "-b" or arg[5] == "-b" then
	sbst = true
	end
if arg[3] == "-l" or arg[4] == "-l" or arg[5] == "-l" then
	long = true
	end
if arg[3] == "-c" or arg[4] == "-c" or arg[5] == "-c" then
	cheat = true
	end
if arg[3] == "-i" or arg[4] == "-i" or arg[5] == "-i" then
	is = true
	if type(tonumber(arg[4])) == "number" then
		isn = arg[4]
	elseif type(tonumber(arg[5])) == "number" then
		isn = arg[5]
	elseif type(tonumber(arg[6])) == "number" then
		isn = arg[6]
	else	
		error("If you're going to use the indy flag, put the indy swing!",439)
		end
	isn = isn /2 
	end
ric = 0
dic = 0
RRR ={}
DDD ={}
r = {}
rfv = {}
seatc = {}
rovote = { nat=51,68.2,67.3,66.1,100,74.4,76.2,0,51,47.4,50.04,44.3,70,69.6,64.9,21.7,75.8,41.9,63.3,51.9,79.4,53.8,61,25,47.3,100,0,27.3,49.6,67.7,47.6,56.1,32.7,16.7,11.5,23.3,30.2,49.3,48.2,32.2,0,0,57.8,72,74.8,48.1,100,48.7,40.6,0,25.4,34.4,48.3,40.3,40.8,0,0,45.8,15.7,40.9,68.5,0,43.4,65.7,29,0,65.1,40.3,44,64.1,60.2,71.2,31.2,48.4,41.2,
29,43.3,58,64.7,59.8,51.9,44.9,36.1,35.5,32.9,46.3,45.8,36.8,70.2,49.6,65,78.3,34.5,62.5,63.6,65.9,43.1,61.5,66.7,100,75.2,0,60.3,61.6,63.2,40.2,64.6,18.4,0,42,37.3,10.2,100,51.5,100,60.9,40.9,100,0,0,66,65.4,100,80.7,66.5,100,54.8,0,100,48.1,18.7,65,61.4,26.9,21.5,35.4,22,30.6,67.1,15,44.3,33.9,51.3,46.5,52.5,58.7,65.4,75,70.6,44.5,74.7,
35.8,58.9,65.8,66.9,65.2,65.9,41.8,60.3,62.2,51.1,47.4,52.8,61.6,67.5,57.2,60,66.8,73.1,69.2,35.6,67.7,78.2,60,77.5,0,78.7,73.4,64.2,62.5,30.7,57.7,70.5,35.9,40.4,28.3,35.9,48.3,27,39.1,0,0,37,0,0,41.1,0,0,45,52.1,63.6,57.9,56.5,31.2,55.9,53.5,54.6,36.1,68.7,55.9,31.3,16.3,19.7,45.7,56.1,62.2,32.9,24,56.3,45.7,47.1,67.9,0,68.9,69.9,
21.6,64.1,68.3,68.1,45,66.6,63.5,66.7,55.4,68.8,45.7,75.4,37.9,65.8,60.8,48.5,51.8,45,39.4,61.4,54,68,55.4,38.9,59.2,19,30.1,12.6,62.6,36.5,41.4,64.5,38.5,54.4,68.3,45.2,47.2,0,0,8.9,0,0,0,54.9,20.1,0,0,0,0,43.6,47.8,64.5,38.8,55.1,100,61.7,59.6,49.8,31.8,71.1,26.6,58.8,67.8,25.3,61,58.7,59.4,64.9,93.9,61,62.9,24.7,57.3,55.5,
63.2,66,35.9,67.7,66.5,58.2,100,67.2,32.3,65.2,20.6,68.1,31.5,63.3,66,63.7,100,70,78.6,70.8,60.1,34.6,70.4,19.5,37.7,39.4,17.2,12.3,60.6,74.5,63.6,56.3,62,61.9,63.5,62.6,66.3,59.3,32.9,0,100,57.7,43.2,100,40.4,37.7,100,62.4,71.2,84.8,58.9,25.6,60,66.5,82.8,72.5,62.4,58.3,35.7,71.1,70,70.8,23.3,
77.5,68,82,100,85.5,61.2,63.3,89.3,0,62.2,90.3,71.3,84.3,61.8,43.3,29.2,64.6,24.8,77.2,0,71.8,66.6,51.8,65.1,60.2,82.7,63.6,0,0,0,64.1,61.8,0,38.5,33.3,76,64.2,60.4,72.2,51.9,31,62.9,58.8,0,60.2,60.9,75.5,60.8,31.5,72.2,56.6,40.4,45,39.4,61.5,100,60.7,37,19,63.3,29.2,45.3,64,53.1,55.3,
63.3,31.5,43.5,26.9,69.5,56.8,59.3,65,68.5 }
d = {}
dfv = {}
ifv = {}
iic = 0
dovote = { nat=45.3,31.7,32.6,33.7,0,25.2,23.7,100,41,52.6,49.96,55.7,25.8,30.4,35.1,74.3,24.2,54.7,32.4,43.6,20.6,42.6,39,75,52.7,0,75.8,72.7,50.4,32.3,52.4,43.9,67.3,83.3,88.5,76.7,69.8,50.7,51.8,67.8,100,75.2,42.2,28,25.2,51.9,0,51.3,59.4,76.5,74.6,65.6,51.7,58.7,59.2,100,100,54.2,84.3,59.1,31.5,100,56.6,34.3,71,86.7,34.9,59.7,56,35.9,39.8,28.8,68.8,51.6,58.8,
65.8,56.7,35.7,29.2,40.2,43,55.1,62.3,62.3,67.1,53.7,53.3,59.3,23.4,50.4,32.3,0,65.5,37.5,32.1,34.1,54,38.5,33.3,0,24.8,100,39.7,38.4,36.8,59.8,32.7,81.6,100,58,62.7,86.2,0,48.5,0,39.1,59.1,0,100,100,34,34.6,0,19.3,33.5,0,45.2,100,0,51.9,78.8,35,38.6,73.1,78.5,64.6,78,63.2,32.9,85,55.7,66.1,48.7,53.5,41.9,41.3,34.6,25,29.4,55.5,25.3,
60.9,38.3,26.7,33.1,30.8,29.4,54.7,35.8,33.7,48.8,52.5,42.2,38.3,32.5,38.5,40,33.2,26.9,30.8,63.5,32.3,21.8,40,10.2,68.7,0,0,35.8,37.5,60.4,41.8,29.5,61.3,59.6,70.2,64.1,49.7,70,60.9,100,100,63,100,100,55,100,100,55,45.3,33.3,39,39.1,66.7,40.4,41.2,42.1,60.4,29.4,40.5,65,79.5,77.8,54.3,38.9,37.8,61.2,70.9,38.4,54.3,48.5,28.9,67.7,27.9,24.3,
72.9,32.6,27.2,26.4,51.6,29.5,28.8,24.3,40.4,31.2,49,24.6,56.8,27.9,36.1,45.8,48.2,55,57.4,37.3,44.3,31.1,43.3,59.9,38.8,77.4,68.5,85.4,37.4,61,58.6,35.5,61.5,45.6,30.1,54.8,52.8,94.9,100,88.7,92,89.3,87.4,42.1,79.9,87.3,88,97.2,100,56.4,49.7,35.5,61.2,33.8,0,38.3,40.4,50.2,68.2,28.9,73.4,41.2,32.2,74.7,39,41.3,37.1,35.1,0,39,37.1,75,42.7,38.5,
36.8,34,64.1,32.3,28.9,38.6,0,27.4,67.7,31.5,79.4,27.8,68.5,33,34,36.3,0,24.6,21.4,24.7,36.3,57.6,25.7,73,58.6,53.9,82.8,87.7,39.4,25.5,36.4,43.7,38,38.1,36.5,24.8,33.7,40.7,67.1,100,0,42.3,56.8,0,59.6,62.3,0,35.3,28.8,0,41.1,72.5,40,33.5,0,22.6,34.6,35.3,62.3,23,26.8,24.6,75,
22.5,29.6,0,0,0,36.4,34.5,0,90.8,34.1,0,26.3,12.8,36.1,54,67.5,32.4,71.8,18.4,75.7,0,31.6,47.7,32.3,36.2,0,33.7,82.1,89.5,87.9,32,35.4,86.5,59.5,62.5,22,29,33.2,22.5,45.8,64.4,34.4,41.2,100,37.5,35.9,0,37,63.1,0,40.4,56.9,55,60.6,38.5,0,39.3,63,81,36.7,70.8,54.7,36,43.9,44.7,
36.7,68.5,56.5,70.2,30.5,40.9,39.4,35,23 }
rr = "R"
dd = "D"
oresult = { 
rr,rr,rr,rr,rr,rr,dd,  --Alabama
rr,  -- Alaska
dd,rr,dd,rr,rr,rr,dd,rr,dd, --Arizona 
rr,rr,rr,rr, --Arkansas
rr,dd,dd,rr,dd,dd,dd,rr,dd,rr,dd,dd,dd,dd,dd,dd,dd,dd,dd,dd,rr,rr,rr,dd,rr,dd,dd,dd,dd,dd,dd,dd,dd,dd,dd,dd,dd,dd,rr,dd,dd,rr,dd,dd,rr,dd,dd,rr,rr,rr,dd,dd,dd, --California
dd,dd,rr,rr,rr,rr,dd, --Colorado
dd,dd,dd,dd,dd,--Connecticut
dd,  --Delaware
rr,dd,rr,rr,dd,rr,rr,rr,dd,rr,rr,rr,rr,dd,rr,rr,rr,dd,rr,dd,dd,dd,dd,dd,rr,rr,rr,  --Florida
rr,dd,rr,dd,dd,rr,rr,rr,rr,rr,rr,rr,dd,rr, --Georgia
dd,dd, --Hawaii
rr,rr, --Idaho
dd,dd,dd,dd,dd,rr,dd,dd,dd,rr,dd,rr,rr,rr,rr,rr,dd,rr, --Illinois
dd,rr,rr,rr,rr,rr,dd,rr,rr, --Indiana
rr,dd,rr,rr, --Iowa
rr,rr,rr,rr, --Kansas
rr,rr,dd,rr,rr,rr, --Kentucky
rr,dd,rr,rr,rr,rr, --Louisiana 
dd,rr, --Maine
rr,dd,dd,dd,dd,dd,dd,dd, --Maryland
dd,dd,dd,dd,dd,dd,dd,dd,dd, --Massachusetts 
rr,rr,rr,rr,dd,rr,rr,rr,dd,rr,rr,dd,dd,dd, --Michigan
dd,rr,rr,dd,dd,rr,dd,dd, --Minnesota
rr,dd,rr,rr, --Mississippi
dd,rr,rr,rr,dd,rr,rr,rr, --Missouri
rr, --Montana
rr,dd,rr, --Nebraska
dd,rr,rr,rr, --Nevada
rr,dd,  --New Hampshire
dd,rr,rr,rr,rr,dd,rr,dd,dd,dd,rr,dd, --New Jersey
dd,rr,dd, --New Mexico
rr,rr,dd,dd,dd,dd,dd,dd,dd,dd,rr,dd,dd,dd,dd,dd,dd,dd,rr,dd,rr,rr,rr,rr,dd,dd,rr, --New York
dd,rr,rr,dd,rr,rr,rr,rr,rr,rr,rr,dd,rr, --North Carolina
rr, --North Dakota
rr,rr,dd,rr,rr,rr,rr,rr,dd,rr,dd,rr,dd,rr,rr,rr, --Ohio
rr,rr,rr,rr,rr, --Oklahoma
dd,rr,dd,dd,dd, --Oregon
dd,dd,rr,rr,rr,rr,rr,rr,rr,rr,rr,rr,dd,dd,rr,rr,dd,rr, --Pennsylvania
dd,dd, --Rhode Island
rr,rr,rr,rr,rr,dd,rr, --South Carolina
rr, --South Dakota
rr,rr,rr,rr,dd,rr,rr,rr,dd, --Tennessee
rr,rr,rr,rr,rr,rr,rr,rr,dd,rr,rr,rr,rr,rr,dd,dd,rr,dd,rr,dd,rr,rr,rr,rr,rr,rr,rr,dd,dd,dd,rr,rr,dd,dd,dd,rr, --Texas
rr,rr,rr,rr, --Utah
dd, --Vermont
rr,rr,dd,rr,rr,rr,rr,dd,rr,rr,dd, --Virginia
dd,dd,rr,rr,rr,dd,dd,rr,dd,dd, --Washington
rr,rr,rr, --West Virginia
rr,dd,dd,dd,rr,rr,rr,rr, --Wisconsin
rr --Wyoming
}
nresult = {}
r.sn,d.sn = calswing() 
rgl = 0
dgl = 0
igl = 0
for abc=1,435 do
	election(abc)
	results(abc)
	end
for ab=1,435 do
	local res = oresult[ab]
	if res == "R" and nresult[ab] == "D" then
		rgl = rgl - 1
		dgl = dgl + 1
	elseif res == "D" and nresult[ab] == "R" then
		dgl = dgl - 1
		rgl = rgl + 1
	elseif res == "R" and nresult[ab] == "I" then
		igl = igl + 1
		rgl = rgl - 1
	elseif res == "D" and nresult[ab] == "I" then
		dgl = dgl - 1
		igl = igl + 1
	elseif res == "I" and nresult[ab] == "R" then
		igl = igl - 1
		rgl = rgl + 1
	elseif res == "I" and nresult[ab] == "D" then
		dgl = dgl - 1
		igl = igl + 1
		end
	end
if rgl > 0 then
	print("GOP: "..ric.." +"..rgl)
elseif rgl == 0 then
	print("GOP: "..ric.." -")
else
	print("GOP: "..ric.." "..rgl)
	end
if dgl > 0 then
	print("Dem: "..dic.." +"..dgl)
elseif dgl == 0 then
	print("Dem: "..dic.." -")
else
	print("Dem: "..dic.." "..dgl)
	end
if igl > 0 then
	print("Ind: "..iic.." +"..igl)
elseif igl == 0 then
	print("Ind: "..iic.." -")
else
	print("Ind: "..iic.." "..igl)
	end
if sbst == true then
	rstate = 0
	dstate = 0
	sstate = 0 
	io.read()
	print("State-by-state breakdown:")
	print("")
	for i=1,435 do
		a,b,c = state(i,true)
		if c == true then
			if RRR[a] > DDD[a] then
				print(a..": "..RRR[a].."-"..DDD[a].." Republican")
				rstate = rstate + 1
			elseif RRR[a] < DDD[a] then
				print(a..": "..DDD[a].."-"..RRR[a].." Democratic")
				dstate = dstate + 1
			elseif RRR[a] == DDD[a] then
				print(a..": "..RRR[a].."-"..DDD[a].." Split")
				sstate = sstate + 1
				end
			print("")
			end
		end
	print("# of states: "..rstate.."-"..dstate.."-"..sstate.." R-D-S")
	end
map.print(seatc)

	
