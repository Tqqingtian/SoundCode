---@class System.Security.Cryptography.TailStream : System.IO.Stream
---@field public Buffer string
---@field public CanRead boolean
---@field public CanSeek boolean
---@field public CanWrite boolean
---@field public Length number
---@field public Position number
local m = {}

function m:Clear() end

---@virtual
function m:Flush() end

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
---@return number
function m:Read(buffer, offset, count) end

---@virtual
---@param buffer string
---@param offset number
---@param count number
function m:Write(buffer, offset, count) end

System.Security.Cryptography.TailStream = m
return m
