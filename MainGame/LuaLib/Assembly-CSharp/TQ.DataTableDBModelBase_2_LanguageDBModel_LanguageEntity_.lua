---@class TQ.DataTableDBModelBase_2_LanguageDBModel_LanguageEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return LanguageEntity[]
function m:GetList() end

---@param id number
---@return LanguageEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_LanguageDBModel_LanguageEntity_ = m
return m
