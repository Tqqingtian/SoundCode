---@class System.Text.DecoderFallbackBuffer : System.Object
---@field public Remaining number
local m = {}

---@abstract
---@param bytesUnknown string
---@param index number
---@return boolean
function m:Fallback(bytesUnknown, index) end

---@abstract
---@return number
function m:GetNextChar() end

---@abstract
---@return boolean
function m:MovePrevious() end

---@virtual
function m:Reset() end

System.Text.DecoderFallbackBuffer = m
return m
