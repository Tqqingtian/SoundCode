---@class System.Runtime.InteropServices.UCOMIConnectionPointContainer : table
local m = {}

---@abstract
---@return System.Runtime.InteropServices.UCOMIEnumConnectionPoints
function m:EnumConnectionPoints() end

---@abstract
---@param riid System.Guid
---@return System.Guid, System.Runtime.InteropServices.UCOMIConnectionPoint
function m:FindConnectionPoint(riid) end

System.Runtime.InteropServices.UCOMIConnectionPointContainer = m
return m
