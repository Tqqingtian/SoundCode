---@class TQ.DataTableDBModelBase_2_SpriteDBModel_SpriteEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return SpriteEntity[]
function m:GetList() end

---@param id number
---@return SpriteEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_SpriteDBModel_SpriteEntity_ = m
return m
