---@class TQ.DataTableDBModelBase_2_GameLevelMonsterDBModel_GameLevelMonsterEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return GameLevelMonsterEntity[]
function m:GetList() end

---@param id number
---@return GameLevelMonsterEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_GameLevelMonsterDBModel_GameLevelMonsterEntity_ = m
return m
