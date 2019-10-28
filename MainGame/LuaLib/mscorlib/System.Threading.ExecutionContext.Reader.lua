---@class System.Threading.ExecutionContext.Reader : System.ValueType
---@field public IsNull boolean
---@field public IsFlowSuppressed boolean
---@field public SynchronizationContext System.Threading.SynchronizationContext
---@field public SynchronizationContextNoFlow System.Threading.SynchronizationContext
---@field public LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext.Reader
---@field public IllogicalCallContext System.Runtime.Remoting.Messaging.IllogicalCallContext.Reader
local m = {}

---@return System.Threading.ExecutionContext
function m:DangerousGetRawExecutionContext() end

---@param ignoreSyncCtx boolean
---@return boolean
function m:IsDefaultFTContext(ignoreSyncCtx) end

---@param other System.Threading.ExecutionContext.Reader
---@return boolean
function m:IsSame(other) end

---@param _local System.Threading.IAsyncLocal
---@return any
function m:GetLocalValue(_local) end

---@param other System.Threading.ExecutionContext
---@return boolean
function m:HasSameLocalValues(other) end

---@return boolean
function m:HasLocalValues() end

System.Threading.ExecutionContext.Reader = m
return m
