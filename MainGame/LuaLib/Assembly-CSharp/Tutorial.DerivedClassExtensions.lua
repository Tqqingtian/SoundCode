---@class Tutorial.DerivedClassExtensions : System.Object
local m = {}

---@static
---@param obj Tutorial.DerivedClass
---@return number
function m.GetSomeData(obj) end

---@static
---@param obj Tutorial.BaseClass
---@return number
function m.GetSomeBaseData(obj) end

---@static
---@param obj Tutorial.DerivedClass
function m.GenericMethodOfString(obj) end

Tutorial.DerivedClassExtensions = m
return m
