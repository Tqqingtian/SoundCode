---@class System.IO.CStreamWriter : System.IO.StreamWriter
local m = {}

---@overload fun(val:number) @virtual
---@overload fun(val:number[]) @virtual
---@overload fun(val:string) @virtual
---@virtual
---@param buffer number[]
---@param index number
---@param count number
function m:Write(buffer, index, count) end

---@param val string
function m:InternalWriteString(val) end

---@param val number
function m:InternalWriteChar(val) end

---@param buffer number[]
---@param n number
function m:InternalWriteChars(buffer, n) end

System.IO.CStreamWriter = m
return m
