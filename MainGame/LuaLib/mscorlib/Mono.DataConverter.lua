---@class Mono.DataConverter : System.Object
---@field public IsLittleEndian boolean @static
---@field public LittleEndian Mono.DataConverter @static
---@field public BigEndian Mono.DataConverter @static
---@field public Native Mono.DataConverter @static
local m = {}

---@abstract
---@param data string
---@param index number
---@return number
function m:GetDouble(data, index) end

---@abstract
---@param data string
---@param index number
---@return number
function m:GetFloat(data, index) end

---@abstract
---@param data string
---@param index number
---@return number
function m:GetInt64(data, index) end

---@abstract
---@param data string
---@param index number
---@return number
function m:GetInt32(data, index) end

---@abstract
---@param data string
---@param index number
---@return number
function m:GetInt16(data, index) end

---@abstract
---@param data string
---@param index number
---@return number
function m:GetUInt32(data, index) end

---@abstract
---@param data string
---@param index number
---@return number
function m:GetUInt16(data, index) end

---@abstract
---@param data string
---@param index number
---@return number
function m:GetUInt64(data, index) end

---@overload fun(dest:string, destIdx:number, value:number) @abstract
---@overload fun(dest:string, destIdx:number, value:number) @abstract
---@overload fun(dest:string, destIdx:number, value:number) @abstract
---@overload fun(dest:string, destIdx:number, value:number) @abstract
---@overload fun(dest:string, destIdx:number, value:number) @abstract
---@overload fun(dest:string, destIdx:number, value:number) @abstract
---@overload fun(dest:string, destIdx:number, value:number) @abstract
---@abstract
---@param dest string
---@param destIdx number
---@param value number
function m:PutBytes(dest, destIdx, value) end

---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:number):
---@param value number
---@return string
function m:GetBytes(value) end

---@overload fun(description:string): @static
---@static
---@param description string
---@param ... any|any[]
---@return string
function m.Pack(description, ...) end

---@static
---@param description string
---@param args System.Collections.IEnumerable
---@return string
function m.PackEnumerable(description, args) end

---@static
---@param description string
---@param buffer string
---@param startIndex number
---@return System.Collections.IList
function m.Unpack(description, buffer, startIndex) end

Mono.DataConverter = m
return m
