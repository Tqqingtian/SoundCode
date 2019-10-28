---@class TQ.DataTableDBModelBase_2_GameLevelGradeDBModel_GameLevelGradeEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return GameLevelGradeEntity[]
function m:GetList() end

---@param id number
---@return GameLevelGradeEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_GameLevelGradeDBModel_GameLevelGradeEntity_ = m
return m
