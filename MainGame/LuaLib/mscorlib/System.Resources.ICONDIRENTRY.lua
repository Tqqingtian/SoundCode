---@class System.Resources.ICONDIRENTRY : System.Object
---@field public bWidth number
---@field public bHeight number
---@field public bColorCount number
---@field public bReserved number
---@field public wPlanes number
---@field public wBitCount number
---@field public dwBytesInRes number
---@field public dwImageOffset number
---@field public image string
local m = {}

---@virtual
---@return string
function m:ToString() end

System.Resources.ICONDIRENTRY = m
return m
