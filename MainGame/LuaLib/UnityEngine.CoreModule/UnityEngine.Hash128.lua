---@class UnityEngine.Hash128 : System.ValueType
---@field public isValid boolean
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param rhs UnityEngine.Hash128
---@return number
function m:CompareTo(rhs) end

---@virtual
---@return string
function m:ToString() end

---@static
---@param hashString string
---@return UnityEngine.Hash128
function m.Parse(hashString) end

---@static
---@param hashString string
---@return UnityEngine.Hash128
function m.Compute(hashString) end

---@overload fun(obj:UnityEngine.Hash128): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param hash1 UnityEngine.Hash128
---@param hash2 UnityEngine.Hash128
---@return boolean
function m.op_Equality(hash1, hash2) end

---@static
---@param hash1 UnityEngine.Hash128
---@param hash2 UnityEngine.Hash128
---@return boolean
function m.op_Inequality(hash1, hash2) end

---@static
---@param x UnityEngine.Hash128
---@param y UnityEngine.Hash128
---@return boolean
function m.op_LessThan(x, y) end

---@static
---@param x UnityEngine.Hash128
---@param y UnityEngine.Hash128
---@return boolean
function m.op_GreaterThan(x, y) end

UnityEngine.Hash128 = m
return m
