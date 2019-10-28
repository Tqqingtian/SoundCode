---@class System.Security.AccessControl.CompoundAce : System.Security.AccessControl.KnownAce
---@field public BinaryLength number
---@field public CompoundAceType System.Security.AccessControl.CompoundAceType
local m = {}

---@virtual
---@param binaryForm string
---@param offset number
function m:GetBinaryForm(binaryForm, offset) end

System.Security.AccessControl.CompoundAce = m
return m
