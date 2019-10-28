---@class UnityEngine.SceneManagement.SceneUtility : System.Object
local m = {}

---@static
---@param buildIndex number
---@return string
function m.GetScenePathByBuildIndex(buildIndex) end

---@static
---@param scenePath string
---@return number
function m.GetBuildIndexByScenePath(scenePath) end

UnityEngine.SceneManagement.SceneUtility = m
return m
