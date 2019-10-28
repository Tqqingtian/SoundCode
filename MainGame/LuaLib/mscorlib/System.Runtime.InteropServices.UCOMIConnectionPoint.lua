---@class System.Runtime.InteropServices.UCOMIConnectionPoint : table
local m = {}

---@abstract
---@return System.Guid
function m:GetConnectionInterface() end

---@abstract
---@return System.Runtime.InteropServices.UCOMIConnectionPointContainer
function m:GetConnectionPointContainer() end

---@abstract
---@param pUnkSink any
---@return System.Int32
function m:Advise(pUnkSink) end

---@abstract
---@param dwCookie number
function m:Unadvise(dwCookie) end

---@abstract
---@return System.Runtime.InteropServices.UCOMIEnumConnections
function m:EnumConnections() end

System.Runtime.InteropServices.UCOMIConnectionPoint = m
return m
