---@class System.Threading.ExecutionContext : System.Object
local m = {}

---@virtual
function m:Dispose() end

---@static
---@param executionContext System.Threading.ExecutionContext
---@param callback fun(state:any)
---@param state any
function m.Run(executionContext, callback, state) end

---@return System.Threading.ExecutionContext
function m:CreateCopy() end

---@static
---@return System.Threading.AsyncFlowControl
function m.SuppressFlow() end

---@static
function m.RestoreFlow() end

---@static
---@return boolean
function m.IsFlowSuppressed() end

---@static
---@return System.Threading.ExecutionContext
function m.Capture() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Threading.ExecutionContext = m
return m
