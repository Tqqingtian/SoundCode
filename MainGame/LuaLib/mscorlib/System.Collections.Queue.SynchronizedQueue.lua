---@class System.Collections.Queue.SynchronizedQueue : System.Collections.Queue
---@field public IsSynchronized boolean
---@field public SyncRoot any
---@field public Count number
local m = {}

---@virtual
function m:Clear() end

---@virtual
---@return any
function m:Clone() end

---@virtual
---@param obj any
---@return boolean
function m:Contains(obj) end

---@virtual
---@param array System.Array
---@param arrayIndex number
function m:CopyTo(array, arrayIndex) end

---@virtual
---@param value any
function m:Enqueue(value) end

---@virtual
---@return any
function m:Dequeue() end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

---@virtual
---@return any
function m:Peek() end

---@virtual
---@return any[]
function m:ToArray() end

---@virtual
function m:TrimToSize() end

System.Collections.Queue.SynchronizedQueue = m
return m
