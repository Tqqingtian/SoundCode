---@class TQ.FsmState_1_T_ : System.Object
---@field public CurrFsm TQ.FsmBase
local m = {}

---@virtual
function m:OnEnter() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:OnLeave() end

---@virtual
function m:OnDestry() end

TQ.FsmState_1_T_ = m
return m
