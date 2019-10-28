---@class System.Runtime.Serialization.SurrogateSelector : System.Object
local m = {}

---@virtual
---@param type System.Type
---@param context System.Runtime.Serialization.StreamingContext
---@param surrogate System.Runtime.Serialization.ISerializationSurrogate
function m:AddSurrogate(type, context, surrogate) end

---@virtual
---@param selector System.Runtime.Serialization.ISurrogateSelector
function m:ChainSelector(selector) end

---@virtual
---@return System.Runtime.Serialization.ISurrogateSelector
function m:GetNextSelector() end

---@virtual
---@param type System.Type
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Runtime.Serialization.ISerializationSurrogate, System.Runtime.Serialization.ISurrogateSelector
function m:GetSurrogate(type, context) end

---@virtual
---@param type System.Type
---@param context System.Runtime.Serialization.StreamingContext
function m:RemoveSurrogate(type, context) end

System.Runtime.Serialization.SurrogateSelector = m
return m
