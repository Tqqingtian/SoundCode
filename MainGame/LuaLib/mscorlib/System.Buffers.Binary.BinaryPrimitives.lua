---@class System.Buffers.Binary.BinaryPrimitives : System.Object
local m = {}

---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@static
---@param value number
---@return number
function m.ReverseEndianness(value) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return System.ValueType
function m.ReadMachineEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, any
function m.TryReadMachineEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return number
function m.ReadInt16BigEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return number
function m.ReadInt32BigEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return number
function m.ReadInt64BigEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return number
function m.ReadUInt16BigEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return number
function m.ReadUInt32BigEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return number
function m.ReadUInt64BigEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, System.Int16
function m.TryReadInt16BigEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, System.Int32
function m.TryReadInt32BigEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, System.Int64
function m.TryReadInt64BigEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, System.UInt16
function m.TryReadUInt16BigEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, System.UInt32
function m.TryReadUInt32BigEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, System.UInt64
function m.TryReadUInt64BigEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return number
function m.ReadInt16LittleEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return number
function m.ReadInt32LittleEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return number
function m.ReadInt64LittleEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return number
function m.ReadUInt16LittleEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return number
function m.ReadUInt32LittleEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return number
function m.ReadUInt64LittleEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, System.Int16
function m.TryReadInt16LittleEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, System.Int32
function m.TryReadInt32LittleEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, System.Int64
function m.TryReadInt64LittleEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, System.UInt16
function m.TryReadUInt16LittleEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, System.UInt32
function m.TryReadUInt32LittleEndian(buffer) end

---@static
---@param buffer System.ReadOnlySpan_1_System_Byte_
---@return boolean, System.UInt64
function m.TryReadUInt64LittleEndian(buffer) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value any
---@return any
function m.WriteMachineEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value any
---@return boolean, any
function m.TryWriteMachineEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
function m.WriteInt16BigEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
function m.WriteInt32BigEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
function m.WriteInt64BigEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
function m.WriteUInt16BigEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
function m.WriteUInt32BigEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
function m.WriteUInt64BigEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
---@return boolean
function m.TryWriteInt16BigEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
---@return boolean
function m.TryWriteInt32BigEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
---@return boolean
function m.TryWriteInt64BigEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
---@return boolean
function m.TryWriteUInt16BigEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
---@return boolean
function m.TryWriteUInt32BigEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
---@return boolean
function m.TryWriteUInt64BigEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
function m.WriteInt16LittleEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
function m.WriteInt32LittleEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
function m.WriteInt64LittleEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
function m.WriteUInt16LittleEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
function m.WriteUInt32LittleEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
function m.WriteUInt64LittleEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
---@return boolean
function m.TryWriteInt16LittleEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
---@return boolean
function m.TryWriteInt32LittleEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
---@return boolean
function m.TryWriteInt64LittleEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
---@return boolean
function m.TryWriteUInt16LittleEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
---@return boolean
function m.TryWriteUInt32LittleEndian(buffer, value) end

---@static
---@param buffer System.Span_1_System_Byte_
---@param value number
---@return boolean
function m.TryWriteUInt64LittleEndian(buffer, value) end

System.Buffers.Binary.BinaryPrimitives = m
return m
