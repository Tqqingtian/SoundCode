---@class TQ.DataTableDBModelBase_2_ShopDBModel_ShopEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return ShopEntity[]
function m:GetList() end

---@param id number
---@return ShopEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_ShopDBModel_ShopEntity_ = m
return m
