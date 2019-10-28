---@class System.ArraySegment_1.ArraySegmentEnumerator_T_ : System.Object
---@field public Current any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Dispose() end

System.ArraySegment_1.ArraySegmentEnumerator_T_ = m
return m
