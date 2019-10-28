---@class System.Reflection.Emit.MethodRental : System.Object
---@field public JitImmediate number @static
---@field public JitOnDemand number @static
local m = {}

---@static
---@param cls System.Type
---@param methodtoken number
---@param rgIL System.IntPtr
---@param methodSize number
---@param flags number
function m.SwapMethodBody(cls, methodtoken, rgIL, methodSize, flags) end

System.Reflection.Emit.MethodRental = m
return m
