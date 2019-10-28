---@class System.Runtime.Remoting.Messaging.RemotingSurrogateSelector : System.Object
---@field public Filter fun(key:string, value:any):
local m = {}

---@virtual
---@param selector System.Runtime.Serialization.ISurrogateSelector
function m:ChainSelector(selector) end

---@virtual
---@return System.Runtime.Serialization.ISurrogateSelector
function m:GetNextSelector() end

---@return any
function m:GetRootObject() end

---@virtual
---@param type System.Type
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Runtime.Serialization.ISerializationSurrogate, System.Runtime.Serialization.ISurrogateSelector
function m:GetSurrogate(type, context) end

---@param obj any
function m:SetRootObject(obj) end

---@virtual
function m:UseSoapFormat() end

System.Runtime.Remoting.Messaging.RemotingSurrogateSelector = m
return m
