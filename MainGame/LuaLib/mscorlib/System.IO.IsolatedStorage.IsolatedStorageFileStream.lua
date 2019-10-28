---@class System.IO.IsolatedStorage.IsolatedStorageFileStream : System.IO.FileStream
---@field public CanRead boolean
---@field public CanSeek boolean
---@field public CanWrite boolean
---@field public SafeFileHandle Microsoft.Win32.SafeHandles.SafeFileHandle
---@field public Handle System.IntPtr
---@field public IsAsync boolean
---@field public Length number
---@field public Position number
local m = {}

---@virtual
---@param buffer string
---@param offset number
---@param numBytes number
---@param userCallback fun(ar:System.IAsyncResult)
---@param stateObject any
---@return System.IAsyncResult
function m:BeginRead(buffer, offset, numBytes, userCallback, stateObject) end

---@virtual
---@param buffer string
---@param offset number
---@param numBytes number
---@param userCallback fun(ar:System.IAsyncResult)
---@param stateObject any
---@return System.IAsyncResult
function m:BeginWrite(buffer, offset, numBytes, userCallback, stateObject) end

---@virtual
---@param asyncResult System.IAsyncResult
---@return number
function m:EndRead(asyncResult) end

---@virtual
---@param asyncResult System.IAsyncResult
function m:EndWrite(asyncResult) end

---@overload fun(flushToDisk:boolean) @virtual
---@virtual
function m:Flush() end

---@virtual
---@param buffer string
---@param offset number
---@param count number
---@return number
function m:Read(buffer, offset, count) end

---@virtual
---@return number
function m:ReadByte() end

---@virtual
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function m:Seek(offset, origin) end

---@virtual
---@param value number
function m:SetLength(value) end

---@virtual
---@param buffer string
---@param offset number
---@param count number
function m:Write(buffer, offset, count) end

---@virtual
---@param value number
function m:WriteByte(value) end

System.IO.IsolatedStorage.IsolatedStorageFileStream = m
return m
