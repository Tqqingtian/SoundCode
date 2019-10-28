---@class Mono.DataConverter.CopyConverter : Mono.DataConverter
local m = {}

---@virtual
---@param data string
---@param index number
---@return number
function m:GetDouble(data, index) end

---@virtual
---@param data string
---@param index number
---@return number
function m:GetUInt64(data, index) end

---@virtual
---@param data string
---@param index number
---@return number
function m:GetInt64(data, index) end

---@virtual
---@param data string
---@param index number
---@return number
function m:GetFloat(data, index) end

---@virtual
---@param data string
---@param index number
---@return number
function m:GetInt32(data, index) end

---@virtual
---@param data string
---@param index number
---@return number
function m:GetUInt32(data, index) end

---@virtual
---@param data string
---@param index number
---@return number
function m:GetInt16(data, index) end

---@virtual
---@param data string
---@param index number
---@return number
function m:GetUInt16(data, index) end

---@overload fun(dest:string, destIdx:number, value:number) @virtual
---@overload fun(dest:string, destIdx:number, value:number) @virtual
---@overload fun(dest:string, destIdx:number, value:number) @virtual
---@overload fun(dest:string, destIdx:number, value:number) @virtual
---@overload fun(dest:string, destIdx:number, value:number) @virtual
---@overload fun(dest:string, destIdx:number, value:number) @virtual
---@overload fun(dest:string, destIdx:number, value:number) @virtual
---@virtual
---@param dest string
---@param destIdx number
---@param value number
function m:PutBytes(dest, destIdx, value) end

Mono.DataConverter.CopyConverter = m
return m
