---@class TQ.DataTableDBModelBase_2_SkillLevelDBModel_SkillLevelEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return SkillLevelEntity[]
function m:GetList() end

---@param id number
---@return SkillLevelEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_SkillLevelDBModel_SkillLevelEntity_ = m
return m
