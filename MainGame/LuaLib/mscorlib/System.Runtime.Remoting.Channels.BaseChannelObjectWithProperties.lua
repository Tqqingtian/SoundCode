---@class System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties : System.Object
---@field public Count number
---@field public IsFixedSize boolean
---@field public IsReadOnly boolean
---@field public IsSynchronized boolean
---@field public Item any
---@field public Keys System.Collections.ICollection
---@field public Properties System.Collections.IDictionary
---@field public SyncRoot any
---@field public Values System.Collections.ICollection
local m = {}

---@virtual
---@param key any
---@param value any
function m:Add(key, value) end

---@virtual
function m:Clear() end

---@virtual
---@param key any
---@return boolean
function m:Contains(key) end

---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

---@virtual
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

---@virtual
---@param key any
function m:Remove(key) end

System.Runtime.Remoting.Channels.BaseChannelObjectWithProperties = m
return m
