---@class System.Collections.Concurrent.ConcurrentStack_1_T_ : System.Object
---@field public IsEmpty boolean
---@field public Count number
local m = {}

function m:Clear() end

---@virtual
---@param array any[]
---@param index number
function m:CopyTo(array, index) end

---@param item any
function m:Push(item) end

---@overload fun(items:any[], startIndex:number, count:number)
---@param items any[]
function m:PushRange(items) end

---@return boolean, any
function m:TryPeek() end

---@return boolean, any
function m:TryPop() end

---@overload fun(items:any[], startIndex:number, count:number):
---@param items any[]
---@return number
function m:TryPopRange(items) end

---@virtual
---@return any[]
function m:ToArray() end

---@virtual
---@return any
function m:GetEnumerator() end

System.Collections.Concurrent.ConcurrentStack_1_T_ = m
return m
