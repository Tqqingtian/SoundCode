---@class TQ.DataTableDBModelBase_2_Sys_SceneDBModel_Sys_SceneEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return Sys_SceneEntity[]
function m:GetList() end

---@param id number
---@return Sys_SceneEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_Sys_SceneDBModel_Sys_SceneEntity_ = m
return m
