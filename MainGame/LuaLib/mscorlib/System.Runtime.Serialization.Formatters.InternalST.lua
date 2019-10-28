---@class System.Runtime.Serialization.Formatters.InternalST : System.Object
local m = {}

---@overload fun() @static
---@static
---@param ... any|any[]
function m.InfoSoap(...) end

---@static
---@return boolean
function m.SoapCheckEnabled() end

---@overload fun() @static
---@static
---@param ... any|any[]
function m.Soap(...) end

---@static
---@param condition boolean
---@param message string
function m.SoapAssert(condition, message) end

---@static
---@param fi System.Reflection.FieldInfo
---@param target any
---@param value any
function m.SerializationSetValue(fi, target, value) end

---@static
---@param assemblyString string
---@return System.Reflection.Assembly
function m.LoadAssemblyFromString(assemblyString) end

System.Runtime.Serialization.Formatters.InternalST = m
return m
