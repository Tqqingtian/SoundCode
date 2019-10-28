---@class System.Runtime.Remoting.Channels.AggregateEnumerator : System.Object
---@field public Entry System.Collections.DictionaryEntry
---@field public Key any
---@field public Value any
---@field public Current any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.Runtime.Remoting.Channels.AggregateEnumerator = m
return m
