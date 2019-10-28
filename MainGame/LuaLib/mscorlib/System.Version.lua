---@class System.Version : System.Object
---@field public Major number
---@field public Minor number
---@field public Build number
---@field public Revision number
---@field public MajorRevision number
---@field public MinorRevision number
local m = {}

---@virtual
---@return any
function m:Clone() end

---@overload fun(value:System.Version): @virtual
---@virtual
---@param version any
---@return number
function m:CompareTo(version) end

---@overload fun(obj:System.Version): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(fieldCount:number):
---@virtual
---@return string
function m:ToString() end

---@static
---@param input string
---@return System.Version
function m.Parse(input) end

---@static
---@param input string
---@return boolean, System.Version
function m.TryParse(input) end

---@static
---@param v1 System.Version
---@param v2 System.Version
---@return boolean
function m.op_Equality(v1, v2) end

---@static
---@param v1 System.Version
---@param v2 System.Version
---@return boolean
function m.op_Inequality(v1, v2) end

---@static
---@param v1 System.Version
---@param v2 System.Version
---@return boolean
function m.op_LessThan(v1, v2) end

---@static
---@param v1 System.Version
---@param v2 System.Version
---@return boolean
function m.op_LessThanOrEqual(v1, v2) end

---@static
---@param v1 System.Version
---@param v2 System.Version
---@return boolean
function m.op_GreaterThan(v1, v2) end

---@static
---@param v1 System.Version
---@param v2 System.Version
---@return boolean
function m.op_GreaterThanOrEqual(v1, v2) end

System.Version = m
return m
