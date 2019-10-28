---@class System.Text.EncodingProvider : System.Object
local m = {}

---@overload fun(codepage:number): @abstract
---@overload fun(name:string, encoderFallback:System.Text.EncoderFallback, decoderFallback:System.Text.DecoderFallback): @virtual
---@overload fun(codepage:number, encoderFallback:System.Text.EncoderFallback, decoderFallback:System.Text.DecoderFallback): @virtual
---@abstract
---@param name string
---@return System.Text.Encoding
function m:GetEncoding(name) end

System.Text.EncodingProvider = m
return m
