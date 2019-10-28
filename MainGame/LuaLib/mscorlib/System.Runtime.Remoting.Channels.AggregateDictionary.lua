---@class System.Runtime.Remoting.Channels.AggregateDictionary : System.Object
---@field public IsFixedSize boolean
---@field public IsReadOnly boolean
---@field public Item any
---@field public Keys System.Collections.ICollection
---@field public Values System.Collections.ICollection
---@field public Count number
---@field public IsSynchronized boolean
---@field public SyncRoot any
local m = {}

---@virtual
---@param key any
---@param value any
function m:Add(key, value) end

---@virtual
function m:Clear() end

---@virtual
---@param ob any
---@return boolean
function m:Contains(ob) end

---@virtual
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

---@virtual
---@param ob any
function m:Remove(ob) end

---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

System.Runtime.Remoting.Channels.AggregateDictionary = m
return m
