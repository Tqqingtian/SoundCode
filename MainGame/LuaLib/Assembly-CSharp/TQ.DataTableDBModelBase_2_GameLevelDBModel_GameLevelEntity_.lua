---@class TQ.DataTableDBModelBase_2_GameLevelDBModel_GameLevelEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return GameLevelEntity[]
function m:GetList() end

---@param id number
---@return GameLevelEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_GameLevelDBModel_GameLevelEntity_ = m
return m
