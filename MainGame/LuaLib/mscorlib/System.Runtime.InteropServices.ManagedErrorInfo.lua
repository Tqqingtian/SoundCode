---@class System.Runtime.InteropServices.ManagedErrorInfo : System.Object
---@field public Exception System.Exception
local m = {}

---@virtual
---@return number, System.Guid
function m:GetGUID() end

---@virtual
---@return number, System.String
function m:GetSource() end

---@virtual
---@return number, System.String
function m:GetDescription() end

---@virtual
---@return number, System.String
function m:GetHelpFile() end

---@virtual
---@return number, System.UInt32
function m:GetHelpContext() end

System.Runtime.InteropServices.ManagedErrorInfo = m
return m
