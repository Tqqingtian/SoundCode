---@class TQ.TQSceneManager : TQ.ManagerBase
local m = {}

---@overload fun(sceneId:number, showLoadingForm:boolean)
---@overload fun(sceneId:number)
---@param sceneId number
---@param showLoadingForm boolean
---@param onComplete fun()
function m:LoadScene(sceneId, showLoadingForm, onComplete) end

function m:OnUpdate() end

TQ.TQSceneManager = m
return m
