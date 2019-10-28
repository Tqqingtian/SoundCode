---@class TQ.SceneLoaderRoutine : System.Object
local m = {}

---@param sceneDatilId number
---@param sceneName string
---@param onProgressUpdate fun(t1:number, t2:number)
---@param onLoadSceneComplete fun(t1:TQ.SceneLoaderRoutine)
function m:LoadScene(sceneDatilId, sceneName, onProgressUpdate, onLoadSceneComplete) end

---@param sceneName string
---@param onUnLoadSceneComplete fun(t1:TQ.SceneLoaderRoutine)
function m:UnLoadScene(sceneName, onUnLoadSceneComplete) end

function m:OnUpdate() end

TQ.SceneLoaderRoutine = m
return m
