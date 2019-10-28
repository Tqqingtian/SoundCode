---@class System.Runtime.Serialization.ISurrogateSelector : table
local m = {}

---@abstract
---@param selector System.Runtime.Serialization.ISurrogateSelector
function m:ChainSelector(selector) end

---@abstract
---@param type System.Type
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Runtime.Serialization.ISerializationSurrogate, System.Runtime.Serialization.ISurrogateSelector
function m:GetSurrogate(type, context) end

---@abstract
---@return System.Runtime.Serialization.ISurrogateSelector
function m:GetNextSelector() end

System.Runtime.Serialization.ISurrogateSelector = m
return m
