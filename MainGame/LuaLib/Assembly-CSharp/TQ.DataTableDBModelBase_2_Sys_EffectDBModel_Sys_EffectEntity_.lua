---@class TQ.DataTableDBModelBase_2_Sys_EffectDBModel_Sys_EffectEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return Sys_EffectEntity[]
function m:GetList() end

---@param id number
---@return Sys_EffectEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_Sys_EffectDBModel_Sys_EffectEntity_ = m
return m
