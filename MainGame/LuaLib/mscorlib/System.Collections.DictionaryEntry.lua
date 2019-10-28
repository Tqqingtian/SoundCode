---@class System.Collections.DictionaryEntry : System.ValueType
---@field public Key any
---@field public Value any
local m = {}

---@return System.Object, System.Object
function m:Deconstruct() end

System.Collections.DictionaryEntry = m
return m
