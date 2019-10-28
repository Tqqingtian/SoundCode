---@class TQ.DataTableDBModelBase_2_NPCDBModel_NPCEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return NPCEntity[]
function m:GetList() end

---@param id number
---@return NPCEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_NPCDBModel_NPCEntity_ = m
return m
