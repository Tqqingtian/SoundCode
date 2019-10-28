---@class System.Runtime.InteropServices.ExtensibleClassFactory : System.Object
local m = {}

---@static
---@param callback fun(aggregator:System.IntPtr):
function m.RegisterObjectCreationCallback(callback) end

System.Runtime.InteropServices.ExtensibleClassFactory = m
return m
