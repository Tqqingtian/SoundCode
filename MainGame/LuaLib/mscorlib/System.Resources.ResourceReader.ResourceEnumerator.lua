---@class System.Resources.ResourceReader.ResourceEnumerator : System.Object
---@field public Key any
---@field public Current any
---@field public Entry System.Collections.DictionaryEntry
---@field public Value any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.Resources.ResourceReader.ResourceEnumerator = m
return m
