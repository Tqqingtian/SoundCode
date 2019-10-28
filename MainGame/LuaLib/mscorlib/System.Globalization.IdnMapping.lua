---@class System.Globalization.IdnMapping : System.Object
---@field public AllowUnassigned boolean
---@field public UseStd3AsciiRules boolean
local m = {}

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(unicode:string, index:number):
---@overload fun(unicode:string, index:number, count:number):
---@param unicode string
---@return string
function m:GetAscii(unicode) end

---@overload fun(ascii:string, index:number):
---@overload fun(ascii:string, index:number, count:number):
---@param ascii string
---@return string
function m:GetUnicode(ascii) end

System.Globalization.IdnMapping = m
return m
