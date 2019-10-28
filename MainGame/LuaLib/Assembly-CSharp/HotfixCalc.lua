---@class HotfixCalc : System.Object
local m = {}

---@overload fun(a:UnityEngine.Vector3, b:UnityEngine.Vector3):
---@param a number
---@param b number
---@return number
function m:Add(a, b) end

---@overload fun(a:number, c:System.String, go:UnityEngine.GameObject):(, System.Double, System.String)
---@param a number
---@param c System.String
---@return number, System.Double, System.String
function m:TestOut(a, c) end

---@return any
function m:Test1() end

---@param a any
---@param c any
---@return any, any, any
function m:Test2(a, c) end

---@static
---@param a any
---@return number
function m.Test3(a) end

---@static
---@param a any
function m.Test4(a) end

---@overload fun(a:number)
---@param a number
---@param ... any|any[]
function m:Test5(a, ...) end

HotfixCalc = m
return m
