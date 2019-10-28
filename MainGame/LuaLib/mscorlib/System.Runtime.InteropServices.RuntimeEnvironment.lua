---@class System.Runtime.InteropServices.RuntimeEnvironment : System.Object
---@field public SystemConfigurationFile string @static
local m = {}

---@static
---@param a System.Reflection.Assembly
---@return boolean
function m.FromGlobalAccessCache(a) end

---@static
---@return string
function m.GetSystemVersion() end

---@static
---@return string
function m.GetRuntimeDirectory() end

---@static
---@param clsid System.Guid
---@param riid System.Guid
---@return System.IntPtr
function m.GetRuntimeInterfaceAsIntPtr(clsid, riid) end

---@static
---@param clsid System.Guid
---@param riid System.Guid
---@return any
function m.GetRuntimeInterfaceAsObject(clsid, riid) end

System.Runtime.InteropServices.RuntimeEnvironment = m
return m
