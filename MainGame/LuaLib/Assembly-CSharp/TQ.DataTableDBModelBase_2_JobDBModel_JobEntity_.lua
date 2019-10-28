---@class TQ.DataTableDBModelBase_2_JobDBModel_JobEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return JobEntity[]
function m:GetList() end

---@param id number
---@return JobEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_JobDBModel_JobEntity_ = m
return m
