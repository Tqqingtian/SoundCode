---@class Unity.Collections.NativeSliceExtensions : System.Object
local m = {}

---@overload fun(thisArray:System.ValueType, start:number): @static
---@overload fun(thisArray:System.ValueType, start:number, length:number): @static
---@overload fun(thisSlice:System.ValueType): @static
---@overload fun(thisSlice:System.ValueType, start:number): @static
---@overload fun(thisSlice:System.ValueType, start:number, length:number): @static
---@static
---@param thisArray System.ValueType
---@return System.ValueType
function m.Slice(thisArray) end

Unity.Collections.NativeSliceExtensions = m
return m
