---@class TQ.DataTableDBModelBase_2_ItemDBModel_ItemEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return ItemEntity[]
function m:GetList() end

---@param id number
---@return ItemEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_ItemDBModel_ItemEntity_ = m
return m
