---@class TQ.DataTableDBModelBase_2_RechargeShopDBModel_RechargeShopEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return RechargeShopEntity[]
function m:GetList() end

---@param id number
---@return RechargeShopEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_RechargeShopDBModel_RechargeShopEntity_ = m
return m
