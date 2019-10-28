---@class TQ.ResoursePool : System.Object
---@field public InspectorDic System.Collections.Generic.Dictionary_2_System_String_System_Int32_
---@field public PoolName string
local m = {}

---@param entity TQ.ResourceEntity
function m:Register(entity) end

---@param resourseName string
---@return TQ.ResourceEntity
function m:Spawn(resourseName) end

---@param resourceName string
function m:Unspawn(resourceName) end

function m:Release() end

function m:ReleaseAll() end

TQ.ResoursePool = m
return m
