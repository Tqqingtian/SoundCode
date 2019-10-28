---@class System.Security.AccessControl.GenericAce : System.Object
---@field public AceFlags System.Security.AccessControl.AceFlags
---@field public AceType System.Security.AccessControl.AceType
---@field public AuditFlags System.Security.AccessControl.AuditFlags
---@field public BinaryLength number
---@field public InheritanceFlags System.Security.AccessControl.InheritanceFlags
---@field public IsInherited boolean
---@field public PropagationFlags System.Security.AccessControl.PropagationFlags
local m = {}

---@return System.Security.AccessControl.GenericAce
function m:Copy() end

---@static
---@param binaryForm string
---@param offset number
---@return System.Security.AccessControl.GenericAce
function m.CreateFromBinaryForm(binaryForm, offset) end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@abstract
---@param binaryForm string
---@param offset number
function m:GetBinaryForm(binaryForm, offset) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.Security.AccessControl.GenericAce
---@param right System.Security.AccessControl.GenericAce
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Security.AccessControl.GenericAce
---@param right System.Security.AccessControl.GenericAce
---@return boolean
function m.op_Inequality(left, right) end

System.Security.AccessControl.GenericAce = m
return m
