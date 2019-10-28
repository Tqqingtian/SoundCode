---@class System.Collections.CollectionBase : System.Object
---@field public Capacity number
---@field public Count number
local m = {}

---@virtual
function m:Clear() end

---@virtual
---@param index number
function m:RemoveAt(index) end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

System.Collections.CollectionBase = m
return m
