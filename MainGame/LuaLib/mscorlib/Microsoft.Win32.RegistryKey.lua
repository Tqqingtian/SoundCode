---@class Microsoft.Win32.RegistryKey : System.MarshalByRefObject
---@field public Name string
---@field public SubKeyCount number
---@field public ValueCount number
---@field public Handle Microsoft.Win32.SafeHandles.SafeRegistryHandle
---@field public View Microsoft.Win32.RegistryView
local m = {}

---@virtual
function m:Dispose() end

function m:Flush() end

function m:Close() end

---@overload fun(name:string, value:any, valueKind:Microsoft.Win32.RegistryValueKind)
---@param name string
---@param value any
function m:SetValue(name, value) end

---@overload fun(name:string, writable:boolean):
---@overload fun(name:string, permissionCheck:Microsoft.Win32.RegistryKeyPermissionCheck):
---@overload fun(name:string, rights:System.Security.AccessControl.RegistryRights):
---@overload fun(name:string, permissionCheck:Microsoft.Win32.RegistryKeyPermissionCheck, rights:System.Security.AccessControl.RegistryRights):
---@param name string
---@return Microsoft.Win32.RegistryKey
function m:OpenSubKey(name) end

---@overload fun(name:string, defaultValue:any):
---@overload fun(name:string, defaultValue:any, options:Microsoft.Win32.RegistryValueOptions):
---@param name string
---@return any
function m:GetValue(name) end

---@param name string
---@return Microsoft.Win32.RegistryValueKind
function m:GetValueKind(name) end

---@overload fun(subkey:string, permissionCheck:Microsoft.Win32.RegistryKeyPermissionCheck):
---@overload fun(subkey:string, permissionCheck:Microsoft.Win32.RegistryKeyPermissionCheck, registrySecurity:System.Security.AccessControl.RegistrySecurity):
---@overload fun(subkey:string, permissionCheck:Microsoft.Win32.RegistryKeyPermissionCheck, options:Microsoft.Win32.RegistryOptions):
---@overload fun(subkey:string, permissionCheck:Microsoft.Win32.RegistryKeyPermissionCheck, registryOptions:Microsoft.Win32.RegistryOptions, registrySecurity:System.Security.AccessControl.RegistrySecurity):
---@overload fun(subkey:string, writable:boolean):
---@overload fun(subkey:string, writable:boolean, options:Microsoft.Win32.RegistryOptions):
---@param subkey string
---@return Microsoft.Win32.RegistryKey
function m:CreateSubKey(subkey) end

---@overload fun(subkey:string, throwOnMissingSubKey:boolean)
---@param subkey string
function m:DeleteSubKey(subkey) end

---@overload fun(subkey:string, throwOnMissingSubKey:boolean)
---@param subkey string
function m:DeleteSubKeyTree(subkey) end

---@overload fun(name:string, throwOnMissingValue:boolean)
---@param name string
function m:DeleteValue(name) end

---@overload fun(includeSections:System.Security.AccessControl.AccessControlSections):
---@return System.Security.AccessControl.RegistrySecurity
function m:GetAccessControl() end

---@return string[]
function m:GetSubKeyNames() end

---@return string[]
function m:GetValueNames() end

---@overload fun(handle:Microsoft.Win32.SafeHandles.SafeRegistryHandle, view:Microsoft.Win32.RegistryView): @static
---@static
---@param handle Microsoft.Win32.SafeHandles.SafeRegistryHandle
---@return Microsoft.Win32.RegistryKey
function m.FromHandle(handle) end

---@overload fun(hKey:Microsoft.Win32.RegistryHive, machineName:string, view:Microsoft.Win32.RegistryView): @static
---@static
---@param hKey Microsoft.Win32.RegistryHive
---@param machineName string
---@return Microsoft.Win32.RegistryKey
function m.OpenRemoteBaseKey(hKey, machineName) end

---@static
---@param hKey Microsoft.Win32.RegistryHive
---@param view Microsoft.Win32.RegistryView
---@return Microsoft.Win32.RegistryKey
function m.OpenBaseKey(hKey, view) end

---@param registrySecurity System.Security.AccessControl.RegistrySecurity
function m:SetAccessControl(registrySecurity) end

---@virtual
---@return string
function m:ToString() end

Microsoft.Win32.RegistryKey = m
return m
