---@class System.Collections.Concurrent.ConcurrentQueue_1_T_ : System.Object
---@field public IsEmpty boolean
---@field public Count number
local m = {}

---@virtual
---@return any[]
function m:ToArray() end

---@virtual
---@param array any[]
---@param index number
function m:CopyTo(array, index) end

---@virtual
---@return any
function m:GetEnumerator() end

---@param item any
function m:Enqueue(item) end

---@return boolean, any
function m:TryDequeue() end

---@return boolean, any
function m:TryPeek() end

function m:Clear() end

System.Collections.Concurrent.ConcurrentQueue_1_T_ = m
return m
