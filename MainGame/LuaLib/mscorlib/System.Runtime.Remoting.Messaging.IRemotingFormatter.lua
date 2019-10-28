---@class System.Runtime.Remoting.Messaging.IRemotingFormatter : table
local m = {}

---@abstract
---@param serializationStream System.IO.Stream
---@param handler fun(headers:System.Runtime.Remoting.Messaging.Header[]):
---@return any
function m:Deserialize(serializationStream, handler) end

---@abstract
---@param serializationStream System.IO.Stream
---@param graph any
---@param headers System.Runtime.Remoting.Messaging.Header[]
function m:Serialize(serializationStream, graph, headers) end

System.Runtime.Remoting.Messaging.IRemotingFormatter = m
return m
