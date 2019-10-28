---@class UnityEngine.Rendering.RenderTargetIdentifier : System.ValueType
local m = {}

---@overload fun(name:string): @static
---@overload fun(nameID:number): @static
---@overload fun(tex:UnityEngine.Texture): @static
---@overload fun(buf:UnityEngine.RenderBuffer): @static
---@static
---@param type UnityEngine.Rendering.BuiltinRenderTextureType
---@return UnityEngine.Rendering.RenderTargetIdentifier
function m.op_Implicit(type) end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(obj:any): @virtual
---@virtual
---@param rhs UnityEngine.Rendering.RenderTargetIdentifier
---@return boolean
function m:Equals(rhs) end

---@static
---@param lhs UnityEngine.Rendering.RenderTargetIdentifier
---@param rhs UnityEngine.Rendering.RenderTargetIdentifier
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Rendering.RenderTargetIdentifier
---@param rhs UnityEngine.Rendering.RenderTargetIdentifier
---@return boolean
function m.op_Inequality(lhs, rhs) end

UnityEngine.Rendering.RenderTargetIdentifier = m
return m
