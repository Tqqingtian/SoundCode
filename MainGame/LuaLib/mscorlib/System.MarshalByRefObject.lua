---@class System.MarshalByRefObject : System.Object
local m = {}

---@virtual
---@param requestedType System.Type
---@return System.Runtime.Remoting.ObjRef
function m:CreateObjRef(requestedType) end

---@virtual
---@return any
function m:GetLifetimeService() end

---@virtual
---@return any
function m:InitializeLifetimeService() end

System.MarshalByRefObject = m
return m
