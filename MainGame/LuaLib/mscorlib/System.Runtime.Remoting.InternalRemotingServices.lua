---@class System.Runtime.Remoting.InternalRemotingServices : System.Object
local m = {}

---@static
---@param s string
function m.DebugOutChnl(s) end

---@static
---@param reflectionObject any
---@return System.Runtime.Remoting.Metadata.SoapAttribute
function m.GetCachedSoapAttribute(reflectionObject) end

---@static
---@param condition boolean
---@param message string
function m.RemotingAssert(condition, message) end

---@overload fun() @static
---@static
---@param ... any|any[]
function m.RemotingTrace(...) end

---@static
---@param m System.Runtime.Remoting.Messaging.MethodCall
---@param srvID any
function m.SetServerIdentity(m, srvID) end

System.Runtime.Remoting.InternalRemotingServices = m
return m
