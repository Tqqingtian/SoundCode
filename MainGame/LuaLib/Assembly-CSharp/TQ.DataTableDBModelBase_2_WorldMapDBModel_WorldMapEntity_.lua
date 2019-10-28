---@class TQ.DataTableDBModelBase_2_WorldMapDBModel_WorldMapEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return WorldMapEntity[]
function m:GetList() end

---@param id number
---@return WorldMapEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_WorldMapDBModel_WorldMapEntity_ = m
return m
