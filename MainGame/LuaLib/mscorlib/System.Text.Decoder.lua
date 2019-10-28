---@class System.Text.Decoder : System.Object
---@field public Fallback System.Text.DecoderFallback
---@field public FallbackBuffer System.Text.DecoderFallbackBuffer
local m = {}

---@virtual
function m:Reset() end

---@overload fun(bytes:string, index:number, count:number, flush:boolean): @virtual
---@overload fun(bytes:System.Byte*, count:number, flush:boolean): @virtual
---@abstract
---@param bytes string
---@param index number
---@param count number
---@return number
function m:GetCharCount(bytes, index, count) end

---@overload fun(bytes:string, byteIndex:number, byteCount:number, chars:number[], charIndex:number, flush:boolean): @virtual
---@overload fun(bytes:System.Byte*, byteCount:number, chars:System.Char*, charCount:number, flush:boolean): @virtual
---@abstract
---@param bytes string
---@param byteIndex number
---@param byteCount number
---@param chars number[]
---@param charIndex number
---@return number
function m:GetChars(bytes, byteIndex, byteCount, chars, charIndex) end

---@overload fun(bytes:System.Byte*, byteCount:number, chars:System.Char*, charCount:number, flush:boolean):(, System.Int32, System.Boolean) @virtual
---@virtual
---@param bytes string
---@param byteIndex number
---@param byteCount number
---@param chars number[]
---@param charIndex number
---@param charCount number
---@param flush boolean
---@return System.Int32, System.Int32, System.Boolean
function m:Convert(bytes, byteIndex, byteCount, chars, charIndex, charCount, flush) end

System.Text.Decoder = m
return m
