---@class System.Reflection.ExceptionHandlingClause : System.Object
---@field public CatchType System.Type
---@field public FilterOffset number
---@field public Flags System.Reflection.ExceptionHandlingClauseOptions
---@field public HandlerLength number
---@field public HandlerOffset number
---@field public TryLength number
---@field public TryOffset number
local m = {}

---@virtual
---@return string
function m:ToString() end

System.Reflection.ExceptionHandlingClause = m
return m
