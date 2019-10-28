---@class UnityEngine.Serialization.UnitySurrogateSelector : System.Object
local m = {}

---@virtual
---@param type System.Type
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Runtime.Serialization.ISerializationSurrogate, System.Runtime.Serialization.ISurrogateSelector
function m:GetSurrogate(type, context) end

---@virtual
---@param selector System.Runtime.Serialization.ISurrogateSelector
function m:ChainSelector(selector) end

---@virtual
---@return System.Runtime.Serialization.ISurrogateSelector
function m:GetNextSelector() end

UnityEngine.Serialization.UnitySurrogateSelector = m
return m
