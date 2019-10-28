---@class System.Reflection.Emit.DynamicILInfo : System.Object
---@field public DynamicMethod System.Reflection.Emit.DynamicMethod
local m = {}

---@overload fun(method:System.Reflection.Emit.DynamicMethod):
---@overload fun(field:System.RuntimeFieldHandle):
---@overload fun(method:System.RuntimeMethodHandle):
---@overload fun(type:System.RuntimeTypeHandle):
---@overload fun(literal:string):
---@overload fun(method:System.RuntimeMethodHandle, contextType:System.RuntimeTypeHandle):
---@overload fun(field:System.RuntimeFieldHandle, contextType:System.RuntimeTypeHandle):
---@param signature string
---@return number
function m:GetTokenFor(signature) end

---@overload fun(code:System.Byte*, codeSize:number, maxStackSize:number)
---@param code string
---@param maxStackSize number
function m:SetCode(code, maxStackSize) end

---@overload fun(exceptions:System.Byte*, exceptionsSize:number)
---@param exceptions string
function m:SetExceptions(exceptions) end

---@overload fun(localSignature:System.Byte*, signatureSize:number)
---@param localSignature string
function m:SetLocalSignature(localSignature) end

System.Reflection.Emit.DynamicILInfo = m
return m
