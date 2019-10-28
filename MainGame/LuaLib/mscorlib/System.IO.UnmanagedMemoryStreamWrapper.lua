---@class System.IO.UnmanagedMemoryStreamWrapper : System.IO.MemoryStream
---@field public CanRead boolean
---@field public CanSeek boolean
---@field public CanWrite boolean
---@field public Capacity number
---@field public Length number
---@field public Position number
local m = {}

---@virtual
function m:Flush() end

---@virtual
---@return string
function m:GetBuffer() end

---@virtual
---@return boolean, System.ArraySegment_1_System_Byte_
function m:TryGetBuffer() end

---@virtual
---@param offset number
---@param count number
---@return number
function m:Read(offset, count) end

---@virtual
---@return number
function m:ReadByte() end

---@virtual
---@param offset number
---@param loc System.IO.SeekOrigin
---@return number
function m:Seek(offset, loc) end

---@virtual
---@return string
function m:ToArray() end

---@virtual
---@param buffer string
---@param offset number
---@param count number
function m:Write(buffer, offset, count) end

---@virtual
---@param value number
function m:WriteByte(value) end

---@virtual
---@param stream System.IO.Stream
function m:WriteTo(stream) end

---@virtual
---@param value number
function m:SetLength(value) end

---@virtual
---@param destination System.IO.Stream
---@param bufferSize number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function m:CopyToAsync(destination, bufferSize, cancellationToken) end

---@virtual
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function m:FlushAsync(cancellationToken) end

---@virtual
---@param buffer string
---@param offset number
---@param count number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task_1_System_Int32_
function m:ReadAsync(buffer, offset, count, cancellationToken) end

---@virtual
---@param buffer string
---@param offset number
---@param count number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function m:WriteAsync(buffer, offset, count, cancellationToken) end

System.IO.UnmanagedMemoryStreamWrapper = m
return m
