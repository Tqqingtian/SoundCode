---@class UnityEngine.Material : UnityEngine.Object
---@field public shader UnityEngine.Shader
---@field public color UnityEngine.Color
---@field public mainTexture UnityEngine.Texture
---@field public mainTextureOffset UnityEngine.Vector2
---@field public mainTextureScale UnityEngine.Vector2
---@field public renderQueue number
---@field public globalIlluminationFlags UnityEngine.MaterialGlobalIlluminationFlags
---@field public doubleSidedGI boolean
---@field public enableInstancing boolean
---@field public passCount number
---@field public shaderKeywords string[]
local m = {}

---@static
---@param scriptContents string
---@return UnityEngine.Material
function m.Create(scriptContents) end

---@overload fun(name:string):
---@param nameID number
---@return boolean
function m:HasProperty(nameID) end

---@param keyword string
function m:EnableKeyword(keyword) end

---@param keyword string
function m:DisableKeyword(keyword) end

---@param keyword string
---@return boolean
function m:IsKeywordEnabled(keyword) end

---@param passName string
---@param enabled boolean
function m:SetShaderPassEnabled(passName, enabled) end

---@param passName string
---@return boolean
function m:GetShaderPassEnabled(passName) end

---@param pass number
---@return string
function m:GetPassName(pass) end

---@param passName string
---@return number
function m:FindPass(passName) end

---@param tag string
---@param val string
function m:SetOverrideTag(tag, val) end

---@overload fun(tag:string, searchFallbacks:boolean):
---@param tag string
---@param searchFallbacks boolean
---@param defaultValue string
---@return string
function m:GetTag(tag, searchFallbacks, defaultValue) end

---@param start UnityEngine.Material
---@param _end UnityEngine.Material
---@param t number
function m:Lerp(start, _end, t) end

---@param pass number
---@return boolean
function m:SetPass(pass) end

---@param mat UnityEngine.Material
function m:CopyPropertiesFromMaterial(mat) end

---@overload fun(outNames:string[])
---@return string[]
function m:GetTexturePropertyNames() end

---@overload fun(outNames:number[])
---@return number[]
function m:GetTexturePropertyNameIDs() end

---@overload fun(nameID:number, value:number)
---@param name string
---@param value number
function m:SetFloat(name, value) end

---@overload fun(nameID:number, value:number)
---@param name string
---@param value number
function m:SetInt(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Color)
---@param name string
---@param value UnityEngine.Color
function m:SetColor(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Vector4)
---@param name string
---@param value UnityEngine.Vector4
function m:SetVector(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Matrix4x4)
---@param name string
---@param value UnityEngine.Matrix4x4
function m:SetMatrix(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Texture)
---@param name string
---@param value UnityEngine.Texture
function m:SetTexture(name, value) end

---@overload fun(nameID:number, value:UnityEngine.ComputeBuffer)
---@param name string
---@param value UnityEngine.ComputeBuffer
function m:SetBuffer(name, value) end

---@overload fun(nameID:number, values:number[])
---@overload fun(name:string, values:number[])
---@overload fun(nameID:number, values:number[])
---@param name string
---@param values number[]
function m:SetFloatArray(name, values) end

---@overload fun(nameID:number, values:UnityEngine.Color[])
---@overload fun(name:string, values:UnityEngine.Color[])
---@overload fun(nameID:number, values:UnityEngine.Color[])
---@param name string
---@param values UnityEngine.Color[]
function m:SetColorArray(name, values) end

---@overload fun(nameID:number, values:UnityEngine.Vector4[])
---@overload fun(name:string, values:UnityEngine.Vector4[])
---@overload fun(nameID:number, values:UnityEngine.Vector4[])
---@param name string
---@param values UnityEngine.Vector4[]
function m:SetVectorArray(name, values) end

---@overload fun(nameID:number, values:UnityEngine.Matrix4x4[])
---@overload fun(name:string, values:UnityEngine.Matrix4x4[])
---@overload fun(nameID:number, values:UnityEngine.Matrix4x4[])
---@param name string
---@param values UnityEngine.Matrix4x4[]
function m:SetMatrixArray(name, values) end

---@overload fun(nameID:number):
---@param name string
---@return number
function m:GetFloat(name) end

---@overload fun(nameID:number):
---@param name string
---@return number
function m:GetInt(name) end

---@overload fun(nameID:number):
---@param name string
---@return UnityEngine.Color
function m:GetColor(name) end

---@overload fun(nameID:number):
---@param name string
---@return UnityEngine.Vector4
function m:GetVector(name) end

---@overload fun(nameID:number):
---@param name string
---@return UnityEngine.Matrix4x4
function m:GetMatrix(name) end

---@overload fun(nameID:number):
---@param name string
---@return UnityEngine.Texture
function m:GetTexture(name) end

---@overload fun(nameID:number):
---@overload fun(name:string, values:number[])
---@overload fun(nameID:number, values:number[])
---@param name string
---@return number[]
function m:GetFloatArray(name) end

---@overload fun(nameID:number):
---@overload fun(name:string, values:UnityEngine.Color[])
---@overload fun(nameID:number, values:UnityEngine.Color[])
---@param name string
---@return UnityEngine.Color[]
function m:GetColorArray(name) end

---@overload fun(nameID:number):
---@overload fun(name:string, values:UnityEngine.Vector4[])
---@overload fun(nameID:number, values:UnityEngine.Vector4[])
---@param name string
---@return UnityEngine.Vector4[]
function m:GetVectorArray(name) end

---@overload fun(nameID:number):
---@overload fun(name:string, values:UnityEngine.Matrix4x4[])
---@overload fun(nameID:number, values:UnityEngine.Matrix4x4[])
---@param name string
---@return UnityEngine.Matrix4x4[]
function m:GetMatrixArray(name) end

---@overload fun(nameID:number, value:UnityEngine.Vector2)
---@param name string
---@param value UnityEngine.Vector2
function m:SetTextureOffset(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Vector2)
---@param name string
---@param value UnityEngine.Vector2
function m:SetTextureScale(name, value) end

---@overload fun(nameID:number):
---@param name string
---@return UnityEngine.Vector2
function m:GetTextureOffset(name) end

---@overload fun(nameID:number):
---@param name string
---@return UnityEngine.Vector2
function m:GetTextureScale(name) end

UnityEngine.Material = m
return m
