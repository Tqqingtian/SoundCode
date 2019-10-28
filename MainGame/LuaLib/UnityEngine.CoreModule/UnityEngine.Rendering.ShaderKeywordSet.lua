---@class UnityEngine.Rendering.ShaderKeywordSet : System.ValueType
local m = {}

---@param keyword UnityEngine.Rendering.ShaderKeyword
---@return boolean
function m:IsEnabled(keyword) end

---@param keyword UnityEngine.Rendering.ShaderKeyword
function m:Enable(keyword) end

---@param keyword UnityEngine.Rendering.ShaderKeyword
function m:Disable(keyword) end

---@return UnityEngine.Rendering.ShaderKeyword[]
function m:GetShaderKeywords() end

UnityEngine.Rendering.ShaderKeywordSet = m
return m
