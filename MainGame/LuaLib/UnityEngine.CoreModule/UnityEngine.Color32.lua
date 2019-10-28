---@class UnityEngine.Color32 : System.ValueType
---@field public r number
---@field public g number
---@field public b number
---@field public a number
local m = {}

---@overload fun(c:UnityEngine.Color32): @static
---@static
---@param c UnityEngine.Color
---@return UnityEngine.Color32
function m.op_Implicit(c) end

---@static
---@param a UnityEngine.Color32
---@param b UnityEngine.Color32
---@param t number
---@return UnityEngine.Color32
function m.Lerp(a, b, t) end

---@static
---@param a UnityEngine.Color32
---@param b UnityEngine.Color32
---@param t number
---@return UnityEngine.Color32
function m.LerpUnclamped(a, b, t) end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

UnityEngine.Color32 = m
return m
