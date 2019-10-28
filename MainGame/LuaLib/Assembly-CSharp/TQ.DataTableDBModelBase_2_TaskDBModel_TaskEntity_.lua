---@class TQ.DataTableDBModelBase_2_TaskDBModel_TaskEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return TaskEntity[]
function m:GetList() end

---@param id number
---@return TaskEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_TaskDBModel_TaskEntity_ = m
return m
