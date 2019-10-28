---@class System.IO.TextWriter.NullTextWriter : System.IO.TextWriter
---@field public Encoding System.Text.Encoding
local m = {}

---@overload fun(value:string) @virtual
---@virtual
---@param buffer number[]
---@param index number
---@param count number
function m:Write(buffer, index, count) end

---@overload fun(value:string) @virtual
---@overload fun(value:any) @virtual
---@virtual
function m:WriteLine() end

System.IO.TextWriter.NullTextWriter = m
return m
