---@class System.Resources.IResourceWriter : table
local m = {}

---@overload fun(name:string, value:any) @abstract
---@overload fun(name:string, value:string) @abstract
---@abstract
---@param name string
---@param value string
function m:AddResource(name, value) end

---@abstract
function m:Close() end

---@abstract
function m:Generate() end

System.Resources.IResourceWriter = m
return m
