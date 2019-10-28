---@class TQ.DataTableDBModelBase_2_MessageDBModel_MessageEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return MessageEntity[]
function m:GetList() end

---@param id number
---@return MessageEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_MessageDBModel_MessageEntity_ = m
return m
