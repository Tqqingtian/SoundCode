---@class System.IO.Iterator_1_TSource_ : System.Object
---@field public Current any
local m = {}

---@virtual
function m:Dispose() end

---@virtual
---@return any
function m:GetEnumerator() end

---@abstract
---@return boolean
function m:MoveNext() end

System.IO.Iterator_1_TSource_ = m
return m
