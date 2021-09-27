-- local mt = {}
-- mt.__index = function(table,key)
-- 	print("元表中的index")
-- 	print(table)
-- 	print(key)
-- end
-- local t = {}
-- setmetatable(t,mt)
-- print(t,mt)
-- print(t.name)

-- local k = {name = "Y",age = 23}
-- local mt = {
-- 	__index = k--index对应为表
-- }

-- local t = {sex = "boy"}
-- setmetatable(t,mt)
-- print(t.sex)
-- print(t.name)
-- print(t.enjoy)

local mt = {
	__newindex = function(table,key,value)
		print(table)
		--table[key] = value
		print(key)
		print(value)
		rawset(table, key, value)
	end
}
local t = {}
local name = "11"
setmetatable(t,mt)
print(t.name)
--t.name = "YY"
rawset(t, "name", "YY")
print(t.name)