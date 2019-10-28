---@class System.CharEnumerator : System.Object
---@field public Current number
local m = {}

---@virtual
---@return any
function m:Clone() end

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Dispose() end

---@virtual
function m:Reset() end

System.CharEnumerator = m
return m
