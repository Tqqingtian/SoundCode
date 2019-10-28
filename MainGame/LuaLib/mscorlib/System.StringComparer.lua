---@class System.StringComparer : System.Object
---@field public InvariantCulture System.StringComparer @static
---@field public InvariantCultureIgnoreCase System.StringComparer @static
---@field public CurrentCulture System.StringComparer @static
---@field public CurrentCultureIgnoreCase System.StringComparer @static
---@field public Ordinal System.StringComparer @static
---@field public OrdinalIgnoreCase System.StringComparer @static
local m = {}

---@static
---@param culture System.Globalization.CultureInfo
---@param ignoreCase boolean
---@return System.StringComparer
function m.Create(culture, ignoreCase) end

---@overload fun(x:string, y:string): @abstract
---@virtual
---@param x any
---@param y any
---@return number
function m:Compare(x, y) end

---@overload fun(x:string, y:string): @abstract
---@virtual
---@param x any
---@param y any
---@return boolean
function m:Equals(x, y) end

---@overload fun(obj:string): @abstract
---@virtual
---@param obj any
---@return number
function m:GetHashCode(obj) end

System.StringComparer = m
return m
