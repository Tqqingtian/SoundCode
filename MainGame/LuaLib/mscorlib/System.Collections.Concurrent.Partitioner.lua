---@class System.Collections.Concurrent.Partitioner : System.Object
local m = {}

---@overload fun(array:any[], loadBalance:boolean): @static
---@overload fun(source:any): @static
---@overload fun(source:any, partitionerOptions:System.Collections.Concurrent.EnumerablePartitionerOptions): @static
---@overload fun(fromInclusive:number, toExclusive:number): @static
---@overload fun(fromInclusive:number, toExclusive:number, rangeSize:number): @static
---@overload fun(fromInclusive:number, toExclusive:number): @static
---@overload fun(fromInclusive:number, toExclusive:number, rangeSize:number): @static
---@static
---@param list any[]
---@param loadBalance boolean
---@return any
function m.Create(list, loadBalance) end

System.Collections.Concurrent.Partitioner = m
return m
