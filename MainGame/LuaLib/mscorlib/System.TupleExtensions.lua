---@class System.TupleExtensions : System.Object
local m = {}

---@overload fun(value:any):(, any) @static
---@overload fun(value:any):(, any, any) @static
---@overload fun(value:any):(, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any) @static
---@overload fun(value:any):(, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any, any) @static
---@static
---@param value any
---@return any
function m.Deconstruct(value) end

---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@overload fun(value:any): @static
---@static
---@param value any
---@return System.ValueType
function m.ToValueTuple(value) end

---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@overload fun(value:System.ValueType): @static
---@static
---@param value System.ValueType
---@return any
function m.ToTuple(value) end

System.TupleExtensions = m
return m
