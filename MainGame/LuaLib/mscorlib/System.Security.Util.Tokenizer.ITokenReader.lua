---@class System.Security.Util.Tokenizer.ITokenReader : table
local m = {}

---@abstract
---@return number
function m:Read() end

System.Security.Util.Tokenizer.ITokenReader = m
return m
