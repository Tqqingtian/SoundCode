---@class System.Runtime.Remoting.Proxies.RealProxy : System.Object
local m = {}

---@return System.Type
function m:GetProxiedType() end

---@virtual
---@param requestedType System.Type
---@return System.Runtime.Remoting.ObjRef
function m:CreateObjRef(requestedType) end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@param fIsMarshalled boolean
---@return System.IntPtr
function m:GetCOMIUnknown(fIsMarshalled) end

---@virtual
---@param i System.IntPtr
function m:SetCOMIUnknown(i) end

---@virtual
---@param iid System.Guid
---@return System.IntPtr, System.Guid
function m:SupportsInterface(iid) end

---@static
---@param rp System.Runtime.Remoting.Proxies.RealProxy
---@return any
function m.GetStubData(rp) end

---@static
---@param rp System.Runtime.Remoting.Proxies.RealProxy
---@param stubData any
function m.SetStubData(rp, stubData) end

---@abstract
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function m:Invoke(msg) end

---@virtual
---@return any
function m:GetTransparentProxy() end

---@param ctorMsg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Runtime.Remoting.Activation.IConstructionReturnMessage
function m:InitializeServerObject(ctorMsg) end

System.Runtime.Remoting.Proxies.RealProxy = m
return m
