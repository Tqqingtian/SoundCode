---@class TQ.DataTableDBModelBase_2_JobLevelDBModel_JobLevelEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return JobLevelEntity[]
function m:GetList() end

---@param id number
---@return JobLevelEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_JobLevelDBModel_JobLevelEntity_ = m
return m
