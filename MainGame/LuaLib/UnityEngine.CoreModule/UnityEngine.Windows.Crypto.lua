---@class UnityEngine.Windows.Crypto : System.Object
local m = {}

---@static
---@param buffer string
---@return string
function m.ComputeMD5Hash(buffer) end

---@static
---@param buffer string
---@return string
function m.ComputeSHA1Hash(buffer) end

UnityEngine.Windows.Crypto = m
return m
