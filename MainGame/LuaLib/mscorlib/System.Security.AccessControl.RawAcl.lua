---@class System.Security.AccessControl.RawAcl : System.Security.AccessControl.GenericAcl
---@field public BinaryLength number
---@field public Count number
---@field public Item System.Security.AccessControl.GenericAce
---@field public Revision number
local m = {}

---@virtual
---@param binaryForm string
---@param offset number
function m:GetBinaryForm(binaryForm, offset) end

---@param index number
---@param ace System.Security.AccessControl.GenericAce
function m:InsertAce(index, ace) end

---@param index number
function m:RemoveAce(index) end

System.Security.AccessControl.RawAcl = m
return m
