---@class TQ.DataTableDBModelBase_2_T_P_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return TQ.DataTableEntityBase[]
function m:GetList() end

---@param id number
---@return TQ.DataTableEntityBase
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_T_P_ = m
return m
