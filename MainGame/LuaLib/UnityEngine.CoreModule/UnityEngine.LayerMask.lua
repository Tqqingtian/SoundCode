---@class UnityEngine.LayerMask : System.ValueType
---@field public value number
local m = {}

---@overload fun(intVal:number): @static
---@static
---@param mask UnityEngine.LayerMask
---@return number
function m.op_Implicit(mask) end

---@static
---@param layer number
---@return string
function m.LayerToName(layer) end

---@static
---@param layerName string
---@return number
function m.NameToLayer(layerName) end

---@overload fun(): @static
---@static
---@param ... string|string[]
---@return number
function m.GetMask(...) end

UnityEngine.LayerMask = m
return m
