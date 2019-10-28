---@class System.IO.UnmanagedMemoryAccessor : System.Object
---@field public Capacity number
---@field public CanRead boolean
---@field public CanWrite boolean
local m = {}

---@virtual
function m:Dispose() end

---@param position number
---@return boolean
function m:ReadBoolean(position) end

---@param position number
---@return number
function m:ReadByte(position) end

---@param position number
---@return number
function m:ReadChar(position) end

---@param position number
---@return number
function m:ReadInt16(position) end

---@param position number
---@return number
function m:ReadInt32(position) end

---@param position number
---@return number
function m:ReadInt64(position) end

---@param position number
---@return System.Decimal
function m:ReadDecimal(position) end

---@param position number
---@return number
function m:ReadSingle(position) end

---@param position number
---@return number
function m:ReadDouble(position) end

---@param position number
---@return number
function m:ReadSByte(position) end

---@param position number
---@return number
function m:ReadUInt16(position) end

---@param position number
---@return number
function m:ReadUInt32(position) end

---@param position number
---@return number
function m:ReadUInt64(position) end

---@param position number
---@return any
function m:Read(position) end

---@param position number
---@param array System.ValueType[]
---@param offset number
---@param count number
---@return number
function m:ReadArray(position, array, offset, count) end

---@overload fun(position:number, value:number)
---@overload fun(position:number, value:number)
---@overload fun(position:number, value:number)
---@overload fun(position:number, value:number)
---@overload fun(position:number, value:number)
---@overload fun(position:number, value:System.Decimal)
---@overload fun(position:number, value:number)
---@overload fun(position:number, value:number)
---@overload fun(position:number, value:number)
---@overload fun(position:number, value:number)
---@overload fun(position:number, value:number)
---@overload fun(position:number, value:number)
---@overload fun(position:number, structure:any):
---@param position number
---@param value boolean
function m:Write(position, value) end

---@param position number
---@param array System.ValueType[]
---@param offset number
---@param count number
function m:WriteArray(position, array, offset, count) end

System.IO.UnmanagedMemoryAccessor = m
return m
