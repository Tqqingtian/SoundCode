---@class System.Security.Util.Tokenizer.StringMaker : System.Object
---@field public outMaxSize number @static
---@field public _outStringBuilder System.Text.StringBuilder
---@field public _outChars number[]
---@field public _outIndex number
local m = {}

---@return string
function m:MakeString() end

System.Security.Util.Tokenizer.StringMaker = m
return m
