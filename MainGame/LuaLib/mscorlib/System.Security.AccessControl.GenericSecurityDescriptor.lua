---@class System.Security.AccessControl.GenericSecurityDescriptor : System.Object
---@field public Revision number @static
---@field public BinaryLength number
---@field public ControlFlags System.Security.AccessControl.ControlFlags
---@field public Group System.Security.Principal.SecurityIdentifier
---@field public Owner System.Security.Principal.SecurityIdentifier
local m = {}

---@param binaryForm string
---@param offset number
function m:GetBinaryForm(binaryForm, offset) end

---@param includeSections System.Security.AccessControl.AccessControlSections
---@return string
function m:GetSddlForm(includeSections) end

---@static
---@return boolean
function m.IsSddlConversionSupported() end

System.Security.AccessControl.GenericSecurityDescriptor = m
return m
