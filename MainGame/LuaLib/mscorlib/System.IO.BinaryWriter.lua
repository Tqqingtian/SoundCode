---@class System.IO.BinaryWriter : System.Object
---@field public Null System.IO.BinaryWriter @static
---@field public BaseStream System.IO.Stream
local m = {}

---@virtual
function m:Close() end

---@virtual
function m:Dispose() end

---@virtual
function m:Flush() end

---@virtual
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function m:Seek(offset, origin) end

---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(buffer:string) @virtual
---@overload fun(buffer:string, index:number, count:number) @virtual
---@overload fun(ch:number) @virtual
---@overload fun(chars:number[]) @virtual
---@overload fun(chars:number[], index:number, count:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:System.Decimal) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:string) @virtual
---@virtual
---@param value boolean
function m:Write(value) end

System.IO.BinaryWriter = m
return m
