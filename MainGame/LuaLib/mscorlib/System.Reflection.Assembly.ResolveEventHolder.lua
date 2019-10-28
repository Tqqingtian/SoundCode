---@class System.Reflection.Assembly.ResolveEventHolder : System.Object
local m = {}

---@param value fun(sender:any, e:System.ResolveEventArgs):
function m:add_ModuleResolve(value) end

---@param value fun(sender:any, e:System.ResolveEventArgs):
function m:remove_ModuleResolve(value) end

System.Reflection.Assembly.ResolveEventHolder = m
return m
