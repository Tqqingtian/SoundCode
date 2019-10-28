---@class System.Runtime.Remoting.Messaging.MessageDictionary : System.Object
---@field public MethodKeys string[]
---@field public IsFixedSize boolean
---@field public IsReadOnly boolean
---@field public Item any
---@field public Keys System.Collections.ICollection
---@field public Values System.Collections.ICollection
---@field public Count number
---@field public IsSynchronized boolean
---@field public SyncRoot any
local m = {}

---@return System.Collections.IDictionary
function m:GetInternalProperties() end

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
function m:Remove(key) end

---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

---@virtual
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

System.Runtime.Remoting.Messaging.MessageDictionary = m
return m
