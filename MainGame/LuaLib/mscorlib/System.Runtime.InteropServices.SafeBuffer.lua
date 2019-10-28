---@class System.Runtime.InteropServices.SafeBuffer : Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid
---@field public ByteLength number
local m = {}

---@overload fun(numElements:number, sizeOfEachElement:number)
---@overload fun(numElements:number)
---@param numBytes number
function m:Initialize(numBytes) end

---@param pointer System.Byte*
---@return System.Byte*
function m:AcquirePointer(pointer) end

function m:ReleasePointer() end

---@param byteOffset number
---@return System.ValueType
function m:Read(byteOffset) end

---@param byteOffset number
---@param array System.ValueType[]
---@param index number
---@param count number
function m:ReadArray(byteOffset, array, index, count) end

---@param byteOffset number
---@param value System.ValueType
function m:Write(byteOffset, value) end

---@param byteOffset number
---@param array System.ValueType[]
---@param index number
---@param count number
function m:WriteArray(byteOffset, array, index, count) end

System.Runtime.InteropServices.SafeBuffer = m
return m
