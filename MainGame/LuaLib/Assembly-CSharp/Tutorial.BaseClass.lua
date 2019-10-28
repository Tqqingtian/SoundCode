---@class Tutorial.BaseClass : System.Object
---@field public BSF number @static
---@field public BMF number
local m = {}

---@static
function m.BSFunc() end

function m:BMFunc() end

---@extension
---@return number
function m.GetSomeBaseData() end

Tutorial.BaseClass = m
return m
