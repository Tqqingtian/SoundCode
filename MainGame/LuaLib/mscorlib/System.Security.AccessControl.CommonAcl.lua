---@class System.Security.AccessControl.CommonAcl : System.Security.AccessControl.GenericAcl
---@field public BinaryLength number
---@field public Count number
---@field public IsCanonical boolean
---@field public IsContainer boolean
---@field public IsDS boolean
---@field public Revision number
---@field public Item System.Security.AccessControl.GenericAce
local m = {}

---@virtual
---@param binaryForm string
---@param offset number
function m:GetBinaryForm(binaryForm, offset) end

---@param sid System.Security.Principal.SecurityIdentifier
function m:Purge(sid) end

function m:RemoveInheritedAces() end

System.Security.AccessControl.CommonAcl = m
return m
