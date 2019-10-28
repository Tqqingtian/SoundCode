---@class System.Random : System.Object
local m = {}

---@overload fun(minValue:number, maxValue:number): @virtual
---@overload fun(maxValue:number): @virtual
---@virtual
---@return number
function m:Next() end

---@virtual
---@return number
function m:NextDouble() end

---@virtual
---@param buffer string
function m:NextBytes(buffer) end

System.Random = m
return m
