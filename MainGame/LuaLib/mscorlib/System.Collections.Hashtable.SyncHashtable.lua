---@class System.Collections.Hashtable.SyncHashtable : System.Collections.Hashtable
---@field public Count number
---@field public IsReadOnly boolean
---@field public IsFixedSize boolean
---@field public IsSynchronized boolean
---@field public Item any
---@field public SyncRoot any
---@field public Keys System.Collections.ICollection
---@field public Values System.Collections.ICollection
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

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
---@param key any
---@return boolean
function m:ContainsKey(key) end

---@virtual
---@param key any
---@return boolean
function m:ContainsValue(key) end

---@virtual
---@param array System.Array
---@param arrayIndex number
function m:CopyTo(array, arrayIndex) end

---@virtual
---@return any
function m:Clone() end

---@virtual
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

---@virtual
---@param key any
function m:Remove(key) end

---@virtual
---@param sender any
function m:OnDeserialization(sender) end

System.Collections.Hashtable.SyncHashtable = m
return m
