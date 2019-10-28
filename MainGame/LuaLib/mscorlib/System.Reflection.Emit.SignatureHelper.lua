---@class System.Reflection.Emit.SignatureHelper : System.Object
local m = {}

---@static
---@param mod System.Reflection.Module
---@return System.Reflection.Emit.SignatureHelper
function m.GetFieldSigHelper(mod) end

---@overload fun(): @static
---@static
---@param mod System.Reflection.Module
---@return System.Reflection.Emit.SignatureHelper
function m.GetLocalVarSigHelper(mod) end

---@overload fun(unmanagedCallingConvention:System.Runtime.InteropServices.CallingConvention, returnType:System.Type): @static
---@overload fun(mod:System.Reflection.Module, callingConvention:System.Reflection.CallingConventions, returnType:System.Type): @static
---@overload fun(mod:System.Reflection.Module, unmanagedCallConv:System.Runtime.InteropServices.CallingConvention, returnType:System.Type): @static
---@overload fun(mod:System.Reflection.Module, returnType:System.Type, parameterTypes:System.Type[]): @static
---@static
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@return System.Reflection.Emit.SignatureHelper
function m.GetMethodSigHelper(callingConvention, returnType) end

---@overload fun(mod:System.Reflection.Module, returnType:System.Type, requiredReturnTypeCustomModifiers:System.Type[], optionalReturnTypeCustomModifiers:System.Type[], parameterTypes:System.Type[], requiredParameterTypeCustomModifiers:System.Type[][], optionalParameterTypeCustomModifiers:System.Type[][]): @static
---@overload fun(mod:System.Reflection.Module, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, requiredReturnTypeCustomModifiers:System.Type[], optionalReturnTypeCustomModifiers:System.Type[], parameterTypes:System.Type[], requiredParameterTypeCustomModifiers:System.Type[][], optionalParameterTypeCustomModifiers:System.Type[][]): @static
---@static
---@param mod System.Reflection.Module
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.SignatureHelper
function m.GetPropertySigHelper(mod, returnType, parameterTypes) end

---@param arguments System.Type[]
---@param requiredCustomModifiers System.Type[][]
---@param optionalCustomModifiers System.Type[][]
function m:AddArguments(arguments, requiredCustomModifiers, optionalCustomModifiers) end

---@overload fun(argument:System.Type, requiredCustomModifiers:System.Type[], optionalCustomModifiers:System.Type[])
---@overload fun(clsArgument:System.Type)
---@param argument System.Type
---@param pinned boolean
function m:AddArgument(argument, pinned) end

function m:AddSentinel() end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@return string
function m:GetSignature() end

---@virtual
---@return string
function m:ToString() end

System.Reflection.Emit.SignatureHelper = m
return m
