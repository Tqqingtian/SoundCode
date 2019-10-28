---@class System.Resources.ResourceManager : System.Object
---@field public MagicNumber number @static
---@field public HeaderVersionNumber number @static
---@field public BaseName string
---@field public IgnoreCase boolean
---@field public ResourceSetType System.Type
local m = {}

---@virtual
function m:ReleaseAllResources() end

---@static
---@param baseName string
---@param resourceDir string
---@param usingResourceSet System.Type
---@return System.Resources.ResourceManager
function m.CreateFileBasedResourceManager(baseName, resourceDir, usingResourceSet) end

---@virtual
---@param culture System.Globalization.CultureInfo
---@param createIfNotExists boolean
---@param tryParents boolean
---@return System.Resources.ResourceSet
function m:GetResourceSet(culture, createIfNotExists, tryParents) end

---@overload fun(name:string, culture:System.Globalization.CultureInfo): @virtual
---@virtual
---@param name string
---@return string
function m:GetString(name) end

---@overload fun(name:string, culture:System.Globalization.CultureInfo): @virtual
---@virtual
---@param name string
---@return any
function m:GetObject(name) end

---@overload fun(name:string, culture:System.Globalization.CultureInfo):
---@param name string
---@return System.IO.UnmanagedMemoryStream
function m:GetStream(name) end

System.Resources.ResourceManager = m
return m
