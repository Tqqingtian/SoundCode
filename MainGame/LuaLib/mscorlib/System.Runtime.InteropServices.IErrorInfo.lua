---@class System.Runtime.InteropServices.IErrorInfo : table
local m = {}

---@abstract
---@return number, System.Guid
function m:GetGUID() end

---@abstract
---@return number, System.String
function m:GetSource() end

---@abstract
---@return number, System.String
function m:GetDescription() end

---@abstract
---@return number, System.String
function m:GetHelpFile() end

---@abstract
---@return number, System.UInt32
function m:GetHelpContext() end

System.Runtime.InteropServices.IErrorInfo = m
return m
