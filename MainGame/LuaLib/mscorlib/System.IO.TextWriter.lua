---@class System.IO.TextWriter : System.MarshalByRefObject
---@field public Null System.IO.TextWriter @static
---@field public FormatProvider System.IFormatProvider
---@field public Encoding System.Text.Encoding
---@field public NewLine string
local m = {}

---@virtual
function m:Close() end

---@virtual
function m:Dispose() end

---@virtual
function m:Flush() end

---@static
---@param writer System.IO.TextWriter
---@return System.IO.TextWriter
function m.Synchronized(writer) end

---@overload fun(buffer:number[]) @virtual
---@overload fun(buffer:number[], index:number, count:number) @virtual
---@overload fun(value:boolean) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:System.Decimal) @virtual
---@overload fun(value:string) @virtual
---@overload fun(value:any) @virtual
---@overload fun(format:string, arg0:any) @virtual
---@overload fun(format:string, arg0:any, arg1:any) @virtual
---@overload fun(format:string, arg0:any, arg1:any, arg2:any) @virtual
---@overload fun(format:string, ...:any|any[]) @virtual
---@overload fun(format:string) @virtual
---@virtual
---@param value number
function m:Write(value) end

---@overload fun(value:number) @virtual
---@overload fun(buffer:number[]) @virtual
---@overload fun(buffer:number[], index:number, count:number) @virtual
---@overload fun(value:boolean) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:number) @virtual
---@overload fun(value:System.Decimal) @virtual
---@overload fun(value:string) @virtual
---@overload fun(value:any) @virtual
---@overload fun(format:string, arg0:any) @virtual
---@overload fun(format:string, arg0:any, arg1:any) @virtual
---@overload fun(format:string, arg0:any, arg1:any, arg2:any) @virtual
---@overload fun(format:string, ...:any|any[]) @virtual
---@overload fun(format:string) @virtual
---@virtual
function m:WriteLine() end

---@overload fun(value:string): @virtual
---@overload fun(buffer:number[]):
---@overload fun(buffer:number[], index:number, count:number): @virtual
---@virtual
---@param value number
---@return System.Threading.Tasks.Task
function m:WriteAsync(value) end

---@overload fun(value:string): @virtual
---@overload fun(buffer:number[]):
---@overload fun(buffer:number[], index:number, count:number): @virtual
---@overload fun(): @virtual
---@virtual
---@param value number
---@return System.Threading.Tasks.Task
function m:WriteLineAsync(value) end

---@virtual
---@return System.Threading.Tasks.Task
function m:FlushAsync() end

System.IO.TextWriter = m
return m
