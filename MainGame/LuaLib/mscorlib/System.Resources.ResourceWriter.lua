---@class System.Resources.ResourceWriter : System.Object
---@field public TypeNameConverter fun(arg:System.Type):
local m = {}

---@overload fun(name:string, value:any) @virtual
---@overload fun(name:string, value:System.IO.Stream)
---@overload fun(name:string, value:System.IO.Stream, closeAfterWrite:boolean)
---@overload fun(name:string, value:string) @virtual
---@virtual
---@param name string
---@param value string
function m:AddResource(name, value) end

---@param name string
---@param typeName string
---@param serializedData string
function m:AddResourceData(name, typeName, serializedData) end

---@virtual
function m:Close() end

---@virtual
function m:Dispose() end

---@virtual
function m:Generate() end

System.Resources.ResourceWriter = m
return m
