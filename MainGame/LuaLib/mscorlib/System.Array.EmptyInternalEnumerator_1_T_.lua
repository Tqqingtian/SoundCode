---@class System.Array.EmptyInternalEnumerator_1_T_ : System.Object
---@field public Value System.Array.EmptyInternalEnumerator_1_T_ @static
---@field public Current any
local m = {}

---@virtual
function m:Dispose() end

---@virtual
---@return boolean
function m:MoveNext() end

System.Array.EmptyInternalEnumerator_1_T_ = m
return m
