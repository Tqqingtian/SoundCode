---@class System.Text.CodePageEncoding : System.Object
local m = {}

---@virtual
---@param context System.Runtime.Serialization.StreamingContext
---@return any
function m:GetRealObject(context) end

System.Text.CodePageEncoding = m
return m
