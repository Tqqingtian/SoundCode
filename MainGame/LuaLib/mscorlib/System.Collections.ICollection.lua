---@class System.Collections.ICollection : table
---@field public Count number
---@field public SyncRoot any
---@field public IsSynchronized boolean
local m = {}

---@abstract
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

System.Collections.ICollection = m
return m
