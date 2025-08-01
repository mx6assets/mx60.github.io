while os.execute('sleep  1') do
local ___1 = io.open('session.html','w')
local ___2 = os.date()
local ___3 =[[session-logged-time:]]
___1
:write('<a style="color:#bdbdbd; user-select:none; font-size:9px">')
___1
:write(___3,'(',___2,')' ):close()
end
