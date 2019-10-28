---@class System.Threading.ReaderWriterLock : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
---@field public IsReaderLockHeld boolean
---@field public IsWriterLockHeld boolean
---@field public WriterSeqNum number
local m = {}

---@overload fun(timeout:System.TimeSpan)
---@param millisecondsTimeout number
function m:AcquireReaderLock(millisecondsTimeout) end

---@overload fun(timeout:System.TimeSpan)
---@param millisecondsTimeout number
function m:AcquireWriterLock(millisecondsTimeout) end

---@param seqNum number
---@return boolean
function m:AnyWritersSince(seqNum) end

---@param lockCookie System.Threading.LockCookie
---@return System.Threading.LockCookie
function m:DowngradeFromWriterLock(lockCookie) end

---@return System.Threading.LockCookie
function m:ReleaseLock() end

function m:ReleaseReaderLock() end

function m:ReleaseWriterLock() end

---@param lockCookie System.Threading.LockCookie
---@return System.Threading.LockCookie
function m:RestoreLock(lockCookie) end

---@overload fun(timeout:System.TimeSpan):
---@param millisecondsTimeout number
---@return System.Threading.LockCookie
function m:UpgradeToWriterLock(millisecondsTimeout) end

System.Threading.ReaderWriterLock = m
return m
