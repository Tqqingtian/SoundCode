---@class System.ArraySpec : System.Object
---@field public Rank number
---@field public IsBound boolean
local m = {}

---@virtual
---@param type System.Type
---@return System.Type
function m:Resolve(type) end

---@virtual
---@param sb System.Text.StringBuilder
---@return System.Text.StringBuilder
function m:Append(sb) end

---@virtual
---@return string
function m:ToString() end

System.ArraySpec = m
return m
