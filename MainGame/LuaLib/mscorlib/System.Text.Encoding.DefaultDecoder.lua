---@class System.Text.Encoding.DefaultDecoder : System.Text.Decoder
local m = {}

---@virtual
---@param context System.Runtime.Serialization.StreamingContext
---@return any
function m:GetRealObject(context) end

---@overload fun(bytes:string, index:number, count:number, flush:boolean): @virtual
---@overload fun(bytes:System.Byte*, count:number, flush:boolean): @virtual
---@virtual
---@param bytes string
---@param index number
---@param count number
---@return number
function m:GetCharCount(bytes, index, count) end

---@overload fun(bytes:string, byteIndex:number, byteCount:number, chars:number[], charIndex:number, flush:boolean): @virtual
---@overload fun(bytes:System.Byte*, byteCount:number, chars:System.Char*, charCount:number, flush:boolean): @virtual
---@virtual
---@param bytes string
---@param byteIndex number
---@param byteCount number
---@param chars number[]
---@param charIndex number
---@return number
function m:GetChars(bytes, byteIndex, byteCount, chars, charIndex) end

System.Text.Encoding.DefaultDecoder = m
return m
