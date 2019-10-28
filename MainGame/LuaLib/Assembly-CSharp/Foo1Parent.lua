---@class Foo1Parent : System.Object
local m = {}

---@extension
function m.PlainExtension() end

Foo1Parent = m
return m
