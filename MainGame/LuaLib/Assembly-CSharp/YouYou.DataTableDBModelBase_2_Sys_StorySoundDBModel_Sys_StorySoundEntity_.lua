---@class TQ.DataTableDBModelBase_2_Sys_StorySoundDBModel_Sys_StorySoundEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return Sys_StorySoundEntity[]
function m:GetList() end

---@param id number
---@return Sys_StorySoundEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_Sys_StorySoundDBModel_Sys_StorySoundEntity_ = m
return m
