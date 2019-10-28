---@class UnityEngine.ComputeShader : UnityEngine.Object
local m = {}

---@param name string
---@return number
function m:FindKernel(name) end

---@param name string
---@return boolean
function m:HasKernel(name) end

---@overload fun(name:string, val:number)
---@param nameID number
---@param val number
function m:SetFloat(nameID, val) end

---@overload fun(name:string, val:number)
---@param nameID number
---@param val number
function m:SetInt(nameID, val) end

---@overload fun(name:string, val:UnityEngine.Vector4)
---@param nameID number
---@param val UnityEngine.Vector4
function m:SetVector(nameID, val) end

---@overload fun(name:string, val:UnityEngine.Matrix4x4)
---@param nameID number
---@param val UnityEngine.Matrix4x4
function m:SetMatrix(nameID, val) end

---@overload fun(name:string, values:UnityEngine.Vector4[])
---@param nameID number
---@param values UnityEngine.Vector4[]
function m:SetVectorArray(nameID, values) end

---@overload fun(name:string, values:UnityEngine.Matrix4x4[])
---@param nameID number
---@param values UnityEngine.Matrix4x4[]
function m:SetMatrixArray(nameID, values) end

---@overload fun(kernelIndex:number, nameID:number, texture:UnityEngine.Texture)
---@overload fun(kernelIndex:number, name:string, texture:UnityEngine.Texture)
---@overload fun(kernelIndex:number, name:string, texture:UnityEngine.Texture, mipLevel:number)
---@param kernelIndex number
---@param nameID number
---@param texture UnityEngine.Texture
---@param mipLevel number
function m:SetTexture(kernelIndex, nameID, texture, mipLevel) end

---@overload fun(kernelIndex:number, name:string, globalTextureName:string)
---@param kernelIndex number
---@param nameID number
---@param globalTextureNameID number
function m:SetTextureFromGlobal(kernelIndex, nameID, globalTextureNameID) end

---@overload fun(kernelIndex:number, name:string, buffer:UnityEngine.ComputeBuffer)
---@param kernelIndex number
---@param nameID number
---@param buffer UnityEngine.ComputeBuffer
function m:SetBuffer(kernelIndex, nameID, buffer) end

---@param kernelIndex number
---@return System.UInt32, System.UInt32, System.UInt32
function m:GetKernelThreadGroupSizes(kernelIndex) end

---@param kernelIndex number
---@param threadGroupsX number
---@param threadGroupsY number
---@param threadGroupsZ number
function m:Dispatch(kernelIndex, threadGroupsX, threadGroupsY, threadGroupsZ) end

---@overload fun(name:string)
---@overload fun(nameID:number, ...:number|number[])
---@overload fun(nameID:number)
---@param name string
---@param ... number|number[]
function m:SetFloats(name, ...) end

---@overload fun(name:string)
---@overload fun(nameID:number, ...:number|number[])
---@overload fun(nameID:number)
---@param name string
---@param ... number|number[]
function m:SetInts(name, ...) end

---@overload fun(nameID:number, val:boolean)
---@param name string
---@param val boolean
function m:SetBool(name, val) end

---@overload fun(kernelIndex:number, argsBuffer:UnityEngine.ComputeBuffer)
---@param kernelIndex number
---@param argsBuffer UnityEngine.ComputeBuffer
---@param argsOffset number
function m:DispatchIndirect(kernelIndex, argsBuffer, argsOffset) end

UnityEngine.ComputeShader = m
return m
