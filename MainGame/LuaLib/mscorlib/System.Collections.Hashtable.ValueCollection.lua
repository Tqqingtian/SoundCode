---@class System.Collections.Hashtable.ValueCollection : System.Object
---@field public IsSynchronized boolean
---@field public SyncRoot any
---@field public Count number
local m = {}

---@virtual
---@param array System.Array
---@param arrayIndex number
function m:CopyTo(array, arrayIndex) end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

System.Collections.Hashtable.ValueCollection = m
return m
