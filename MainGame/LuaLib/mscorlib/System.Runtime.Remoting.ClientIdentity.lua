---@class System.Runtime.Remoting.ClientIdentity : System.Runtime.Remoting.Identity
---@field public ClientProxy System.MarshalByRefObject
---@field public TargetUri string
local m = {}

---@virtual
---@param requestedType System.Type
---@return System.Runtime.Remoting.ObjRef
function m:CreateObjRef(requestedType) end

System.Runtime.Remoting.ClientIdentity = m
return m
