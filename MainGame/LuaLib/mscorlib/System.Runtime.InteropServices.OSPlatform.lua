---@class System.Runtime.InteropServices.OSPlatform : System.ValueType
---@field public Linux System.Runtime.InteropServices.OSPlatform @static
---@field public OSX System.Runtime.InteropServices.OSPlatform @static
---@field public Windows System.Runtime.InteropServices.OSPlatform @static
local m = {}

---@static
---@param osPlatform string
---@return System.Runtime.InteropServices.OSPlatform
function m.Create(osPlatform) end

---@overload fun(obj:any): @virtual
---@virtual
---@param other System.Runtime.InteropServices.OSPlatform
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

---@static
---@param left System.Runtime.InteropServices.OSPlatform
---@param right System.Runtime.InteropServices.OSPlatform
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Runtime.InteropServices.OSPlatform
---@param right System.Runtime.InteropServices.OSPlatform
---@return boolean
function m.op_Inequality(left, right) end

System.Runtime.InteropServices.OSPlatform = m
return m
