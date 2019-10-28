---@class System.Text.SurrogateEncoder : System.Object
local m = {}

---@virtual
---@param context System.Runtime.Serialization.StreamingContext
---@return any
function m:GetRealObject(context) end

System.Text.SurrogateEncoder = m
return m
