---@class System.Security.AccessControl.GenericAcl : System.Object
---@field public AclRevision number @static
---@field public AclRevisionDS number @static
---@field public MaxBinaryLength number @static
---@field public BinaryLength number
---@field public Count number
---@field public IsSynchronized boolean
---@field public Item System.Security.AccessControl.GenericAce
---@field public Revision number
---@field public SyncRoot any
local m = {}

---@param array System.Security.AccessControl.GenericAce[]
---@param index number
function m:CopyTo(array, index) end

---@abstract
---@param binaryForm string
---@param offset number
function m:GetBinaryForm(binaryForm, offset) end

---@return System.Security.AccessControl.AceEnumerator
function m:GetEnumerator() end

System.Security.AccessControl.GenericAcl = m
return m
