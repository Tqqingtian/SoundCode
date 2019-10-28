---@class System.Runtime.InteropServices.UCOMIStream : table
local m = {}

---@abstract
---@param cb number
---@param pcbRead System.IntPtr
function m:Read(cb, pcbRead) end

---@abstract
---@param pv string
---@param cb number
---@param pcbWritten System.IntPtr
function m:Write(pv, cb, pcbWritten) end

---@abstract
---@param dlibMove number
---@param dwOrigin number
---@param plibNewPosition System.IntPtr
function m:Seek(dlibMove, dwOrigin, plibNewPosition) end

---@abstract
---@param libNewSize number
function m:SetSize(libNewSize) end

---@abstract
---@param pstm System.Runtime.InteropServices.UCOMIStream
---@param cb number
---@param pcbRead System.IntPtr
---@param pcbWritten System.IntPtr
function m:CopyTo(pstm, cb, pcbRead, pcbWritten) end

---@abstract
---@param grfCommitFlags number
function m:Commit(grfCommitFlags) end

---@abstract
function m:Revert() end

---@abstract
---@param libOffset number
---@param cb number
---@param dwLockType number
function m:LockRegion(libOffset, cb, dwLockType) end

---@abstract
---@param libOffset number
---@param cb number
---@param dwLockType number
function m:UnlockRegion(libOffset, cb, dwLockType) end

---@abstract
---@param grfStatFlag number
---@return System.Runtime.InteropServices.STATSTG
function m:Stat(grfStatFlag) end

---@abstract
---@return System.Runtime.InteropServices.UCOMIStream
function m:Clone() end

System.Runtime.InteropServices.UCOMIStream = m
return m
