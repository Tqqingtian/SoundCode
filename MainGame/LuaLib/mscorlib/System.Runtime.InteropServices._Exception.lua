---@class System.Runtime.InteropServices._Exception : table
---@field public HelpLink string
---@field public InnerException System.Exception
---@field public Message string
---@field public Source string
---@field public StackTrace string
---@field public TargetSite System.Reflection.MethodBase
local m = {}

---@abstract
---@param obj any
---@return boolean
function m:Equals(obj) end

---@abstract
---@return System.Exception
function m:GetBaseException() end

---@abstract
---@return number
function m:GetHashCode() end

---@abstract
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@abstract
---@return System.Type
function m:GetType() end

---@abstract
---@return string
function m:ToString() end

System.Runtime.InteropServices._Exception = m
return m
