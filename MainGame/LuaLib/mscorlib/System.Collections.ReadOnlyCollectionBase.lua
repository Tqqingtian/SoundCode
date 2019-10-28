---@class System.Collections.ReadOnlyCollectionBase : System.Object
---@field public Count number
local m = {}

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

System.Collections.ReadOnlyCollectionBase = m
return m
