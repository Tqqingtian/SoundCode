---@class System.Runtime.CompilerServices.IAsyncStateMachine : table
local m = {}

---@abstract
function m:MoveNext() end

---@abstract
---@param stateMachine System.Runtime.CompilerServices.IAsyncStateMachine
function m:SetStateMachine(stateMachine) end

System.Runtime.CompilerServices.IAsyncStateMachine = m
return m
