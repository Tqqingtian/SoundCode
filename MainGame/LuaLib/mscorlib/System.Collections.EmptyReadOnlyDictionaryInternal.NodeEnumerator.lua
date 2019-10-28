---@class System.Collections.EmptyReadOnlyDictionaryInternal.NodeEnumerator : System.Object
---@field public Current any
---@field public Key any
---@field public Value any
---@field public Entry System.Collections.DictionaryEntry
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.Collections.EmptyReadOnlyDictionaryInternal.NodeEnumerator = m
return m
