local RFLevel = 1
local ifthen = [[IF]]
local loop   = [[REPEAT]]
local writes = [[WRITE]]
local prints = [[PRINT]]
local dates  = [[DATE]]
local locals = [[LOCAL]]
local string = [[STRING]]
local rand   = [[RANDOM]]
local commas = [[,]]
local sleep  = [[SLEEP]]
local elses  = [[ELSE]]
local varis  = [[___]]
local opens  = [[CREATE]]
local state  = [[STATE]]
local reads  = [[READ]]
local closes = [[CLOSE]]

--front end
local background = [[FILL:]]
local size = [[SIZE:]]
local color = [[RGB:]]
local align = [[ALIGN:]]
local display = [[DISPLAY:]]
local displayx = [[DISPLAYX:]]
local linkframe = [[LINKFRAME:]]
local attachment = [[ATTACH:]]
local attachmentx = [[ATTACHX:]]
local bracket = [[BRACKET:]]
local bar = [[BAR:]]
--front end directory
local UIDirectory = [[index.html]]
local amounts = 0
local M_file = ""
local unnecessary_output = false
if unnecessary_output == true then 
io.write("@",os.date(),"//",os.time(),": in process")
end
local tasks = 0
local rands = false
local endmount = 0

io.output("execute.lua")
io.output()
for line in io.lines("ather.ton") do -- change name if needed

  local Translation = line:upper()
  local line = line 




  if Translation:find(loop) and Translation:find(sleep) then
    io.write("while")
    local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(commas,""):gsub(commas:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(sleep,""):gsub(sleep:lower(),"")
     FP1:match("^%s*(.-)%s*$")
     local FP2 = FP1
     io.write(" os.execute('sleep",FP2,"')")
     io.write(" do\n")
    endmount = endmount + 1
  else
if Translation:find(loop) then
  io.write("while true do\n")
  endmount = endmount + 1
end
end
end
amounts = amounts + 1
for line in io.lines("ather.ton") do -- change name if needed
  amounts = amounts + 1
  local Translation = line:upper()
  local line = line

  if Translation:find(opens) and not Translation:find(state) and not Translation:find(reads) then
       local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(commas,""):gsub(commas:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(opens,""):gsub(opens:lower(),"")
       FP1:match("^%s*(.-)%s*$")
       local FP2 = FP1
       M_file = FP2
       io.write("local ",varis,RFLevel," = ","io.open('",FP2,"','w')\n")
  end

  if Translation:find(locals) and Translation:find(reads) and not Translation:find("____") then

     local FP1 = line:gsub(loop,""):gsub(string,""):gsub(locals,""):gsub(rand,""):gsub(prints,""):gsub(writes,""):gsub(ifthen,""):gsub(line,"")
    io.write("local ",varis,RFLevel," = ")
       local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(commas,""):gsub(commas:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(line,""):gsub(loop,""):gsub(loop:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(reads,""):gsub(reads:lower(),"")
       FP1:match("^%s*(.-)%s*$")
       local FP2 = FP1
    io.write("io.open('",M_file,"','r'):read('*a')\n")
  end




    if Translation:find(sleep) and not Translation:find(loop) and Translation:find(sleep) then
       local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(commas,""):gsub(commas:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(sleep,""):gsub(sleep:lower(),"")
       FP1:match("^%s*(.-)%s*$")
       local FP2 = FP1
       io.write("\nos.execute('sleep",FP2,"')\n")
    end

    if Translation:find(ifthen) then
     local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(commas,""):gsub(commas:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(line,"")
       FP1:match("^%s*(.-)%s*$")
       local FP2 = FP1
       io.write("\nif",FP2," then\n")
    endmount = endmount + 1
    end

if Translation:find(elses) then
      io.write("\nelse\n")
end








  if not Translation:find(ifthen) then



    if Translation:find(varis) and Translation:find(state) then
           local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(closes,""):gsub(closes:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),"")
      FP1:match("^%s*(.-)%s*$")
      local removed = FP1:gsub(line,"")
      io.write(":write(",removed,")")
      if Translation:find(closes) then
      io.write(":close()\n")
      else
      io.write("\n")
    end
    end

    if Translation:find(varis) and not Translation:find(state) and not Translation:find("____") and not Translation:find(reads) and not Translation:find(prints) and not Translation:find(writes) then
           local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(commas,""):gsub(commas:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(line,"")
         FP1:match("^%s*(.-)%s*$")
      if Translation:find("1") or Translation:find("2") or Translation:find("3") or Translation:find("4") or Translation:find("5") or Translation:find("6") or Translation:find("7") or Translation:find("8") or Translation:find("9") or Translation:find("0") then
         io.write(Translation,"\n")
      else
        io.write(Translation)
    end
end
    if Translation:find(varis) and Translation:find(reads) and not Translation:find(locals) and not Translation:find("____") then
           local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(commas,""):gsub(commas:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(line,"")
      FP1:match("^%s*(.-)%s*$")
      io.write("io.open('",M_file,",r'):read()\n")
    end

  if Translation:find(state) and not Translation:find(varis) then
           local FP1 = line:gsub(closes,""):gsub(closes:lower(),""):gsub(state,""):gsub(state:lower(),"")
        FP1:match("^%s*(.-)%s*$")
        local FP2 = FP1
        local removed = FP2:gsub(line,"")
        io.write(":write('",removed,"')")
      if Translation:find(closes) then
      io.write(":close()\n")
      else
      io.write("\n")
      end
  end



  end -- 121












if Translation:find(locals) and not Translation:find(reads) then
    if Translation:find(dates) and Translation:find(locals) and not Translation:find(reads) and not Translation:find(state) then
    local FP2 = line:gsub(loop,""):gsub(writes,""):gsub(prints,""):gsub(string,""):gsub(locals,"")
    FP2 = FP2:match("^%s*(.-)%s*$")
    io.write("local ",varis,RFLevel," = os.date()\n")
    end
    if Translation:find(rand) and Translation:find(commas) and not Translation:find(dates) and not Translation:find(reads) and not Translation:find(state) then
   local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(line,"")
      io.write("local ",varis,RFLevel," =".." math.random(",FP1,")\n")
  else
    local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(commas,""):gsub(commas:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(line,"")
    FP1:match("^%s*(.-)%s*$")
    if not Translation:find("1") and not Translation:find("2") and not Translation:find("3") and not Translation:find("4") and not Translation:find("5") and not Translation:find("6") and not Translation:find("7") and not Translation:find("8") and not Translation:find("9") and not Translation:find("0") and not Translation:find(dates)
or Translation:find("#") then
    io.write("local ",varis,RFLevel," =[["..FP1.."]]\n")
else
  if Translation:find("1") or Translation:find("2") or Translation:find("3") or Translation:find("4") or Translation:find("5") or Translation:find("6") or Translation:find("7") or Translation:find("8") or Translation:find("9") or Translation:find("0") then
        if not Translation:find("#") then
  io.write("local ",varis,RFLevel," ="..FP1.."\n")
          end
          end
          end
          end
if Translation:find(string) 
      then
  io.write("\n")
   local FP1 = line:gsub(loop,""):gsub(string,""):gsub(locals,""):gsub(rand,""):gsub(prints,""):gsub(writes,"")
    FP1:match("^%s*(.-)%s*$")
    if Translation:find("1") or Translation:find("2") or Translation:find("3") or Translation:find("4") or Translation:find("5") or Translation:find("6") or Translation:find("7") or Translation:find("8") or Translation:find("9") or Translation:find("0") and not Translation:find(dates) then
    io.write(varis,RFLevel," ="..FP1.."\n")
    else
    io.write(varis,RFLevel," =[["..FP1.."]]\n")
    end
end
end

if rands == false then


--1234
if not Translation:find(reads) and not Translation:find(state) then
if Translation:find(string) and Translation:find(prints) or Translation:find(locals) and Translation:find(prints) and not Translation:find(state) and not Translation:find(reads) then
  local FP2 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(line,"")
  FP2 = FP2:match("^%s*(.-)%s*$")
  io.write("print(",varis,RFLevel,")\n")
  else
if Translation:find(string) and Translation:find(writes) or Translation:find(locals) and Translation:find(writes) and not Translation:find(state) then
  local FP2 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(line,"")
  FP2 = FP2:match("^%s*(.-)%s*$")
  io.write("io.write(",varis,RFLevel,")\n")

else

if Translation:find("+") or Translation:find("-") or Translation:find("*") or Translation:find("/") or Translation:find(varis) and not Translation:find("____") and not Translation:find(state) then

  if unnecessary_output == true then
  io.write("\n > Asking for math")
  end

  tasks = tasks + 1
  if unnecessary_output == true then
  io.write(" (",tasks,")")
  end

  if Translation:find(string) and Translation:find(prints) or Translation:find(locals) and Translation:find(prints) then
  local FP2 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(line,"")
  FP2 = FP2:match("^%s*(.-)%s*$")
  io.write("print(",varis,RFLevel,")\n")
  else
  if Translation:find(string) and Translation:find(writes) or Translation:find(string) and Translation:find(writes) then
  local FP2 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(line,"")
  FP2 = FP2:match("^%s*(.-)%s*$")
  io.write("io.write(",varis,RFLevel,")\n")
  else
  if Translation:find(prints) then
  local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(line,"")
  FP1 = FP1:match("^%s*(.-)%s*$")
  io.write("print(",FP1,")\n")
  else
  if Translation:find(writes) then
 local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(line,"")
  FP1 = FP1:match("^%s*(.-)%s*$"):gsub(writes,""):gsub(writes:lower(),"")
  io.write("io.write(",FP1,")\n")
  end
  end
  end
  end --1234


else
if Translation:find(prints) and not Translation:find(state) then

  local Anti_mixup = false

  if Translation:find(dates) then
  Anti_mixup = true
  if unnecessary_output == true then
  io.write("> Asking for date \n")
  end

  tasks = tasks + 1
  if unnecessary_output == true then
  io.write(" (",tasks,")")
  end

  local FP1 = "os.date()"
  FP1 = FP1:match("^%s*(.-)%s*$")
  io.write("print(",FP1,")\n")


else
if Anti_mixup == false then
  if unnecessary_output == true then
  tasks = tasks + 1
  io.write("(",tasks,")\n")
  end
  local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),"")
  FP1 = FP1:match("^%s*(.-)%s*$")
  io.write("print('",FP1,"')\n")
end
end
else

if Translation:find(writes) and not Translation:find(state) then

  local Anti_mixup = false

  if Translation:find(dates) then
  Anti_mixup = true
  if unnecessary_output == true then
  io.write("> Asking for date \n")
  end

  tasks = tasks + 1
  if unnecessary_output == true then
  io.write(" (",tasks,")")
  end

  local FP1 = "os.date()"
  FP1 = FP1:match("^%s*(.-)%s*$")
  io.write("io.write(",FP1,")\n")

else
if Anti_mixup == false then
  if unnecessary_output == true then
  tasks = tasks + 1
  io.write("(",tasks,")\n")
  end
  local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),"")
  FP1 = FP1:match("^%s*(.-)%s*$")
  io.write("io.write('",FP1,"')\n")

else

if Translation:find("+") or Translation:find("-") or Translation:find("*") or Translation:find("/") and not Translation:find(state) then

    if unnecessary_output == true then
    io.write(" > Asking for math\n")
    end

    tasks = tasks + 1
    if unnecessary_output == true then
    io.write("(",tasks,")\n")
    end

    if Translation:find(prints) and not Translation:find(state) then

    local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),"")
    FP1 = FP1:match("^%s*(.-)%s*$")
    io.write("print(",FP1,")\n")

    else

    if Translation:find(writes) and not Translation:find(state) then
    local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),"")
    FP1 = FP1:match("^%s*(.-)%s*$")
    io.write("io.write(",FP1,")\n")
    end
    end
end
end
end
end
end
end

end
end


end
if unnecessary_output == true then
  io.write("--",RFLevel,"\n")
end
  RFLevel = RFLevel + 1
end
end

for i = 1, endmount do
  io.write("end\n")
end


local anti_loop = false
--front end
for line in io.lines("ather.ton") do -- change name if needed
  amounts = amounts + 1
  local Translation = line:upper()
  local line = line
  if Translation:find(bracket) then
  local _ = io.open(UIDirectory,"a")
  _:write("<a style ='")
  end
















  
  if Translation:find(linkframe) and not Translation:find(attachment) then
    local _ = io.open(UIDirectory,"a")
      local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(background,""):gsub(background:lower(),""):gsub(align,""):gsub(align:lower(),""):gsub(display,""):gsub(display:lower(),""):gsub(linkframe,""):gsub(linkframe:lower(),""):gsub("middle",""):gsub("left",""):gsub("right",""):gsub("top",""):gsub("bottom","")
    _:write("\n<iframe ")
    _:write("src='",FP1,"' ")
    if Translation:find(align) then
      FP1 = FP1:match("^%s*(.-)%s*$")
      if line:find("middle") then
        _:write("align='middle' ")
      else
      if line:find("left") then
        _:write("align='left' ")
      else
      if line:find("right") then
        _:write("align='right' ")
      else
      if line:find("top") then
        _:write("align='top' ")
      else
      if line:find("bottom") then
        _:write("align='bottom' ")
      else
      end
      end
      end
      end

      end
      end
    _:write("style ='display:block; margin:0 auto;' frameborder='0'></iframe>")
  end










  
  if Translation:find(size) then
    local _ = io.open(UIDirectory,"a")
    local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(background,""):gsub(background:lower(),""):gsub(align,""):gsub(align:lower(),""):gsub(display,""):gsub(display:lower(),""):gsub(linkframe,""):gsub(linkframe:lower(),""):gsub("middle",""):gsub("left",""):gsub("right",""):gsub("top",""):gsub("bottom",""):gsub(attachment,""):gsub(attachment:lower(),""):gsub(size,""):gsub(size:lower(),"")
    _:write("<a style='")
  if Translation:find(size) and not Translation:find([["]]) then
      _:write("transform: scale(",FP1,"); display: inline-block;")
  end
  _:write("'>")
  end
  if Translation:find(attachment) then
    local _ = io.open(UIDirectory,"a")
      local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(background,""):gsub(background:lower(),""):gsub(align,""):gsub(align:lower(),""):gsub(display,""):gsub(display:lower(),""):gsub(linkframe,""):gsub(linkframe:lower(),""):gsub("middle",""):gsub("left",""):gsub("right",""):gsub("top",""):gsub("bottom",""):gsub(attachment,""):gsub(attachment:lower(),"")
    _:write("<img src='",FP1,"' ")
    if Translation:find(align) then
      if line:find("middle") then
       _:write("align='middle'")
    else
      if line:find("left") then
       _:write("align='left'")
    else
      if line:find("right") then
       _:write("align='right'")
    else
      if line:find("bottom") then
       _:write("align='bottom'")
    else
      if line:find("top") then
       _:write("align='top'")
    end
    end
    end
    end
    end
  end
    _:write("style ='display:block; margin:0 auto; width:70px; height:70px;'>")
  end
  if Translation:find(attachmentx) then
    local _ = io.open(UIDirectory,"a")
      local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(background,""):gsub(background:lower(),""):gsub(align,""):gsub(align:lower(),""):gsub(display,""):gsub(display:lower(),""):gsub(linkframe,""):gsub(linkframe:lower(),""):gsub("middle",""):gsub("left",""):gsub("right",""):gsub("top",""):gsub("bottom",""):gsub(attachmentx,""):gsub(attachmentx:lower(),"")
    _:write("<img src='",FP1,"' ")
    if Translation:find(align) then
      if line:find("middle") then
       _:write("align='middle'")
    else
      if line:find("left") then
       _:write("align='left'")
    else
      if line:find("right") then
       _:write("align='right'")
    else
      if line:find("bottom") then
       _:write("align='bottom'")
    else
      if line:find("top") then
       _:write("align='top'")
    end
    end
    end
    end
    end
  end
    _:write("style ='display:block; margin:0 auto; width:240px; height:240px;'>")
  end
if Translation:find(background) then
      local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(display,""):gsub(display:lower(),""):gsub(color,""):gsub(color:lower(),""):gsub(align,""):gsub(align:lower(),""):gsub(linkframe,""):gsub(linkframe:lower(),""):gsub(background,""):gsub(background:lower(),"")
      FP1 = FP1:match("^%s*(.-)%s*$")
      local _ = io.open(UIDirectory,"a")
      _:write("<body style='background-color:",FP1,";'></body>")
  end
    if Translation:find(display) then
        local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(background,""):gsub(background:lower(),""):gsub(align,""):gsub(align:lower(),""):gsub(linkframe,""):gsub(linkframe:lower(),""):gsub(display,""):gsub(display:lower(),"")
        FP1 = FP1:match("^%s*(.-)%s*$")
        local _ = io.open(UIDirectory,"a")
        _:write("\n<h2 style='user-select:none; font-size:15px; font-style:serif;'>",FP1,"</h2>")
  end

    if Translation:find(displayx) then
        local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(background,""):gsub(background:lower(),""):gsub(align,""):gsub(align:lower(),""):gsub(linkframe,""):gsub(linkframe:lower(),""):gsub(displayx,""):gsub(displayx:lower(),"")
        FP1 = FP1:match("^%s*(.-)%s*$")
        local _ = io.open(UIDirectory,"a")
        _:write("\n<h2 style='user-select:none; font-size:24px; font-style:serif;'>",FP1,"</h2>")
  end



  ---------------------------------
if Translation:find(align) or Translation:find(color) and not Translation:find(linkframe) and not Translation:find(linkframe) and not Translation:find(attachment) and not Translation:find(background) then
    anti_loop = true

      local FP1 = line:gsub(ifthen,""):gsub(ifthen:lower(),""):gsub(loop,""):gsub(loop:lower(),""):gsub(writes,""):gsub(writes:lower(),""):gsub(prints,""):gsub(prints:lower(),""):gsub(dates,""):gsub(dates:lower(),""):gsub(locals,""):gsub(locals:lower(),""):gsub(string,""):gsub(string:lower(),""):gsub(rand,""):gsub(rand:lower(),""):gsub(sleep,""):gsub(sleep:lower(),""):gsub(elses,""):gsub(elses:lower(),""):gsub(opens,""):gsub(opens:lower(),""):gsub(reads,""):gsub(reads:lower(),""):gsub(state,""):gsub(state:lower(),""):gsub(background,""):gsub(background:lower(),""):gsub(display,""):gsub(display:lower(),""):gsub(color,""):gsub(color:lower(),""):gsub(linkframe,""):gsub(linkframe:lower(),""):gsub(align,""):gsub(align:lower(),""):gsub("center",""):gsub("left",""):gsub("right",""):gsub("top",""):gsub("bottom",""):gsub(attachment,""):gsub(attachment:lower(),"")
      FP1 = FP1:match("^%s*(.-)%s*$")
    local _ = io.open(UIDirectory,"a")
    if Translation:find(color) and not Translation:find(linkframe) then
     _:write("color:",FP1,"; user-select:none;")
    else

      if Translation:find(align) and line:find("center") and not Translation:find(linkframe) and not Translation:find(color) then

       _:write("text-align:center;")
        _:write("'>")
      else
        if Translation:find(align) and line:find("left") and not Translation:find(linkframe) and not Translation:find(color) then

         _:write("text-align:left;")
          _:write("'>")
        else
        if Translation:find(align) and line:find("right") and not Translation:find(linkframe) and not Translation:find(color) then

         _:write("text-align:right;")
            _:write("'>")
end
        end
      end
  if Translation:find(color) and not Translation:find(linkframe) and not Translation:find(align) then

      _:write("'>")
    end
end
---------------------------------------------------



















    
end
end ----
io.open(UIDirectory,"w"):write(""):close()


os.execute("lua execute.lua")