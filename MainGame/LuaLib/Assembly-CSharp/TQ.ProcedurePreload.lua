---@class TQ.ProcedurePreload : TQ.ProcedureBase
local m = {}

---@virtual
function m:OnEnter() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:OnLeave() end

TQ.ProcedurePreload = m
return m
