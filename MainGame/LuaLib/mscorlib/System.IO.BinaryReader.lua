---@class System.IO.BinaryReader : System.Object
---@field public BaseStream System.IO.Stream
local m = {}

---@virtual
function m:Close() end

---@virtual
function m:Dispose() end

---@virtual
---@return number
function m:PeekChar() end

---@overload fun(buffer:number[], index:number, count:number): @virtual
---@overload fun(buffer:string, index:number, count:number): @virtual
---@virtual
---@return number
function m:Read() end

---@virtual
---@return boolean
function m:ReadBoolean() end

---@virtual
---@return number
function m:ReadByte() end

---@virtual
---@return number
function m:ReadSByte() end

---@virtual
---@return number
function m:ReadChar() end

---@virtual
---@return number
function m:ReadInt16() end

---@virtual
---@return number
function m:ReadUInt16() end

---@virtual
---@return number
function m:ReadInt32() end

---@virtual
---@return number
function m:ReadUInt32() end

---@virtual
---@return number
function m:ReadInt64() end

---@virtual
---@return number
function m:ReadUInt64() end

---@virtual
---@return number
function m:ReadSingle() end

---@virtual
---@return number
function m:ReadDouble() end

---@virtual
---@return System.Decimal
function m:ReadDecimal() end

---@virtual
---@return string
function m:ReadString() end

---@virtual
---@param count number
---@return number[]
function m:ReadChars(count) end

---@virtual
---@param count number
---@return string
function m:ReadBytes(count) end

System.IO.BinaryReader = m
return m
