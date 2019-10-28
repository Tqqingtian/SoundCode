---@class UnityEngine.Windows.File : System.Object
local m = {}

---@static
---@param path string
---@return string
function m.ReadAllBytes(path) end

---@static
---@param path string
---@param bytes string
function m.WriteAllBytes(path, bytes) end

---@static
---@param path string
---@return boolean
function m.Exists(path) end

---@static
---@param path string
function m.Delete(path) end

UnityEngine.Windows.File = m
return m
