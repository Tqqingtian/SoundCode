---@class TQ.DataTableDBModelBase_2_Sys_SoundDBModel_Sys_SoundEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return Sys_SoundEntity[]
function m:GetList() end

---@param id number
---@return Sys_SoundEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_Sys_SoundDBModel_Sys_SoundEntity_ = m
return m
