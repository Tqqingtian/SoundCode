---@class System.Text.UTF32Encoding : System.Text.Encoding
local m = {}

---@overload fun(s:string): @virtual
---@overload fun(chars:System.Char*, count:number): @virtual
---@virtual
---@param chars number[]
---@param index number
---@param count number
---@return number
function m:GetByteCount(chars, index, count) end

---@overload fun(chars:number[], charIndex:number, charCount:number, bytes:string, byteIndex:number): @virtual
---@overload fun(chars:System.Char*, charCount:number, bytes:System.Byte*, byteCount:number): @virtual
---@virtual
---@param s string
---@param charIndex number
---@param charCount number
---@param bytes string
---@param byteIndex number
---@return number
function m:GetBytes(s, charIndex, charCount, bytes, byteIndex) end

---@overload fun(bytes:System.Byte*, count:number): @virtual
---@virtual
---@param bytes string
---@param index number
---@param count number
---@return number
function m:GetCharCount(bytes, index, count) end

---@overload fun(bytes:System.Byte*, byteCount:number, chars:System.Char*, charCount:number): @virtual
---@virtual
---@param bytes string
---@param byteIndex number
---@param byteCount number
---@param chars number[]
---@param charIndex number
---@return number
function m:GetChars(bytes, byteIndex, byteCount, chars, charIndex) end

---@virtual
---@param bytes string
---@param index number
---@param count number
---@return string
function m:GetString(bytes, index, count) end

---@virtual
---@return System.Text.Decoder
function m:GetDecoder() end

---@virtual
---@return System.Text.Encoder
function m:GetEncoder() end

---@virtual
---@param charCount number
---@return number
function m:GetMaxByteCount(charCount) end

---@virtual
---@param byteCount number
---@return number
function m:GetMaxCharCount(byteCount) end

---@virtual
---@return string
function m:GetPreamble() end

---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@virtual
---@return number
function m:GetHashCode() end

System.Text.UTF32Encoding = m
return m
