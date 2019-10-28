---@class System.Security.AccessControl.SddlAccessRight : System.Object
---@field public Name string
---@field public Value number
---@field public ObjectType number
local m = {}

---@static
---@param s string
---@return System.Security.AccessControl.SddlAccessRight
function m.LookupByName(s) end

---@static
---@param mask number
---@return System.Security.AccessControl.SddlAccessRight[]
function m.Decompose(mask) end

System.Security.AccessControl.SddlAccessRight = m
return m
