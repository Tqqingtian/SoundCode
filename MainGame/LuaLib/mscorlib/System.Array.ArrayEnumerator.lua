---@class System.Array.ArrayEnumerator : System.Object
---@field public Current any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

---@virtual
---@return any
function m:Clone() end

System.Array.ArrayEnumerator = m
return m
