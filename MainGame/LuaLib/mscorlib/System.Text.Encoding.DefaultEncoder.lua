---@class System.Text.Encoding.DefaultEncoder : System.Text.Encoder
local m = {}

---@virtual
---@param context System.Runtime.Serialization.StreamingContext
---@return any
function m:GetRealObject(context) end

---@overload fun(chars:System.Char*, count:number, flush:boolean): @virtual
---@virtual
---@param chars number[]
---@param index number
---@param count number
---@param flush boolean
---@return number
function m:GetByteCount(chars, index, count, flush) end

---@overload fun(chars:System.Char*, charCount:number, bytes:System.Byte*, byteCount:number, flush:boolean): @virtual
---@virtual
---@param chars number[]
---@param charIndex number
---@param charCount number
---@param bytes string
---@param byteIndex number
---@param flush boolean
---@return number
function m:GetBytes(chars, charIndex, charCount, bytes, byteIndex, flush) end

System.Text.Encoding.DefaultEncoder = m
return m
