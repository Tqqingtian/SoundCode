---@class System.Diagnostics.SymbolStore.SymbolToken : System.ValueType
local m = {}

---@overload fun(obj:System.Diagnostics.SymbolStore.SymbolToken):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Diagnostics.SymbolStore.SymbolToken
---@param b System.Diagnostics.SymbolStore.SymbolToken
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Diagnostics.SymbolStore.SymbolToken
---@param b System.Diagnostics.SymbolStore.SymbolToken
---@return boolean
function m.op_Inequality(a, b) end

---@virtual
---@return number
function m:GetHashCode() end

---@return number
function m:GetToken() end

System.Diagnostics.SymbolStore.SymbolToken = m
return m
