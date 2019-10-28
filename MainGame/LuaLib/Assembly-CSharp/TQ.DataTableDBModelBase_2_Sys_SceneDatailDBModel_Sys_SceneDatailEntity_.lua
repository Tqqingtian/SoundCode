---@class TQ.DataTableDBModelBase_2_Sys_SceneDatailDBModel_Sys_SceneDatailEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return Sys_SceneDatailEntity[]
function m:GetList() end

---@param id number
---@return Sys_SceneDatailEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_Sys_SceneDatailDBModel_Sys_SceneDatailEntity_ = m
return m
