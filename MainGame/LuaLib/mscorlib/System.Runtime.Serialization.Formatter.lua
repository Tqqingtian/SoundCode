---@class System.Runtime.Serialization.Formatter : System.Object
---@field public SurrogateSelector System.Runtime.Serialization.ISurrogateSelector
---@field public Binder System.Runtime.Serialization.SerializationBinder
---@field public Context System.Runtime.Serialization.StreamingContext
local m = {}

---@abstract
---@param serializationStream System.IO.Stream
---@return any
function m:Deserialize(serializationStream) end

---@abstract
---@param serializationStream System.IO.Stream
---@param graph any
function m:Serialize(serializationStream, graph) end

System.Runtime.Serialization.Formatter = m
return m
