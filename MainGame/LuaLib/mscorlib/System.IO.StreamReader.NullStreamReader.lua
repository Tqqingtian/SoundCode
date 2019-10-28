---@class System.IO.StreamReader.NullStreamReader : System.IO.StreamReader
---@field public BaseStream System.IO.Stream
---@field public CurrentEncoding System.Text.Encoding
local m = {}

---@virtual
---@return number
function m:Peek() end

---@overload fun(buffer:number[], index:number, count:number): @virtual
---@virtual
---@return number
function m:Read() end

---@virtual
---@return string
function m:ReadLine() end

---@virtual
---@return string
function m:ReadToEnd() end

System.IO.StreamReader.NullStreamReader = m
return m
