---@class System.Collections.Hashtable.HashtableEnumerator : System.Object
---@field public Key any
---@field public Entry System.Collections.DictionaryEntry
---@field public Current any
---@field public Value any
local m = {}

---@virtual
---@return any
function m:Clone() end

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.Collections.Hashtable.HashtableEnumerator = m
return m
