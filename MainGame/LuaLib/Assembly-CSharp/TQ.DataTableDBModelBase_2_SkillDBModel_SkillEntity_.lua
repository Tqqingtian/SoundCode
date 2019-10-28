---@class TQ.DataTableDBModelBase_2_SkillDBModel_SkillEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return SkillEntity[]
function m:GetList() end

---@param id number
---@return SkillEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_SkillDBModel_SkillEntity_ = m
return m
