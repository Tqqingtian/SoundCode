---@class System.Runtime.Remoting.Contexts.IContextProperty : table
---@field public Name string
local m = {}

---@abstract
---@param newContext System.Runtime.Remoting.Contexts.Context
function m:Freeze(newContext) end

---@abstract
---@param newCtx System.Runtime.Remoting.Contexts.Context
---@return boolean
function m:IsNewContextOK(newCtx) end

System.Runtime.Remoting.Contexts.IContextProperty = m
return m
