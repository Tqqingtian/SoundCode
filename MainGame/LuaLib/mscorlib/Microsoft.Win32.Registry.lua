---@class Microsoft.Win32.Registry : System.Object
---@field public ClassesRoot Microsoft.Win32.RegistryKey @static
---@field public CurrentConfig Microsoft.Win32.RegistryKey @static
---@field public CurrentUser Microsoft.Win32.RegistryKey @static
---@field public DynData Microsoft.Win32.RegistryKey @static
---@field public LocalMachine Microsoft.Win32.RegistryKey @static
---@field public PerformanceData Microsoft.Win32.RegistryKey @static
---@field public Users Microsoft.Win32.RegistryKey @static
local m = {}

---@overload fun(keyName:string, valueName:string, value:any, valueKind:Microsoft.Win32.RegistryValueKind) @static
---@static
---@param keyName string
---@param valueName string
---@param value any
function m.SetValue(keyName, valueName, value) end

---@static
---@param keyName string
---@param valueName string
---@param defaultValue any
---@return any
function m.GetValue(keyName, valueName, defaultValue) end

Microsoft.Win32.Registry = m
return m
