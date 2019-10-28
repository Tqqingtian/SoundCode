---@class System.ByteMatcher : System.Object
local m = {}

---@param key System.TermInfoStrings
---@param val string
function m:AddMapping(key, val) end

function m:Sort() end

---@param c number
---@return boolean
function m:StartsWith(c) end

---@param buffer number[]
---@param offset number
---@param length number
---@return System.TermInfoStrings, System.Int32
function m:Match(buffer, offset, length) end

System.ByteMatcher = m
return m
