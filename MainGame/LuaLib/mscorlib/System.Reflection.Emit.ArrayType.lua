---@class System.Reflection.Emit.ArrayType : System.Reflection.Emit.SymbolType
local m = {}

---@virtual
---@return number
function m:GetArrayRank() end

System.Reflection.Emit.ArrayType = m
return m
