---@class System.Text.Encoder : System.Object
---@field public Fallback System.Text.EncoderFallback
---@field public FallbackBuffer System.Text.EncoderFallbackBuffer
local m = {}

---@virtual
function m:Reset() end

---@overload fun(chars:System.Char*, count:number, flush:boolean): @virtual
---@abstract
---@param chars number[]
---@param index number
---@param count number
---@param flush boolean
---@return number
function m:GetByteCount(chars, index, count, flush) end

---@overload fun(chars:System.Char*, charCount:number, bytes:System.Byte*, byteCount:number, flush:boolean): @virtual
---@abstract
---@param chars number[]
---@param charIndex number
---@param charCount number
---@param bytes string
---@param byteIndex number
---@param flush boolean
---@return number
function m:GetBytes(chars, charIndex, charCount, bytes, byteIndex, flush) end

---@overload fun(chars:System.Char*, charCount:number, bytes:System.Byte*, byteCount:number, flush:boolean):(, System.Int32, System.Boolean) @virtual
---@virtual
---@param chars number[]
---@param charIndex number
---@param charCount number
---@param bytes string
---@param byteIndex number
---@param byteCount number
---@param flush boolean
---@return System.Int32, System.Int32, System.Boolean
function m:Convert(chars, charIndex, charCount, bytes, byteIndex, byteCount, flush) end

System.Text.Encoder = m
return m
