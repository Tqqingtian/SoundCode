---@class TQ.TimeAction : System.Object
---@field public m_IsPause boolean
---@field public IsRuning boolean
local m = {}

---@param delayTime number
---@param interval number
---@param loop number
---@param onStart fun()
---@param onUpdate fun(obj:number)
---@param onComplete fun()
---@return TQ.TimeAction
function m:Init(delayTime, interval, loop, onStart, onUpdate, onComplete) end

function m:Run() end

function m:Stop() end

function m:Pause() end

function m:Resume() end

function m:OnUpdate() end

TQ.TimeAction = m
return m
