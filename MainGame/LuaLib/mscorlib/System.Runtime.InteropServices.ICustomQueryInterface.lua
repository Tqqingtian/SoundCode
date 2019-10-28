---@class System.Runtime.InteropServices.ICustomQueryInterface : table
local m = {}

---@abstract
---@param iid System.Guid
---@return System.Runtime.InteropServices.CustomQueryInterfaceResult, System.Guid, System.IntPtr
function m:GetInterface(iid) end

System.Runtime.InteropServices.ICustomQueryInterface = m
return m
