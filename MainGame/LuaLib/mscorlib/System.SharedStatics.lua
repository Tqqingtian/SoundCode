---@class System.SharedStatics : System.Object
---@field public Remoting_Identity_IDGuid string @static
local m = {}

---@static
---@return System.Security.Util.Tokenizer.StringMaker
function m.GetSharedStringMaker() end

---@static
---@param maker System.Security.Util.Tokenizer.StringMaker
---@return System.Security.Util.Tokenizer.StringMaker
function m.ReleaseSharedStringMaker(maker) end

System.SharedStatics = m
return m
