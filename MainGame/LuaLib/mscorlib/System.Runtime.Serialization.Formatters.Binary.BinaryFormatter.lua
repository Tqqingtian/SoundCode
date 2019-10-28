---@class System.Runtime.Serialization.Formatters.Binary.BinaryFormatter : System.Object
---@field public TypeFormat System.Runtime.Serialization.Formatters.FormatterTypeStyle
---@field public AssemblyFormat System.Runtime.Serialization.Formatters.FormatterAssemblyStyle
---@field public FilterLevel System.Runtime.Serialization.Formatters.TypeFilterLevel
---@field public SurrogateSelector System.Runtime.Serialization.ISurrogateSelector
---@field public Binder System.Runtime.Serialization.SerializationBinder
---@field public Context System.Runtime.Serialization.StreamingContext
local m = {}

---@overload fun(serializationStream:System.IO.Stream, handler:fun(headers:System.Runtime.Remoting.Messaging.Header[]):): @virtual
---@virtual
---@param serializationStream System.IO.Stream
---@return any
function m:Deserialize(serializationStream) end

---@param serializationStream System.IO.Stream
---@param handler fun(headers:System.Runtime.Remoting.Messaging.Header[]):
---@param methodCallMessage System.Runtime.Remoting.Messaging.IMethodCallMessage
---@return any
function m:DeserializeMethodResponse(serializationStream, handler, methodCallMessage) end

---@param serializationStream System.IO.Stream
---@param handler fun(headers:System.Runtime.Remoting.Messaging.Header[]):
---@return any
function m:UnsafeDeserialize(serializationStream, handler) end

---@param serializationStream System.IO.Stream
---@param handler fun(headers:System.Runtime.Remoting.Messaging.Header[]):
---@param methodCallMessage System.Runtime.Remoting.Messaging.IMethodCallMessage
---@return any
function m:UnsafeDeserializeMethodResponse(serializationStream, handler, methodCallMessage) end

---@overload fun(serializationStream:System.IO.Stream, graph:any, headers:System.Runtime.Remoting.Messaging.Header[]) @virtual
---@virtual
---@param serializationStream System.IO.Stream
---@param graph any
function m:Serialize(serializationStream, graph) end

System.Runtime.Serialization.Formatters.Binary.BinaryFormatter = m
return m
