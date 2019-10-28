---@class System.Text.EncodingInfo : System.Object
---@field public CodePage number
---@field public Name string
---@field public DisplayName string
local m = {}

---@return System.Text.Encoding
function m:GetEncoding() end

---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@virtual
---@return number
function m:GetHashCode() end

System.Text.EncodingInfo = m
return m
