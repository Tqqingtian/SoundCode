---@class Sys_SceneDatailDBModel : TQ.DataTableDBModelBase_2_Sys_SceneDatailDBModel_Sys_SceneDatailEntity_
---@field public DataTableName string
local m = {}

---@param sceneId number
---@param sceneGrade number
---@return Sys_SceneDatailEntity[]
function m:GetListBySceneId(sceneId, sceneGrade) end

Sys_SceneDatailDBModel = m
return m
