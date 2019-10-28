---@class TQ.ProcedureEnterGame : TQ.ProcedureBase
local m = {}

---@virtual
function m:OnEnter() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:OnLeave() end

---@virtual
function m:OnDestry() end

TQ.ProcedureEnterGame = m
return m
