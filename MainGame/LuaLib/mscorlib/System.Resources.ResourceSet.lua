---@class System.Resources.ResourceSet : System.Object
local m = {}

---@virtual
function m:Close() end

---@virtual
function m:Dispose() end

---@virtual
---@return System.Type
function m:GetDefaultReader() end

---@virtual
---@return System.Type
function m:GetDefaultWriter() end

---@virtual
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

---@overload fun(name:string, ignoreCase:boolean): @virtual
---@virtual
---@param name string
---@return string
function m:GetString(name) end

---@overload fun(name:string, ignoreCase:boolean): @virtual
---@virtual
---@param name string
---@return any
function m:GetObject(name) end

System.Resources.ResourceSet = m
return m
