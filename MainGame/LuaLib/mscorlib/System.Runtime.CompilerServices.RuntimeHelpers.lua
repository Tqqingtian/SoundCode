---@class System.Runtime.CompilerServices.RuntimeHelpers : System.Object
---@field public OffsetToStringData number @static
local m = {}

---@static
---@param array System.Array
---@param fldHandle System.RuntimeFieldHandle
function m.InitializeArray(array, fldHandle) end

---@static
---@param o any
---@return number
function m.GetHashCode(o) end

---@static
---@param o1 any
---@param o2 any
---@return boolean
function m.Equals(o1, o2) end

---@static
---@param obj any
---@return any
function m.GetObjectValue(obj) end

---@static
---@param type System.RuntimeTypeHandle
function m.RunClassConstructor(type) end

---@static
function m.EnsureSufficientExecutionStack() end

---@static
---@return boolean
function m.TryEnsureSufficientExecutionStack() end

---@static
---@param code fun(userData:any)
---@param backoutCode fun(userData:any, exceptionThrown:boolean)
---@param userData any
function m.ExecuteCodeWithGuaranteedCleanup(code, backoutCode, userData) end

---@static
function m.PrepareConstrainedRegions() end

---@static
function m.PrepareConstrainedRegionsNoOP() end

---@static
function m.ProbeForSufficientStack() end

---@static
---@param d fun(...:any|any[]):
function m.PrepareDelegate(d) end

---@static
---@param d fun(...:any|any[]):
function m.PrepareContractedDelegate(d) end

---@overload fun(method:System.RuntimeMethodHandle, instantiation:System.RuntimeTypeHandle[]) @static
---@static
---@param method System.RuntimeMethodHandle
function m.PrepareMethod(method) end

---@static
---@param module System.ModuleHandle
function m.RunModuleConstructor(module) end

---@static
---@return boolean
function m.IsReferenceOrContainsReferences() end

System.Runtime.CompilerServices.RuntimeHelpers = m
return m
