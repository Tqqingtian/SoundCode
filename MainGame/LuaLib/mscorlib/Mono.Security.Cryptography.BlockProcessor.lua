---@class Mono.Security.Cryptography.BlockProcessor : System.Object
local m = {}

function m:Initialize() end

---@overload fun(rgb:string, ib:number, cb:number)
---@param rgb string
function m:Core(rgb) end

---@return string
function m:Final() end

Mono.Security.Cryptography.BlockProcessor = m
return m
