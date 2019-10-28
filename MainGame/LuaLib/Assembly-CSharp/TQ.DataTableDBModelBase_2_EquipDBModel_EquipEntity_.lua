---@class TQ.DataTableDBModelBase_2_EquipDBModel_EquipEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return EquipEntity[]
function m:GetList() end

---@param id number
---@return EquipEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_EquipDBModel_EquipEntity_ = m
return m
