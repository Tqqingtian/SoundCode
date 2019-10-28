---@class System.Threading.LazyInitializer : System.Object
local m = {}

---@overload fun(target:any, valueFactory:fun():):(, any) @static
---@overload fun(target:any, initialized:System.Boolean, syncLock:System.Object):(, any, System.Boolean, System.Object) @static
---@overload fun(target:any, initialized:System.Boolean, syncLock:System.Object, valueFactory:fun():):(, any, System.Boolean, System.Object) @static
---@static
---@param target any
---@return any, any
function m.EnsureInitialized(target) end

System.Threading.LazyInitializer = m
return m
