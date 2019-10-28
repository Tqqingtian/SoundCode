---@class TQ.DataTableDBModelBase_2_GameLevelRegionDBModel_GameLevelRegionEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return GameLevelRegionEntity[]
function m:GetList() end

---@param id number
---@return GameLevelRegionEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_GameLevelRegionDBModel_GameLevelRegionEntity_ = m
return m
