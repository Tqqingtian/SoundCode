---@class System.Buffer : System.Object
local m = {}

---@static
---@param array System.Array
---@return number
function m.ByteLength(array) end

---@static
---@param array System.Array
---@param index number
---@return number
function m.GetByte(array, index) end

---@static
---@param array System.Array
---@param index number
---@param value number
function m.SetByte(array, index, value) end

---@static
---@param src System.Array
---@param srcOffset number
---@param dst System.Array
---@param dstOffset number
---@param count number
function m.BlockCopy(src, srcOffset, dst, dstOffset, count) end

---@overload fun(source:System.Void*, destination:System.Void*, destinationSizeInBytes:number, sourceBytesToCopy:number) @static
---@static
---@param source System.Void*
---@param destination System.Void*
---@param destinationSizeInBytes number
---@param sourceBytesToCopy number
function m.MemoryCopy(source, destination, destinationSizeInBytes, sourceBytesToCopy) end

System.Buffer = m
return m
