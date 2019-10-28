---@class TQ.DataTableDBModelBase_2_Sys_PrefabDBModel_Sys_PrefabEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return Sys_PrefabEntity[]
function m:GetList() end

---@param id number
---@return Sys_PrefabEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_Sys_PrefabDBModel_Sys_PrefabEntity_ = m
return m
