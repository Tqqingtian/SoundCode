---@class System.IO.Stream.NullStream : System.IO.Stream
---@field public CanRead boolean
---@field public CanWrite boolean
---@field public CanSeek boolean
---@field public Length number
---@field public Position number
local m = {}

---@virtual
function m:Flush() end

---@virtual
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function m:FlushAsync(cancellationToken) end

---@virtual
---@param buffer string
---@param offset number
---@param count number
---@param callback fun(ar:System.IAsyncResult)
---@param state any
---@return System.IAsyncResult
function m:BeginRead(buffer, offset, count, callback, state) end

---@virtual
---@param asyncResult System.IAsyncResult
---@return number
function m:EndRead(asyncResult) end

---@virtual
---@param buffer string
---@param offset number
---@param count number
---@param callback fun(ar:System.IAsyncResult)
---@param state any
---@return System.IAsyncResult
function m:BeginWrite(buffer, offset, count, callback, state) end

---@virtual
---@param asyncResult System.IAsyncResult
function m:EndWrite(asyncResult) end

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

---@virtual
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function m:Seek(offset, origin) end

---@virtual
---@param length number
function m:SetLength(length) end

System.IO.Stream.NullStream = m
return m
