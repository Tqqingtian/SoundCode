---@class Microsoft.Win32.UnixRegistryApi : System.Object
local m = {}

---@overload fun(rkey:Microsoft.Win32.RegistryKey, keyname:string, options:Microsoft.Win32.RegistryOptions): @virtual
---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param keyname string
---@return Microsoft.Win32.RegistryKey
function m:CreateSubKey(rkey, keyname) end

---@virtual
---@param hKey Microsoft.Win32.RegistryHive
---@param machineName string
---@return Microsoft.Win32.RegistryKey
function m:OpenRemoteBaseKey(hKey, machineName) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param keyname string
---@param writable boolean
---@return Microsoft.Win32.RegistryKey
function m:OpenSubKey(rkey, keyname, writable) end

---@virtual
---@param handle Microsoft.Win32.SafeHandles.SafeRegistryHandle
---@return Microsoft.Win32.RegistryKey
function m:FromHandle(handle) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
function m:Flush(rkey) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
function m:Close(rkey) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param name string
---@param default_value any
---@param options Microsoft.Win32.RegistryValueOptions
---@return any
function m:GetValue(rkey, name, default_value, options) end

---@overload fun(rkey:Microsoft.Win32.RegistryKey, name:string, value:any, valueKind:Microsoft.Win32.RegistryValueKind) @virtual
---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param name string
---@param value any
function m:SetValue(rkey, name, value) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@return number
function m:SubKeyCount(rkey) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@return number
function m:ValueCount(rkey) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param name string
---@param throw_if_missing boolean
function m:DeleteValue(rkey, name, throw_if_missing) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param keyname string
---@param throw_if_missing boolean
function m:DeleteKey(rkey, keyname, throw_if_missing) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@return string[]
function m:GetSubKeyNames(rkey) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@return string[]
function m:GetValueNames(rkey) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@return string
function m:ToString(rkey) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param name string
---@return Microsoft.Win32.RegistryValueKind
function m:GetValueKind(rkey, name) end

---@virtual
---@param key Microsoft.Win32.RegistryKey
---@return System.IntPtr
function m:GetHandle(key) end

Microsoft.Win32.UnixRegistryApi = m
return m
