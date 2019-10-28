---@class System.Collections.ListDictionaryInternal.NodeKeyValueCollection.NodeKeyValueEnumerator : System.Object
---@field public Current any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.Collections.ListDictionaryInternal.NodeKeyValueCollection.NodeKeyValueEnumerator = m
return m
