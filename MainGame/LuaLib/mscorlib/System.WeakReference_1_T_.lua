---@class System.WeakReference_1_T_ : System.Object
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@param target any
function m:SetTarget(target) end

---@return boolean, any
function m:TryGetTarget() end

System.WeakReference_1_T_ = m
return m
