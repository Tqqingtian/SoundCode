---@class StatefullTest : System.Object
---@field public AProp number
---@field public Item number
local m = {}

---@param value fun(arg1:number, arg2:number)
function m:add_AEvent(value) end

---@param value fun(arg1:number, arg2:number)
function m:remove_AEvent(value) end

function m:Start() end

---@param a any
function m:GenericTest(a) end

---@overload fun(a:string, b:number, c:number) @static
---@static
---@param a number
---@param b number
function m.StaticFunc(a, b) end

StatefullTest = m
return m
