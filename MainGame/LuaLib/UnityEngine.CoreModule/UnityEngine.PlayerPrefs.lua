---@class UnityEngine.PlayerPrefs : System.Object
local m = {}

---@static
---@param key string
---@param value number
function m.SetInt(key, value) end

---@overload fun(key:string): @static
---@static
---@param key string
---@param defaultValue number
---@return number
function m.GetInt(key, defaultValue) end

---@static
---@param key string
---@param value number
function m.SetFloat(key, value) end

---@overload fun(key:string): @static
---@static
---@param key string
---@param defaultValue number
---@return number
function m.GetFloat(key, defaultValue) end

---@static
---@param key string
---@param value string
function m.SetString(key, value) end

---@overload fun(key:string): @static
---@static
---@param key string
---@param defaultValue string
---@return string
function m.GetString(key, defaultValue) end

---@static
---@param key string
---@return boolean
function m.HasKey(key) end

---@static
---@param key string
function m.DeleteKey(key) end

---@static
function m.DeleteAll() end

---@static
function m.Save() end

UnityEngine.PlayerPrefs = m
return m
