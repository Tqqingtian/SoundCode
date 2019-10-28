---@class UnityEngine.NoAllocHelpers : System.Object
local m = {}

---@static
---@param list any[]
---@param size number
function m.ResizeList(list, size) end

---@static
---@param list any[]
---@param count number
function m.EnsureListElemCount(list, count) end

---@overload fun(values:any[]): @static
---@static
---@param values System.Array
---@return number
function m.SafeLength(values) end

---@static
---@param list any[]
---@return any[]
function m.ExtractArrayFromListT(list) end

---@static
---@param list any
---@return System.Array
function m.ExtractArrayFromList(list) end

UnityEngine.NoAllocHelpers = m
return m
