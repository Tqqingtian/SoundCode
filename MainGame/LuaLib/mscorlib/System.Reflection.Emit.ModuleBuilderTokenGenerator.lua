---@class System.Reflection.Emit.ModuleBuilderTokenGenerator : System.Object
local m = {}

---@overload fun(member:System.Reflection.MemberInfo, create_open_instance:boolean): @virtual
---@overload fun(method:System.Reflection.MethodBase, opt_param_types:System.Type[]): @virtual
---@overload fun(helper:System.Reflection.Emit.SignatureHelper): @virtual
---@virtual
---@param str string
---@return number
function m:GetToken(str) end

System.Reflection.Emit.ModuleBuilderTokenGenerator = m
return m
