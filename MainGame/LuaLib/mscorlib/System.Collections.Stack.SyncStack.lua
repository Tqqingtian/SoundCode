---@class System.Collections.Stack.SyncStack : System.Collections.Stack
---@field public IsSynchronized boolean
---@field public SyncRoot any
---@field public Count number
local m = {}

---@virtual
---@param obj any
---@return boolean
function m:Contains(obj) end

---@virtual
---@return any
function m:Clone() end

---@virtual
function m:Clear() end

---@virtual
---@param array System.Array
---@param arrayIndex number
function m:CopyTo(array, arrayIndex) end

---@virtual
---@param value any
function m:Push(value) end

---@virtual
---@return any
function m:Pop() end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

---@virtual
---@return any
function m:Peek() end

---@virtual
---@return any[]
function m:ToArray() end

System.Collections.Stack.SyncStack = m
return m
