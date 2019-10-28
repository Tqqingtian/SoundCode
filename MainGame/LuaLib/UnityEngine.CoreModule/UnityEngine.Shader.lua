---@class UnityEngine.Shader : UnityEngine.Object
---@field public globalShaderHardwareTier UnityEngine.Rendering.ShaderHardwareTier @static
---@field public globalMaximumLOD number @static
---@field public globalRenderPipeline string @static
---@field public maximumLOD number
---@field public isSupported boolean
---@field public renderQueue number
local m = {}

---@static
---@param propertyName string
---@param mode UnityEngine.TexGenMode
function m.SetGlobalTexGenMode(propertyName, mode) end

---@static
---@param propertyName string
---@param matrixName string
function m.SetGlobalTextureMatrixName(propertyName, matrixName) end

---@static
---@param name string
---@return UnityEngine.Shader
function m.Find(name) end

---@static
---@param keyword string
function m.EnableKeyword(keyword) end

---@static
---@param keyword string
function m.DisableKeyword(keyword) end

---@static
---@param keyword string
---@return boolean
function m.IsKeywordEnabled(keyword) end

---@static
function m.WarmupAllShaders() end

---@static
---@param name string
---@return number
function m.PropertyToID(name) end

---@overload fun(nameID:number, value:number) @static
---@static
---@param name string
---@param value number
function m.SetGlobalFloat(name, value) end

---@overload fun(nameID:number, value:number) @static
---@static
---@param name string
---@param value number
function m.SetGlobalInt(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Vector4) @static
---@static
---@param name string
---@param value UnityEngine.Vector4
function m.SetGlobalVector(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Color) @static
---@static
---@param name string
---@param value UnityEngine.Color
function m.SetGlobalColor(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Matrix4x4) @static
---@static
---@param name string
---@param value UnityEngine.Matrix4x4
function m.SetGlobalMatrix(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Texture) @static
---@static
---@param name string
---@param value UnityEngine.Texture
function m.SetGlobalTexture(name, value) end

---@overload fun(nameID:number, value:UnityEngine.ComputeBuffer) @static
---@static
---@param name string
---@param value UnityEngine.ComputeBuffer
function m.SetGlobalBuffer(name, value) end

---@overload fun(nameID:number, values:number[]) @static
---@overload fun(name:string, values:number[]) @static
---@overload fun(nameID:number, values:number[]) @static
---@static
---@param name string
---@param values number[]
function m.SetGlobalFloatArray(name, values) end

---@overload fun(nameID:number, values:UnityEngine.Vector4[]) @static
---@overload fun(name:string, values:UnityEngine.Vector4[]) @static
---@overload fun(nameID:number, values:UnityEngine.Vector4[]) @static
---@static
---@param name string
---@param values UnityEngine.Vector4[]
function m.SetGlobalVectorArray(name, values) end

---@overload fun(nameID:number, values:UnityEngine.Matrix4x4[]) @static
---@overload fun(name:string, values:UnityEngine.Matrix4x4[]) @static
---@overload fun(nameID:number, values:UnityEngine.Matrix4x4[]) @static
---@static
---@param name string
---@param values UnityEngine.Matrix4x4[]
function m.SetGlobalMatrixArray(name, values) end

---@overload fun(nameID:number): @static
---@static
---@param name string
---@return number
function m.GetGlobalFloat(name) end

---@overload fun(nameID:number): @static
---@static
---@param name string
---@return number
function m.GetGlobalInt(name) end

---@overload fun(nameID:number): @static
---@static
---@param name string
---@return UnityEngine.Vector4
function m.GetGlobalVector(name) end

---@overload fun(nameID:number): @static
---@static
---@param name string
---@return UnityEngine.Color
function m.GetGlobalColor(name) end

---@overload fun(nameID:number): @static
---@static
---@param name string
---@return UnityEngine.Matrix4x4
function m.GetGlobalMatrix(name) end

---@overload fun(nameID:number): @static
---@static
---@param name string
---@return UnityEngine.Texture
function m.GetGlobalTexture(name) end

---@overload fun(nameID:number): @static
---@overload fun(name:string, values:number[]) @static
---@overload fun(nameID:number, values:number[]) @static
---@static
---@param name string
---@return number[]
function m.GetGlobalFloatArray(name) end

---@overload fun(nameID:number): @static
---@overload fun(name:string, values:UnityEngine.Vector4[]) @static
---@overload fun(nameID:number, values:UnityEngine.Vector4[]) @static
---@static
---@param name string
---@return UnityEngine.Vector4[]
function m.GetGlobalVectorArray(name) end

---@overload fun(nameID:number): @static
---@overload fun(name:string, values:UnityEngine.Matrix4x4[]) @static
---@overload fun(nameID:number, values:UnityEngine.Matrix4x4[]) @static
---@static
---@param name string
---@return UnityEngine.Matrix4x4[]
function m.GetGlobalMatrixArray(name) end

UnityEngine.Shader = m
return m
