---@class System.Char : System.ValueType
---@field public MaxValue number @static
---@field public MinValue number @static
local m = {}

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(obj:number): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@overload fun(value:number): @virtual
---@virtual
---@param value any
---@return number
function m:CompareTo(value) end

---@overload fun(provider:System.IFormatProvider): @virtual
---@overload fun(c:number): @static
---@virtual
---@return string
function m:ToString() end

---@static
---@param s string
---@return number
function m.Parse(s) end

---@static
---@param s string
---@return boolean, System.Char
function m.TryParse(s) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsDigit(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsLetter(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsWhiteSpace(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsUpper(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsLower(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsPunctuation(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsLetterOrDigit(c) end

---@overload fun(c:number): @static
---@static
---@param c number
---@param culture System.Globalization.CultureInfo
---@return number
function m.ToUpper(c, culture) end

---@static
---@param c number
---@return number
function m.ToUpperInvariant(c) end

---@overload fun(c:number): @static
---@static
---@param c number
---@param culture System.Globalization.CultureInfo
---@return number
function m.ToLower(c, culture) end

---@static
---@param c number
---@return number
function m.ToLowerInvariant(c) end

---@virtual
---@return System.TypeCode
function m:GetTypeCode() end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsControl(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsNumber(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsSeparator(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsSurrogate(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsSymbol(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return System.Globalization.UnicodeCategory
function m.GetUnicodeCategory(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return number
function m.GetNumericValue(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsHighSurrogate(c) end

---@overload fun(s:string, index:number): @static
---@static
---@param c number
---@return boolean
function m.IsLowSurrogate(c) end

---@overload fun(highSurrogate:number, lowSurrogate:number): @static
---@static
---@param s string
---@param index number
---@return boolean
function m.IsSurrogatePair(s, index) end

---@static
---@param utf32 number
---@return string
function m.ConvertFromUtf32(utf32) end

---@overload fun(s:string, index:number): @static
---@static
---@param highSurrogate number
---@param lowSurrogate number
---@return number
function m.ConvertToUtf32(highSurrogate, lowSurrogate) end

System.Char = m
return m
