---@class System.Exception : System.Object
---@field public Message string
---@field public Data System.Collections.IDictionary
---@field public InnerException System.Exception
---@field public TargetSite System.Reflection.MethodBase
---@field public StackTrace string
---@field public HelpLink string
---@field public Source string
---@field public HResult number
local m = {}

---@virtual
---@return System.Exception
function m:GetBaseException() end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@return System.Type
function m:GetType() end

System.Exception = m
return m
