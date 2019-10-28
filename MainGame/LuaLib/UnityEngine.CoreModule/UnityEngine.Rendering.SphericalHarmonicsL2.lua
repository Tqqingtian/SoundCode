---@class UnityEngine.Rendering.SphericalHarmonicsL2 : System.ValueType
---@field public Item number
local m = {}

function m:Clear() end

---@param color UnityEngine.Color
function m:AddAmbientLight(color) end

---@param direction UnityEngine.Vector3
---@param color UnityEngine.Color
---@param intensity number
function m:AddDirectionalLight(direction, color, intensity) end

---@param directions UnityEngine.Vector3[]
---@param results UnityEngine.Color[]
function m:Evaluate(directions, results) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.Rendering.SphericalHarmonicsL2): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@overload fun(lhs:number, rhs:UnityEngine.Rendering.SphericalHarmonicsL2): @static
---@static
---@param lhs UnityEngine.Rendering.SphericalHarmonicsL2
---@param rhs number
---@return UnityEngine.Rendering.SphericalHarmonicsL2
function m.op_Multiply(lhs, rhs) end

---@static
---@param lhs UnityEngine.Rendering.SphericalHarmonicsL2
---@param rhs UnityEngine.Rendering.SphericalHarmonicsL2
---@return UnityEngine.Rendering.SphericalHarmonicsL2
function m.op_Addition(lhs, rhs) end

---@static
---@param lhs UnityEngine.Rendering.SphericalHarmonicsL2
---@param rhs UnityEngine.Rendering.SphericalHarmonicsL2
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Rendering.SphericalHarmonicsL2
---@param rhs UnityEngine.Rendering.SphericalHarmonicsL2
---@return boolean
function m.op_Inequality(lhs, rhs) end

UnityEngine.Rendering.SphericalHarmonicsL2 = m
return m
