---@class System.IO.Stream.SyncStream : System.IO.Stream
---@field public CanRead boolean
---@field public CanWrite boolean
---@field public CanSeek boolean
---@field public CanTimeout boolean
---@field public Length number
---@field public Position number
---@field public ReadTimeout number
---@field public WriteTimeout number
local m = {}

---@virtual
function m:Close() end

---@virtual
function m:Flush() end

---@virtual
---@param offset number
---@param count number
---@return number
function m:Read(offset, count) end

---@virtual
---@return number
function m:ReadByte() end

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
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function m:Seek(offset, origin) end

---@virtual
---@param length number
function m:SetLength(length) end

---@virtual
---@param bytes string
---@param offset number
---@param count number
function m:Write(bytes, offset, count) end

---@virtual
---@param b number
function m:WriteByte(b) end

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

System.IO.Stream.SyncStream = m
return m
