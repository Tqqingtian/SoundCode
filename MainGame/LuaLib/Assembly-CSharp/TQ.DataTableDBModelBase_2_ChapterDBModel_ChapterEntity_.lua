---@class TQ.DataTableDBModelBase_2_ChapterDBModel_ChapterEntity_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return ChapterEntity[]
function m:GetList() end

---@param id number
---@return ChapterEntity
function m:Get(id) end

function m:Clear() end

TQ.DataTableDBModelBase_2_ChapterDBModel_ChapterEntity_ = m
return m
