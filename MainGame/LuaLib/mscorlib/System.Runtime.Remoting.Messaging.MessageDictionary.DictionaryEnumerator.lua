---@class System.Runtime.Remoting.Messaging.MessageDictionary.DictionaryEnumerator : System.Object
---@field public Current any
---@field public Entry System.Collections.DictionaryEntry
---@field public Key any
---@field public Value any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.Runtime.Remoting.Messaging.MessageDictionary.DictionaryEnumerator = m
return m
