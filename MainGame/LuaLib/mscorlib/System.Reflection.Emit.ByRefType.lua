---@class System.Reflection.Emit.ByRefType : System.Reflection.Emit.SymbolType
local m = {}

---@overload fun(rank:number): @virtual
---@virtual
---@return System.Type
function m:MakeArrayType() end

---@virtual
---@return System.Type
function m:MakeByRefType() end

---@virtual
---@return System.Type
function m:MakePointerType() end

System.Reflection.Emit.ByRefType = m
return m
