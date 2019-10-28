---@class System.IO.IsolatedStorage.IsolatedStorageFileEnumerator : System.Object
---@field public Current any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.IO.IsolatedStorage.IsolatedStorageFileEnumerator = m
return m
