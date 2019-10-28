---@class System.Security.AccessControl.CommonAce : System.Security.AccessControl.QualifiedAce
---@field public BinaryLength number
local m = {}

---@virtual
---@param binaryForm string
---@param offset number
function m:GetBinaryForm(binaryForm, offset) end

---@static
---@param isCallback boolean
---@return number
function m.MaxOpaqueLength(isCallback) end

System.Security.AccessControl.CommonAce = m
return m
