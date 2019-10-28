---@class TQ.ProcedureLogOn : TQ.ProcedureBase
local m = {}

---@virtual
function m:OnEnter() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:OnLeave() end

TQ.ProcedureLogOn = m
return m
