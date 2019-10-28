---@class System.AggregateException : System.Exception
---@field public InnerExceptions System.Exception[]
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@return System.Exception
function m:GetBaseException() end

---@param predicate fun(arg:System.Exception):
function m:Handle(predicate) end

---@return System.AggregateException
function m:Flatten() end

---@virtual
---@return string
function m:ToString() end

System.AggregateException = m
return m
