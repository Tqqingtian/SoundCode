---@class Microsoft.Win32.KeyHandler : System.Object
---@field public Dir string
---@field public IsVolatile boolean
---@field public ValueCount number
---@field public IsMarkedForDeletion boolean
local m = {}

function m:Load() end

---@overload fun(rkey:Microsoft.Win32.RegistryKey, extra:string, writable:boolean, is_volatile:boolean):
---@param rkey Microsoft.Win32.RegistryKey
---@param extra string
---@param writable boolean
---@return Microsoft.Win32.RegistryKey
function m:Ensure(rkey, extra, writable) end

---@param rkey Microsoft.Win32.RegistryKey
---@param extra string
---@param writable boolean
---@return Microsoft.Win32.RegistryKey
function m:Probe(rkey, extra, writable) end

---@static
---@param dir string
---@return boolean
function m.VolatileKeyExists(dir) end

---@static
---@param dir string
---@return string
function m.GetVolatileDir(dir) end

---@static
---@param rkey Microsoft.Win32.RegistryKey
---@param createNonExisting boolean
---@return Microsoft.Win32.KeyHandler
function m.Lookup(rkey, createNonExisting) end

---@overload fun(dir:string) @static
---@static
---@param rkey Microsoft.Win32.RegistryKey
function m.Drop(rkey) end

---@static
---@param dir string
---@return boolean
function m.Delete(dir) end

---@param name string
---@return Microsoft.Win32.RegistryValueKind
function m:GetValueKind(name) end

---@param name string
---@param options Microsoft.Win32.RegistryValueOptions
---@return any
function m:GetValue(name, options) end

---@overload fun(name:string, value:any, valueKind:Microsoft.Win32.RegistryValueKind)
---@param name string
---@param value any
function m:SetValue(name, value) end

---@return string[]
function m:GetValueNames() end

---@return number
function m:GetSubKeyCount() end

---@return string[]
function m:GetSubKeyNames() end

---@param state any
function m:DirtyTimeout(state) end

function m:Flush() end

---@param name string
---@return boolean
function m:ValueExists(name) end

---@param name string
function m:RemoveValue(name) end

Microsoft.Win32.KeyHandler = m
return m
