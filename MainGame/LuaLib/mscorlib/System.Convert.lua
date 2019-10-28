---@class System.Convert : System.Object
---@field public DBNull any @static
local m = {}

---@static
---@param value any
---@return System.TypeCode
function m.GetTypeCode(value) end

---@static
---@param value any
---@return boolean
function m.IsDBNull(value) end

---@overload fun(value:any, typeCode:System.TypeCode, provider:System.IFormatProvider): @static
---@overload fun(value:any, conversionType:System.Type): @static
---@overload fun(value:any, conversionType:System.Type, provider:System.IFormatProvider): @static
---@static
---@param value any
---@param typeCode System.TypeCode
---@return any
function m.ChangeType(value, typeCode) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.DateTime): @static
---@static
---@param value any
---@return boolean
function m.ToBoolean(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.DateTime): @static
---@static
---@param value any
---@return number
function m.ToChar(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:System.DateTime): @static
---@overload fun(value:string, fromBase:number): @static
---@static
---@param value any
---@return number
function m.ToSByte(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:System.DateTime): @static
---@overload fun(value:string, fromBase:number): @static
---@static
---@param value any
---@return number
function m.ToByte(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:System.DateTime): @static
---@overload fun(value:string, fromBase:number): @static
---@static
---@param value any
---@return number
function m.ToInt16(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:System.DateTime): @static
---@overload fun(value:string, fromBase:number): @static
---@static
---@param value any
---@return number
function m.ToUInt16(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:System.DateTime): @static
---@overload fun(value:string, fromBase:number): @static
---@static
---@param value any
---@return number
function m.ToInt32(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:System.DateTime): @static
---@overload fun(value:string, fromBase:number): @static
---@static
---@param value any
---@return number
function m.ToUInt32(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:System.DateTime): @static
---@overload fun(value:string, fromBase:number): @static
---@static
---@param value any
---@return number
function m.ToInt64(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:System.DateTime): @static
---@overload fun(value:string, fromBase:number): @static
---@static
---@param value any
---@return number
function m.ToUInt64(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:System.DateTime): @static
---@static
---@param value any
---@return number
function m.ToSingle(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:System.DateTime): @static
---@static
---@param value any
---@return number
function m.ToDouble(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:boolean): @static
---@overload fun(value:System.DateTime): @static
---@static
---@param value any
---@return System.Decimal
function m.ToDecimal(value) end

---@overload fun(value:any): @static
---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:boolean): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@static
---@param value System.DateTime
---@return System.DateTime
function m.ToDateTime(value) end

---@overload fun(value:any, provider:System.IFormatProvider): @static
---@overload fun(value:boolean): @static
---@overload fun(value:boolean, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number, provider:System.IFormatProvider): @static
---@overload fun(value:number): @static
---@overload fun(value:number, provider:System.IFormatProvider): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.Decimal, provider:System.IFormatProvider): @static
---@overload fun(value:System.DateTime): @static
---@overload fun(value:System.DateTime, provider:System.IFormatProvider): @static
---@overload fun(value:string): @static
---@overload fun(value:string, provider:System.IFormatProvider): @static
---@overload fun(value:number, toBase:number): @static
---@overload fun(value:number, toBase:number): @static
---@overload fun(value:number, toBase:number): @static
---@overload fun(value:number, toBase:number): @static
---@static
---@param value any
---@return string
function m.ToString(value) end

---@overload fun(inArray:string, options:System.Base64FormattingOptions): @static
---@overload fun(inArray:string, offset:number, length:number): @static
---@overload fun(inArray:string, offset:number, length:number, options:System.Base64FormattingOptions): @static
---@static
---@param inArray string
---@return string
function m.ToBase64String(inArray) end

---@overload fun(inArray:string, offsetIn:number, length:number, outArray:number[], offsetOut:number, options:System.Base64FormattingOptions): @static
---@static
---@param inArray string
---@param offsetIn number
---@param length number
---@param outArray number[]
---@param offsetOut number
---@return number
function m.ToBase64CharArray(inArray, offsetIn, length, outArray, offsetOut) end

---@static
---@param s string
---@return string
function m.FromBase64String(s) end

---@static
---@param inArray number[]
---@param offset number
---@param length number
---@return string
function m.FromBase64CharArray(inArray, offset, length) end

System.Convert = m
return m
