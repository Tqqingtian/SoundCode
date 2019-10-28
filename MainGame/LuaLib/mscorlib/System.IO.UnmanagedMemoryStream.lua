---@class System.IO.UnmanagedMemoryStream : System.IO.Stream
---@field public CanRead boolean
---@field public CanSeek boolean
---@field public CanWrite boolean
---@field public Length number
---@field public Capacity number
---@field public Position number
---@field public PositionPointer System.Byte*
local m = {}

---@virtual
function m:Flush() end

---@virtual
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function m:FlushAsync(cancellationToken) end

---@virtual
---@param offset number
---@param count number
---@return number
function m:Read(offset, count) end

---@virtual
---@param buffer string
---@param offset number
---@param count number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task_1_System_Int32_
function m:ReadAsync(buffer, offset, count, cancellationToken) end

---@virtual
---@return number
function m:ReadByte() end

---@virtual
---@param offset number
---@param loc System.IO.SeekOrigin
---@return number
function m:Seek(offset, loc) end

---@virtual
---@param value number
function m:SetLength(value) end

---@virtual
---@param buffer string
---@param offset number
---@param count number
function m:Write(buffer, offset, count) end

---@virtual
---@param buffer string
---@param offset number
---@param count number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function m:WriteAsync(buffer, offset, count, cancellationToken) end

---@virtual
---@param value number
function m:WriteByte(value) end

System.IO.UnmanagedMemoryStream = m
return m
