---@class System.Security.Cryptography.SHA1Internal : System.Object
local m = {}

---@param rgb string
---@param ibStart number
---@param cbSize number
function m:HashCore(rgb, ibStart, cbSize) end

---@return string
function m:HashFinal() end

function m:Initialize() end

System.Security.Cryptography.SHA1Internal = m
return m
