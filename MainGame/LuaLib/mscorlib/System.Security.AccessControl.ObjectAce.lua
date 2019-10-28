---@class System.Security.AccessControl.ObjectAce : System.Security.AccessControl.QualifiedAce
---@field public BinaryLength number
---@field public InheritedObjectAceType System.Guid
---@field public ObjectAceFlags System.Security.AccessControl.ObjectAceFlags
---@field public ObjectAceType System.Guid
local m = {}

---@virtual
---@param binaryForm string
---@param offset number
function m:GetBinaryForm(binaryForm, offset) end

---@static
---@param isCallback boolean
---@return number
function m.MaxOpaqueLength(isCallback) end

System.Security.AccessControl.ObjectAce = m
return m
