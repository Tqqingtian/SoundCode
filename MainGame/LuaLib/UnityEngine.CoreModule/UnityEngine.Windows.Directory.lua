---@class UnityEngine.Windows.Directory : System.Object
---@field public temporaryFolder string @static
---@field public localFolder string @static
---@field public roamingFolder string @static
local m = {}

---@static
---@param path string
function m.CreateDirectory(path) end

---@static
---@param path string
---@return boolean
function m.Exists(path) end

---@static
---@param path string
function m.Delete(path) end

UnityEngine.Windows.Directory = m
return m
