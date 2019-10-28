---@class UnityEngine.ShaderVariantCollection : UnityEngine.Object
---@field public shaderCount number
---@field public variantCount number
---@field public isWarmedUp boolean
local m = {}

function m:Clear() end

function m:WarmUp() end

---@param variant UnityEngine.ShaderVariantCollection.ShaderVariant
---@return boolean
function m:Add(variant) end

---@param variant UnityEngine.ShaderVariantCollection.ShaderVariant
---@return boolean
function m:Remove(variant) end

---@param variant UnityEngine.ShaderVariantCollection.ShaderVariant
---@return boolean
function m:Contains(variant) end

UnityEngine.ShaderVariantCollection = m
return m
