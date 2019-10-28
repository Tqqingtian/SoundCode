---@class System.Reflection.Emit.TokenGenerator : table
local m = {}

---@overload fun(member:System.Reflection.MemberInfo, create_open_instance:boolean): @abstract
---@overload fun(method:System.Reflection.MethodBase, opt_param_types:System.Type[]): @abstract
---@overload fun(helper:System.Reflection.Emit.SignatureHelper): @abstract
---@abstract
---@param str string
---@return number
function m:GetToken(str) end

System.Reflection.Emit.TokenGenerator = m
return m
