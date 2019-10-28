---@class System.Text.StringBuilder : System.Object
---@field public Capacity number
---@field public MaxCapacity number
---@field public Length number
---@field public Chars number
local m = {}

---@param capacity number
---@return number
function m:EnsureCapacity(capacity) end

---@overload fun(startIndex:number, length:number):
---@virtual
---@return string
function m:ToString() end

---@return System.Text.StringBuilder
function m:Clear() end

---@overload fun(value:number[], startIndex:number, charCount:number):
---@overload fun(value:string):
---@overload fun(value:string, startIndex:number, count:number):
---@overload fun(value:boolean):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:System.Decimal):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:number):
---@overload fun(value:any):
---@overload fun(value:number[]):
---@overload fun(value:System.Char*, valueCount:number):
---@param value number
---@param repeatCount number
---@return System.Text.StringBuilder
function m:Append(value, repeatCount) end

---@overload fun(value:string):
---@return System.Text.StringBuilder
function m:AppendLine() end

---@param sourceIndex number
---@param destination number[]
---@param destinationIndex number
---@param count number
function m:CopyTo(sourceIndex, destination, destinationIndex, count) end

---@overload fun(index:number, value:string):
---@overload fun(index:number, value:boolean):
---@overload fun(index:number, value:number):
---@overload fun(index:number, value:number):
---@overload fun(index:number, value:number):
---@overload fun(index:number, value:number):
---@overload fun(index:number, value:number[]):
---@overload fun(index:number, value:number[], startIndex:number, charCount:number):
---@overload fun(index:number, value:number):
---@overload fun(index:number, value:number):
---@overload fun(index:number, value:number):
---@overload fun(index:number, value:number):
---@overload fun(index:number, value:System.Decimal):
---@overload fun(index:number, value:number):
---@overload fun(index:number, value:number):
---@overload fun(index:number, value:number):
---@overload fun(index:number, value:any):
---@param index number
---@param value string
---@param count number
---@return System.Text.StringBuilder
function m:Insert(index, value, count) end

---@param startIndex number
---@param length number
---@return System.Text.StringBuilder
function m:Remove(startIndex, length) end

---@overload fun(format:string, arg0:any, arg1:any):
---@overload fun(format:string, arg0:any, arg1:any, arg2:any):
---@overload fun(format:string, ...:any|any[]):
---@overload fun(format:string):
---@overload fun(provider:System.IFormatProvider, format:string, arg0:any):
---@overload fun(provider:System.IFormatProvider, format:string, arg0:any, arg1:any):
---@overload fun(provider:System.IFormatProvider, format:string, arg0:any, arg1:any, arg2:any):
---@overload fun(provider:System.IFormatProvider, format:string, ...:any|any[]):
---@overload fun(provider:System.IFormatProvider, format:string):
---@param format string
---@param arg0 any
---@return System.Text.StringBuilder
function m:AppendFormat(format, arg0) end

---@overload fun(oldValue:string, newValue:string, startIndex:number, count:number):
---@overload fun(oldChar:number, newChar:number):
---@overload fun(oldChar:number, newChar:number, startIndex:number, count:number):
---@param oldValue string
---@param newValue string
---@return System.Text.StringBuilder
function m:Replace(oldValue, newValue) end

---@param sb System.Text.StringBuilder
---@return boolean
function m:Equals(sb) end

System.Text.StringBuilder = m
return m
