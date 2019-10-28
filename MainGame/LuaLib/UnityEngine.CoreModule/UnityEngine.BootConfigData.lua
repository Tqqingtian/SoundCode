---@class UnityEngine.BootConfigData : System.Object
local m = {}

---@param key string
function m:AddKey(key) end

---@overload fun(key:string, index:number):
---@param key string
---@return string
function m:Get(key) end

---@param key string
---@param value string
function m:Append(key, value) end

---@param key string
---@param value string
function m:Set(key, value) end

UnityEngine.BootConfigData = m
return m
