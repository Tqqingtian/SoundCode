---@class TQ.DataTableDBModelBase_2_Sys_UIFormDBModel_Sys_UIFormEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return Sys_UIFormEntity[]
function m:GetList() end

---@param id number
---@return Sys_UIFormEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_Sys_UIFormDBModel_Sys_UIFormEntity_ = m
return m
