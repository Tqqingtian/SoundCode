---@class UnityEngine.MaterialPropertyBlock : System.Object
---@field public isEmpty boolean
local m = {}

---@overload fun(nameID:number, value:number)
---@param name string
---@param value number
function m:AddFloat(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Vector4)
---@param name string
---@param value UnityEngine.Vector4
function m:AddVector(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Color)
---@param name string
---@param value UnityEngine.Color
function m:AddColor(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Matrix4x4)
---@param name string
---@param value UnityEngine.Matrix4x4
function m:AddMatrix(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Texture)
---@param name string
---@param value UnityEngine.Texture
function m:AddTexture(name, value) end

function m:Clear() end

---@overload fun(nameID:number, value:number)
---@param name string
---@param value number
function m:SetFloat(name, value) end

---@overload fun(nameID:number, value:number)
---@param name string
---@param value number
function m:SetInt(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Vector4)
---@param name string
---@param value UnityEngine.Vector4
function m:SetVector(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Color)
---@param name string
---@param value UnityEngine.Color
function m:SetColor(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Matrix4x4)
---@param name string
---@param value UnityEngine.Matrix4x4
function m:SetMatrix(name, value) end

---@overload fun(nameID:number, value:UnityEngine.ComputeBuffer)
---@param name string
---@param value UnityEngine.ComputeBuffer
function m:SetBuffer(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Texture)
---@param name string
---@param value UnityEngine.Texture
function m:SetTexture(name, value) end

---@overload fun(nameID:number, values:number[])
---@overload fun(name:string, values:number[])
---@overload fun(nameID:number, values:number[])
---@param name string
---@param values number[]
function m:SetFloatArray(name, values) end

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
---@return UnityEngine.Vector4
function m:GetVector(name) end

---@overload fun(nameID:number):
---@param name string
---@return UnityEngine.Color
function m:GetColor(name) end

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

---@overload fun(lightProbes:UnityEngine.Rendering.SphericalHarmonicsL2[])
---@overload fun(lightProbes:UnityEngine.Rendering.SphericalHarmonicsL2[], sourceStart:number, destStart:number, count:number)
---@overload fun(lightProbes:UnityEngine.Rendering.SphericalHarmonicsL2[], sourceStart:number, destStart:number, count:number)
---@param lightProbes UnityEngine.Rendering.SphericalHarmonicsL2[]
function m:CopySHCoefficientArraysFrom(lightProbes) end

---@overload fun(occlusionProbes:UnityEngine.Vector4[])
---@overload fun(occlusionProbes:UnityEngine.Vector4[], sourceStart:number, destStart:number, count:number)
---@overload fun(occlusionProbes:UnityEngine.Vector4[], sourceStart:number, destStart:number, count:number)
---@param occlusionProbes UnityEngine.Vector4[]
function m:CopyProbeOcclusionArrayFrom(occlusionProbes) end

UnityEngine.MaterialPropertyBlock = m
return m
