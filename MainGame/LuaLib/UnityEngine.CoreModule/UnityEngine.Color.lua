---@class UnityEngine.Color : System.ValueType
---@field public red UnityEngine.Color @static
---@field public green UnityEngine.Color @static
---@field public blue UnityEngine.Color @static
---@field public white UnityEngine.Color @static
---@field public black UnityEngine.Color @static
---@field public yellow UnityEngine.Color @static
---@field public cyan UnityEngine.Color @static
---@field public magenta UnityEngine.Color @static
---@field public gray UnityEngine.Color @static
---@field public grey UnityEngine.Color @static
---@field public clear UnityEngine.Color @static
---@field public r number
---@field public g number
---@field public b number
---@field public a number
---@field public grayscale number
---@field public linear UnityEngine.Color
---@field public gamma UnityEngine.Color
---@field public maxColorComponent number
---@field public Item number
local m = {}

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.Color): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@static
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@return UnityEngine.Color
function m.op_Addition(a, b) end

---@static
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@return UnityEngine.Color
function m.op_Subtraction(a, b) end

---@overload fun(a:UnityEngine.Color, b:number): @static
---@overload fun(b:number, a:UnityEngine.Color): @static
---@static
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@return UnityEngine.Color
function m.op_Multiply(a, b) end

---@static
---@param a UnityEngine.Color
---@param b number
---@return UnityEngine.Color
function m.op_Division(a, b) end

---@static
---@param lhs UnityEngine.Color
---@param rhs UnityEngine.Color
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Color
---@param rhs UnityEngine.Color
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@static
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@param t number
---@return UnityEngine.Color
function m.Lerp(a, b, t) end

---@static
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@param t number
---@return UnityEngine.Color
function m.LerpUnclamped(a, b, t) end

---@overload fun(v:UnityEngine.Vector4): @static
---@static
---@param c UnityEngine.Color
---@return UnityEngine.Vector4
function m.op_Implicit(c) end

---@static
---@param rgbColor UnityEngine.Color
---@return System.Single, System.Single, System.Single
function m.RGBToHSV(rgbColor) end

---@overload fun(H:number, S:number, V:number, hdr:boolean): @static
---@static
---@param H number
---@param S number
---@param V number
---@return UnityEngine.Color
function m.HSVToRGB(H, S, V) end

UnityEngine.Color = m
return m
