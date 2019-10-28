---@class TQ.DataTableDBModelBase_2_MaterialDBModel_MaterialEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return MaterialEntity[]
function m:GetList() end

---@param id number
---@return MaterialEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_MaterialDBModel_MaterialEntity_ = m
return m
