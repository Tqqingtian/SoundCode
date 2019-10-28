---@class System.Reflection.Emit.OpCode : System.ValueType
---@field public Name string
---@field public Size number
---@field public OpCodeType System.Reflection.Emit.OpCodeType
---@field public OperandType System.Reflection.Emit.OperandType
---@field public FlowControl System.Reflection.Emit.FlowControl
---@field public StackBehaviourPop System.Reflection.Emit.StackBehaviour
---@field public StackBehaviourPush System.Reflection.Emit.StackBehaviour
---@field public Value number
local m = {}

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(obj:System.Reflection.Emit.OpCode):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return string
function m:ToString() end

---@static
---@param a System.Reflection.Emit.OpCode
---@param b System.Reflection.Emit.OpCode
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Reflection.Emit.OpCode
---@param b System.Reflection.Emit.OpCode
---@return boolean
function m.op_Inequality(a, b) end

System.Reflection.Emit.OpCode = m
return m
