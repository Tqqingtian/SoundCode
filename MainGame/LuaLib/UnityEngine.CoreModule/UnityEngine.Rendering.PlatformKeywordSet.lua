---@class UnityEngine.Rendering.PlatformKeywordSet : System.ValueType
local m = {}

---@param define UnityEngine.Rendering.BuiltinShaderDefine
---@return boolean
function m:IsEnabled(define) end

---@param define UnityEngine.Rendering.BuiltinShaderDefine
function m:Enable(define) end

---@param define UnityEngine.Rendering.BuiltinShaderDefine
function m:Disable(define) end

UnityEngine.Rendering.PlatformKeywordSet = m
return m
