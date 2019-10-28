---@class System.IO.UnexceptionalStreamWriter : System.IO.StreamWriter
local m = {}

---@virtual
function m:Flush() end

---@overload fun(value:number) @virtual
---@overload fun(value:number[]) @virtual
---@overload fun(value:string) @virtual
---@virtual
---@param buffer number[]
---@param index number
---@param count number
function m:Write(buffer, index, count) end

System.IO.UnexceptionalStreamWriter = m
return m
