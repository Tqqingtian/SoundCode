---@class System.Collections.Generic.Dictionary_2_TKey_TValue_ : System.Object
---@field public Comparer any
---@field public Count number
---@field public Keys any
---@field public Values any
---@field public Item any
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
function m:ContainsKey(key) end

---@param value any
---@return boolean
function m:ContainsValue(value) end

---@return System.ValueType
function m:GetEnumerator() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@param sender any
function m:OnDeserialization(sender) end

---@overload fun(key:any):(, any)
---@virtual
---@param key any
---@return boolean
function m:Remove(key) end

---@virtual
---@param key any
---@return boolean, any
function m:TryGetValue(key) end

---@param key any
---@param value any
---@return boolean
function m:TryAdd(key, value) end

System.Collections.Generic.Dictionary_2_TKey_TValue_ = m
return m
