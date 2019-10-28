---@class System.IO.TextReader.NullTextReader : System.IO.TextReader
local m = {}

---@virtual
---@param buffer number[]
---@param index number
---@param count number
---@return number
function m:Read(buffer, index, count) end

---@virtual
---@return string
function m:ReadLine() end

System.IO.TextReader.NullTextReader = m
return m
