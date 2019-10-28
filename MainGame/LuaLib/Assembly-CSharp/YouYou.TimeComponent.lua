---@class TQ.TimeComponent : TQ.TQBaseComponent
local m = {}

---@return TQ.TimeAction
function m:CreateTimeAction() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:Shutdown() end

---@param onComplete fun()
function m:Yield(onComplete) end

TQ.TimeComponent = m
return m
