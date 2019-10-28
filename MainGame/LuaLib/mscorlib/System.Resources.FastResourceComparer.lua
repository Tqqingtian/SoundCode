---@class System.Resources.FastResourceComparer : System.Object
local m = {}

---@overload fun(key:string): @virtual
---@virtual
---@param key any
---@return number
function m:GetHashCode(key) end

---@overload fun(a:string, b:string): @virtual
---@virtual
---@param a any
---@param b any
---@return number
function m:Compare(a, b) end

---@overload fun(a:any, b:any): @virtual
---@virtual
---@param a string
---@param b string
---@return boolean
function m:Equals(a, b) end

---@overload fun(bytes:string, aCharLength:number, b:string): @static
---@static
---@param a string
---@param bytes string
---@param bCharLength number
---@return number
function m.CompareOrdinal(a, bytes, bCharLength) end

System.Resources.FastResourceComparer = m
return m
