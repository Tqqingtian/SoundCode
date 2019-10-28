---@class TQ.DataTableDBModelBase_2_ShopCategoryDBModel_ShopCategoryEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return ShopCategoryEntity[]
function m:GetList() end

---@param id number
---@return ShopCategoryEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_ShopCategoryDBModel_ShopCategoryEntity_ = m
return m
