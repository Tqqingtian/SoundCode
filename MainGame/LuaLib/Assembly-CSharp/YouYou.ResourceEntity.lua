---@class TQ.ResourceEntity : System.Object
---@field public ResourceName string
---@field public Category AssetCategory
---@field public IsAssetBundle boolean
---@field public Target any
---@field public ReferneceCount number
---@field public DependsResourceList System.Collections.Generic.LinkedList_1_TQ_ResourceEntity_
local m = {}

function m:Spawn() end

function m:Unspawn() end

---@return boolean
function m:GetCanRelease() end

function m:Release() end

TQ.ResourceEntity = m
return m
