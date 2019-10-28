---@class UnityEngine.Events.ArgumentCache : System.Object
---@field public unityObjectArgument UnityEngine.Object
---@field public unityObjectArgumentAssemblyTypeName string
---@field public intArgument number
---@field public floatArgument number
---@field public stringArgument string
---@field public boolArgument boolean
local m = {}

---@virtual
function m:OnBeforeSerialize() end

---@virtual
function m:OnAfterDeserialize() end

UnityEngine.Events.ArgumentCache = m
return m
