---@class System.Resources.IResourceGroveler : table
local m = {}

---@abstract
---@param culture System.Globalization.CultureInfo
---@param localResourceSets System.Collections.Generic.Dictionary_2_System_String_System_Resources_ResourceSet_
---@param tryParents boolean
---@param createIfNotExists boolean
---@param stackMark System.Threading.StackCrawlMark
---@return System.Resources.ResourceSet, System.Threading.StackCrawlMark
function m:GrovelForResourceSet(culture, localResourceSets, tryParents, createIfNotExists, stackMark) end

---@abstract
---@param culture System.Globalization.CultureInfo
---@param defaultResName string
---@return boolean
function m:HasNeutralResources(culture, defaultResName) end

System.Resources.IResourceGroveler = m
return m
