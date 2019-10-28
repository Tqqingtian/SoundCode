---@class System.Collections.Stack : System.Object
---@field public Count number
---@field public IsSynchronized boolean
---@field public SyncRoot any
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
---@param index number
function m:CopyTo(array, index) end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

---@virtual
---@return any
function m:Peek() end

---@virtual
---@return any
function m:Pop() end

---@virtual
---@param obj any
function m:Push(obj) end

---@static
---@param stack System.Collections.Stack
---@return System.Collections.Stack
function m.Synchronized(stack) end

---@virtual
---@return any[]
function m:ToArray() end

System.Collections.Stack = m
return m
