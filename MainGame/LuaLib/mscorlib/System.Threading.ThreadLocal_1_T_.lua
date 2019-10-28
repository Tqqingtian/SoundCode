---@class System.Threading.ThreadLocal_1_T_ : System.Object
---@field public Value any
---@field public Values any[]
---@field public IsValueCreated boolean
local m = {}

---@virtual
function m:Dispose() end

---@virtual
---@return string
function m:ToString() end

System.Threading.ThreadLocal_1_T_ = m
return m
