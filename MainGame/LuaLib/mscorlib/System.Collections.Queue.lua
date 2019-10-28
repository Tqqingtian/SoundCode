---@class System.Collections.Queue : System.Object
---@field public Count number
---@field public IsSynchronized boolean
---@field public SyncRoot any
local m = {}

---@virtual
---@return any
function m:Clone() end

---@virtual
function m:Clear() end

---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

---@virtual
---@param obj any
function m:Enqueue(obj) end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

---@virtual
---@return any
function m:Dequeue() end

---@virtual
---@return any
function m:Peek() end

---@static
---@param queue System.Collections.Queue
---@return System.Collections.Queue
function m.Synchronized(queue) end

---@virtual
---@param obj any
---@return boolean
function m:Contains(obj) end

---@virtual
---@return any[]
function m:ToArray() end

---@virtual
function m:TrimToSize() end

System.Collections.Queue = m
return m
