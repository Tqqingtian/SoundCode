---@class Microsoft.Win32.IRegistryApi : table
local m = {}

---@overload fun(rkey:Microsoft.Win32.RegistryKey, keyname:string, options:Microsoft.Win32.RegistryOptions): @abstract
---@abstract
---@param rkey Microsoft.Win32.RegistryKey
---@param keyname string
---@return Microsoft.Win32.RegistryKey
function m:CreateSubKey(rkey, keyname) end

---@abstract
---@param hKey Microsoft.Win32.RegistryHive
---@param machineName string
---@return Microsoft.Win32.RegistryKey
function m:OpenRemoteBaseKey(hKey, machineName) end

---@abstract
---@param rkey Microsoft.Win32.RegistryKey
---@param keyname string
---@param writtable boolean
---@return Microsoft.Win32.RegistryKey
function m:OpenSubKey(rkey, keyname, writtable) end

---@abstract
---@param rkey Microsoft.Win32.RegistryKey
function m:Flush(rkey) end

---@abstract
---@param rkey Microsoft.Win32.RegistryKey
function m:Close(rkey) end

---@abstract
---@param rkey Microsoft.Win32.RegistryKey
---@param name string
---@param default_value any
---@param options Microsoft.Win32.RegistryValueOptions
---@return any
function m:GetValue(rkey, name, default_value, options) end

---@abstract
---@param rkey Microsoft.Win32.RegistryKey
---@param name string
---@return Microsoft.Win32.RegistryValueKind
function m:GetValueKind(rkey, name) end

---@overload fun(rkey:Microsoft.Win32.RegistryKey, name:string, value:any, valueKind:Microsoft.Win32.RegistryValueKind) @abstract
---@abstract
---@param rkey Microsoft.Win32.RegistryKey
---@param name string
---@param value any
function m:SetValue(rkey, name, value) end

---@abstract
---@param rkey Microsoft.Win32.RegistryKey
---@return number
function m:SubKeyCount(rkey) end

---@abstract
---@param rkey Microsoft.Win32.RegistryKey
---@return number
function m:ValueCount(rkey) end

---@abstract
---@param rkey Microsoft.Win32.RegistryKey
---@param value string
---@param throw_if_missing boolean
function m:DeleteValue(rkey, value, throw_if_missing) end

---@abstract
---@param rkey Microsoft.Win32.RegistryKey
---@param keyName string
---@param throw_if_missing boolean
function m:DeleteKey(rkey, keyName, throw_if_missing) end

---@abstract
---@param rkey Microsoft.Win32.RegistryKey
---@return string[]
function m:GetSubKeyNames(rkey) end

---@abstract
---@param rkey Microsoft.Win32.RegistryKey
---@return string[]
function m:GetValueNames(rkey) end

---@abstract
---@param rkey Microsoft.Win32.RegistryKey
---@return string
function m:ToString(rkey) end

---@abstract
---@param handle Microsoft.Win32.SafeHandles.SafeRegistryHandle
---@return Microsoft.Win32.RegistryKey
function m:FromHandle(handle) end

---@abstract
---@param key Microsoft.Win32.RegistryKey
---@return System.IntPtr
function m:GetHandle(key) end

Microsoft.Win32.IRegistryApi = m
return m
