---@class System.Threading.CancellationToken : System.ValueType
---@field public None System.Threading.CancellationToken @static
---@field public IsCancellationRequested boolean
---@field public CanBeCanceled boolean
---@field public WaitHandle System.Threading.WaitHandle
local m = {}

---@overload fun(callback:fun(), useSynchronizationContext:boolean):
---@overload fun(callback:fun(obj:any), state:any):
---@overload fun(callback:fun(obj:any), state:any, useSynchronizationContext:boolean):
---@param callback fun()
---@return System.Threading.CancellationTokenRegistration
function m:Register(callback) end

---@overload fun(other:any): @virtual
---@param other System.Threading.CancellationToken
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.Threading.CancellationToken
---@param right System.Threading.CancellationToken
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Threading.CancellationToken
---@param right System.Threading.CancellationToken
---@return boolean
function m.op_Inequality(left, right) end

function m:ThrowIfCancellationRequested() end

System.Threading.CancellationToken = m
return m
