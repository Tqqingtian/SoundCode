---@class Microsoft.Win32.Win32RegistryApi : System.Object
local m = {}

---@virtual
---@param key Microsoft.Win32.RegistryKey
---@return System.IntPtr
function m:GetHandle(key) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param name string
---@return Microsoft.Win32.RegistryValueKind
function m:GetValueKind(rkey, name) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param name string
---@param defaultValue any
---@param options Microsoft.Win32.RegistryValueOptions
---@return any
function m:GetValue(rkey, name, defaultValue, options) end

---@overload fun(rkey:Microsoft.Win32.RegistryKey, name:string, value:any) @virtual
---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param name string
---@param value any
---@param valueKind Microsoft.Win32.RegistryValueKind
function m:SetValue(rkey, name, value, valueKind) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@return number
function m:SubKeyCount(rkey) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@return number
function m:ValueCount(rkey) end

---@virtual
---@param hKey Microsoft.Win32.RegistryHive
---@param machineName string
---@return Microsoft.Win32.RegistryKey
function m:OpenRemoteBaseKey(hKey, machineName) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param keyName string
---@param writable boolean
---@return Microsoft.Win32.RegistryKey
function m:OpenSubKey(rkey, keyName, writable) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
function m:Flush(rkey) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
function m:Close(rkey) end

---@virtual
---@param handle Microsoft.Win32.SafeHandles.SafeRegistryHandle
---@return Microsoft.Win32.RegistryKey
function m:FromHandle(handle) end

---@overload fun(rkey:Microsoft.Win32.RegistryKey, keyName:string, options:Microsoft.Win32.RegistryOptions): @virtual
---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param keyName string
---@return Microsoft.Win32.RegistryKey
function m:CreateSubKey(rkey, keyName) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param keyName string
---@param shouldThrowWhenKeyMissing boolean
function m:DeleteKey(rkey, keyName, shouldThrowWhenKeyMissing) end

---@virtual
---@param rkey Microsoft.Win32.RegistryKey
---@param value string
---@param shouldThrowWhenKeyMissing boolean
function m:DeleteValue(rkey, value, shouldThrowWhenKeyMissing) end

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

Microsoft.Win32.Win32RegistryApi = m
return m
