---@class TQ.FsmBase : System.Object
---@field public CurrStateType number
---@field public FsmId number
---@field public Owner System.Type
local m = {}

---@abstract
function m:ShutDown() end

TQ.FsmBase = m
return m
