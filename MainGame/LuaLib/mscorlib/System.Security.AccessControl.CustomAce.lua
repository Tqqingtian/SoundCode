---@class System.Security.AccessControl.CustomAce : System.Security.AccessControl.GenericAce
---@field public MaxOpaqueLength number @static
---@field public BinaryLength number
---@field public OpaqueLength number
local m = {}

---@virtual
---@param binaryForm string
---@param offset number
function m:GetBinaryForm(binaryForm, offset) end

---@return string
function m:GetOpaque() end

---@param opaque string
function m:SetOpaque(opaque) end

System.Security.AccessControl.CustomAce = m
return m
