---@class System.Reflection.Emit.ILGenerator : System.Object
---@field public ILOffset number
local m = {}

---@virtual
---@param exceptionType System.Type
function m:BeginCatchBlock(exceptionType) end

---@virtual
function m:BeginExceptFilterBlock() end

---@virtual
---@return System.Reflection.Emit.Label
function m:BeginExceptionBlock() end

---@virtual
function m:BeginFaultBlock() end

---@virtual
function m:BeginFinallyBlock() end

---@virtual
function m:BeginScope() end

---@overload fun(localType:System.Type, pinned:boolean): @virtual
---@virtual
---@param localType System.Type
---@return System.Reflection.Emit.LocalBuilder
function m:DeclareLocal(localType) end

---@virtual
---@return System.Reflection.Emit.Label
function m:DefineLabel() end

---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:number) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, con:System.Reflection.ConstructorInfo) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:number) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, field:System.Reflection.FieldInfo) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:number) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:number) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:number) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, label:System.Reflection.Emit.Label) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, labels:System.Reflection.Emit.Label[]) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, _local:System.Reflection.Emit.LocalBuilder) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, meth:System.Reflection.MethodInfo) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:number)
---@overload fun(opcode:System.Reflection.Emit.OpCode, signature:System.Reflection.Emit.SignatureHelper) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, arg:number) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, str:string) @virtual
---@overload fun(opcode:System.Reflection.Emit.OpCode, cls:System.Type) @virtual
---@virtual
---@param opcode System.Reflection.Emit.OpCode
function m:Emit(opcode) end

---@virtual
---@param opcode System.Reflection.Emit.OpCode
---@param methodInfo System.Reflection.MethodInfo
---@param optionalParameterTypes System.Type[]
function m:EmitCall(opcode, methodInfo, optionalParameterTypes) end

---@overload fun(opcode:System.Reflection.Emit.OpCode, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, parameterTypes:System.Type[], optionalParameterTypes:System.Type[]) @virtual
---@virtual
---@param opcode System.Reflection.Emit.OpCode
---@param unmanagedCallConv System.Runtime.InteropServices.CallingConvention
---@param returnType System.Type
---@param parameterTypes System.Type[]
function m:EmitCalli(opcode, unmanagedCallConv, returnType, parameterTypes) end

---@overload fun(localBuilder:System.Reflection.Emit.LocalBuilder) @virtual
---@overload fun(value:string) @virtual
---@virtual
---@param fld System.Reflection.FieldInfo
function m:EmitWriteLine(fld) end

---@virtual
function m:EndExceptionBlock() end

---@virtual
function m:EndScope() end

---@virtual
---@param loc System.Reflection.Emit.Label
function m:MarkLabel(loc) end

---@virtual
---@param document System.Diagnostics.SymbolStore.ISymbolDocumentWriter
---@param startLine number
---@param startColumn number
---@param endLine number
---@param endColumn number
function m:MarkSequencePoint(document, startLine, startColumn, endLine, endColumn) end

---@virtual
---@param excType System.Type
function m:ThrowException(excType) end

---@virtual
---@param usingNamespace string
function m:UsingNamespace(usingNamespace) end

System.Reflection.Emit.ILGenerator = m
return m
