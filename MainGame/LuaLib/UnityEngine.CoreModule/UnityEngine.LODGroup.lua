---@class UnityEngine.LODGroup : UnityEngine.Component
---@field public crossFadeAnimationDuration number @static
---@field public localReferencePoint UnityEngine.Vector3
---@field public size number
---@field public lodCount number
---@field public fadeMode UnityEngine.LODFadeMode
---@field public animateCrossFading boolean
---@field public enabled boolean
local m = {}

function m:RecalculateBounds() end

---@return UnityEngine.LOD[]
function m:GetLODs() end

---@param lods UnityEngine.LOD[]
function m:SetLODS(lods) end

---@param lods UnityEngine.LOD[]
function m:SetLODs(lods) end

---@param index number
function m:ForceLOD(index) end

UnityEngine.LODGroup = m
return m
