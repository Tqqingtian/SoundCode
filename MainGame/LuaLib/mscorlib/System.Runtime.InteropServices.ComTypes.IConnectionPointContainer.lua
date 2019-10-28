---@class System.Runtime.InteropServices.ComTypes.IConnectionPointContainer : table
local m = {}

---@abstract
---@return System.Runtime.InteropServices.ComTypes.IEnumConnectionPoints
function m:EnumConnectionPoints() end

---@abstract
---@param riid System.Guid
---@return System.Guid, System.Runtime.InteropServices.ComTypes.IConnectionPoint
function m:FindConnectionPoint(riid) end

System.Runtime.InteropServices.ComTypes.IConnectionPointContainer = m
return m
