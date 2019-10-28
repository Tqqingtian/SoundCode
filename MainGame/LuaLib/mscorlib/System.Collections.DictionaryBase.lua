---@class System.Collections.DictionaryBase : System.Object
---@field public Count number
local m = {}

---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

---@virtual
function m:Clear() end

---@virtual
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

System.Collections.DictionaryBase = m
return m
