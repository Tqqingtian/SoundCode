---@class System.IO.FileStream : System.IO.Stream
---@field public CanRead boolean
---@field public CanWrite boolean
---@field public CanSeek boolean
---@field public IsAsync boolean
---@field public Name string
---@field public Length number
---@field public Position number
---@field public Handle System.IntPtr
---@field public SafeFileHandle Microsoft.Win32.SafeHandles.SafeFileHandle
local m = {}

---@virtual
---@return number
function m:ReadByte() end

---@virtual
---@param value number
function m:WriteByte(value) end

---@virtual
---@param offset number
---@param count number
---@return number
function m:Read(offset, count) end

---@virtual
---@param array string
---@param offset number
---@param numBytes number
---@param userCallback fun(ar:System.IAsyncResult)
---@param stateObject any
---@return System.IAsyncResult
function m:BeginRead(array, offset, numBytes, userCallback, stateObject) end

---@virtual
---@param asyncResult System.IAsyncResult
---@return number
function m:EndRead(asyncResult) end

---@virtual
---@param array string
---@param offset number
---@param count number
function m:Write(array, offset, count) end

---@virtual
---@param array string
---@param offset number
---@param numBytes number
---@param userCallback fun(ar:System.IAsyncResult)
---@param stateObject any
---@return System.IAsyncResult
function m:BeginWrite(array, offset, numBytes, userCallback, stateObject) end

---@virtual
---@param asyncResult System.IAsyncResult
function m:EndWrite(asyncResult) end

---@virtual
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function m:Seek(offset, origin) end

---@virtual
---@param value number
function m:SetLength(value) end

---@overload fun(flushToDisk:boolean) @virtual
---@virtual
function m:Flush() end

---@virtual
---@param position number
---@param length number
function m:Lock(position, length) end

---@virtual
---@param position number
---@param length number
function m:Unlock(position, length) end

---@return System.Security.AccessControl.FileSecurity
function m:GetAccessControl() end

---@param fileSecurity System.Security.AccessControl.FileSecurity
function m:SetAccessControl(fileSecurity) end

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

System.IO.FileStream = m
return m
