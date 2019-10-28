---@class System.Collections.Hashtable : System.Object
---@field public Item any
---@field public IsReadOnly boolean
---@field public IsFixedSize boolean
---@field public IsSynchronized boolean
---@field public Keys System.Collections.ICollection
---@field public Values System.Collections.ICollection
---@field public SyncRoot any
---@field public Count number
local m = {}

---@virtual
---@param key any
---@param value any
function m:Add(key, value) end

---@virtual
function m:Clear() end

---@virtual
---@return any
function m:Clone() end

---@virtual
---@param key any
---@return boolean
function m:Contains(key) end

---@virtual
---@param key any
---@return boolean
function m:ContainsKey(key) end

---@virtual
---@param value any
---@return boolean
function m:ContainsValue(value) end

---@virtual
---@param array System.Array
---@param arrayIndex number
function m:CopyTo(array, arrayIndex) end

---@virtual
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

---@virtual
---@param key any
function m:Remove(key) end

---@static
---@param table System.Collections.Hashtable
---@return System.Collections.Hashtable
function m.Synchronized(table) end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@param sender any
function m:OnDeserialization(sender) end

System.Collections.Hashtable = m
return m
