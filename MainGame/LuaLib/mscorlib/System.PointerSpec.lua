---@class System.PointerSpec : System.Object
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

System.PointerSpec = m
return m
