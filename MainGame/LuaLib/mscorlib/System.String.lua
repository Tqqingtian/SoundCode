---@class System.String : System.Object
---@field public Empty string @static
---@field public Chars number
---@field public Length number
local m = {}

---@overload fun(separator:string): @static
---@overload fun(separator:string, ...:any|any[]): @static
---@overload fun(separator:string): @static
---@overload fun(separator:string, values:any): @static
---@overload fun(separator:string, values:System.Collections.Generic.IEnumerable_1_System_String_): @static
---@overload fun(separator:string, value:string[], startIndex:number, count:number): @static
---@static
---@param separator string
---@param ... string|string[]
---@return string
function m.Join(separator, ...) end

---@overload fun(value:string): @virtual
---@overload fun(value:string, comparisonType:System.StringComparison):
---@overload fun(a:string, b:string): @static
---@overload fun(a:string, b:string, comparisonType:System.StringComparison): @static
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a string
---@param b string
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a string
---@param b string
---@return boolean
function m.op_Inequality(a, b) end

---@param sourceIndex number
---@param destination number[]
---@param destinationIndex number
---@param count number
function m:CopyTo(sourceIndex, destination, destinationIndex, count) end

---@overload fun(startIndex:number, length:number):
---@return number[]
function m:ToCharArray() end

---@static
---@param value string
---@return boolean
function m.IsNullOrEmpty(value) end

---@static
---@param value string
---@return boolean
function m.IsNullOrWhiteSpace(value) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun():
---@overload fun(separator:number[], count:number):
---@overload fun(separator:number[], options:System.StringSplitOptions):
---@overload fun(separator:number[], count:number, options:System.StringSplitOptions):
---@overload fun(separator:string[], options:System.StringSplitOptions):
---@overload fun(separator:string[], count:number, options:System.StringSplitOptions):
---@param ... number|number[]
---@return string[]
function m:Split(...) end

---@overload fun(startIndex:number, length:number):
---@param startIndex number
---@return string
function m:Substring(startIndex) end

---@overload fun():
---@overload fun():
---@param ... number|number[]
---@return string
function m:Trim(...) end

---@overload fun():
---@param ... number|number[]
---@return string
function m:TrimStart(...) end

---@overload fun():
---@param ... number|number[]
---@return string
function m:TrimEnd(...) end

---@overload fun(normalizationForm:System.Text.NormalizationForm):
---@return boolean
function m:IsNormalized() end

---@overload fun(normalizationForm:System.Text.NormalizationForm):
---@return string
function m:Normalize() end

---@overload fun(strA:string, strB:string, ignoreCase:boolean): @static
---@overload fun(strA:string, strB:string, comparisonType:System.StringComparison): @static
---@overload fun(strA:string, strB:string, culture:System.Globalization.CultureInfo, options:System.Globalization.CompareOptions): @static
---@overload fun(strA:string, strB:string, ignoreCase:boolean, culture:System.Globalization.CultureInfo): @static
---@overload fun(strA:string, indexA:number, strB:string, indexB:number, length:number): @static
---@overload fun(strA:string, indexA:number, strB:string, indexB:number, length:number, ignoreCase:boolean): @static
---@overload fun(strA:string, indexA:number, strB:string, indexB:number, length:number, ignoreCase:boolean, culture:System.Globalization.CultureInfo): @static
---@overload fun(strA:string, indexA:number, strB:string, indexB:number, length:number, culture:System.Globalization.CultureInfo, options:System.Globalization.CompareOptions): @static
---@overload fun(strA:string, indexA:number, strB:string, indexB:number, length:number, comparisonType:System.StringComparison): @static
---@static
---@param strA string
---@param strB string
---@return number
function m.Compare(strA, strB) end

---@overload fun(strB:string): @virtual
---@virtual
---@param value any
---@return number
function m:CompareTo(value) end

---@overload fun(strA:string, indexA:number, strB:string, indexB:number, length:number): @static
---@static
---@param strA string
---@param strB string
---@return number
function m.CompareOrdinal(strA, strB) end

---@param value string
---@return boolean
function m:Contains(value) end

---@overload fun(value:string, comparisonType:System.StringComparison):
---@overload fun(value:string, ignoreCase:boolean, culture:System.Globalization.CultureInfo):
---@param value string
---@return boolean
function m:EndsWith(value) end

---@overload fun(value:number, startIndex:number):
---@overload fun(value:string):
---@overload fun(value:string, startIndex:number):
---@overload fun(value:string, startIndex:number, count:number):
---@overload fun(value:string, comparisonType:System.StringComparison):
---@overload fun(value:string, startIndex:number, comparisonType:System.StringComparison):
---@overload fun(value:string, startIndex:number, count:number, comparisonType:System.StringComparison):
---@overload fun(value:number, startIndex:number, count:number):
---@param value number
---@return number
function m:IndexOf(value) end

---@overload fun(anyOf:number[], startIndex:number):
---@overload fun(anyOf:number[], startIndex:number, count:number):
---@param anyOf number[]
---@return number
function m:IndexOfAny(anyOf) end

---@overload fun(value:number, startIndex:number):
---@overload fun(value:string):
---@overload fun(value:string, startIndex:number):
---@overload fun(value:string, startIndex:number, count:number):
---@overload fun(value:string, comparisonType:System.StringComparison):
---@overload fun(value:string, startIndex:number, comparisonType:System.StringComparison):
---@overload fun(value:string, startIndex:number, count:number, comparisonType:System.StringComparison):
---@overload fun(value:number, startIndex:number, count:number):
---@param value number
---@return number
function m:LastIndexOf(value) end

---@overload fun(anyOf:number[], startIndex:number):
---@overload fun(anyOf:number[], startIndex:number, count:number):
---@param anyOf number[]
---@return number
function m:LastIndexOfAny(anyOf) end

---@overload fun(totalWidth:number, paddingChar:number):
---@param totalWidth number
---@return string
function m:PadLeft(totalWidth) end

---@overload fun(totalWidth:number, paddingChar:number):
---@param totalWidth number
---@return string
function m:PadRight(totalWidth) end

---@overload fun(value:string, comparisonType:System.StringComparison):
---@overload fun(value:string, ignoreCase:boolean, culture:System.Globalization.CultureInfo):
---@param value string
---@return boolean
function m:StartsWith(value) end

---@overload fun(culture:System.Globalization.CultureInfo):
---@return string
function m:ToLower() end

---@return string
function m:ToLowerInvariant() end

---@overload fun(culture:System.Globalization.CultureInfo):
---@return string
function m:ToUpper() end

---@return string
function m:ToUpperInvariant() end

---@overload fun(provider:System.IFormatProvider): @virtual
---@virtual
---@return string
function m:ToString() end

---@virtual
---@return any
function m:Clone() end

---@param startIndex number
---@param value string
---@return string
function m:Insert(startIndex, value) end

---@overload fun(oldValue:string, newValue:string):
---@param oldChar number
---@param newChar number
---@return string
function m:Replace(oldChar, newChar) end

---@overload fun(startIndex:number):
---@param startIndex number
---@param count number
---@return string
function m:Remove(startIndex, count) end

---@overload fun(format:string, arg0:any, arg1:any): @static
---@overload fun(format:string, arg0:any, arg1:any, arg2:any): @static
---@overload fun(format:string, ...:any|any[]): @static
---@overload fun(format:string): @static
---@overload fun(provider:System.IFormatProvider, format:string, arg0:any): @static
---@overload fun(provider:System.IFormatProvider, format:string, arg0:any, arg1:any): @static
---@overload fun(provider:System.IFormatProvider, format:string, arg0:any, arg1:any, arg2:any): @static
---@overload fun(provider:System.IFormatProvider, format:string, ...:any|any[]): @static
---@overload fun(provider:System.IFormatProvider, format:string): @static
---@static
---@param format string
---@param arg0 any
---@return string
function m.Format(format, arg0) end

---@static
---@param str string
---@return string
function m.Copy(str) end

---@overload fun(arg0:any, arg1:any): @static
---@overload fun(arg0:any, arg1:any, arg2:any): @static
---@overload fun(arg0:any, arg1:any, arg2:any, arg3:any): @static
---@overload fun(...:any|any[]): @static
---@overload fun(): @static
---@overload fun(values:any): @static
---@overload fun(values:System.Collections.Generic.IEnumerable_1_System_String_): @static
---@overload fun(str0:string, str1:string): @static
---@overload fun(str0:string, str1:string, str2:string): @static
---@overload fun(str0:string, str1:string, str2:string, str3:string): @static
---@overload fun(...:string|string[]): @static
---@overload fun(): @static
---@static
---@param arg0 any
---@return string
function m.Concat(arg0) end

---@static
---@param str string
---@return string
function m.Intern(str) end

---@static
---@param str string
---@return string
function m.IsInterned(str) end

---@virtual
---@return System.TypeCode
function m:GetTypeCode() end

---@return System.CharEnumerator
function m:GetEnumerator() end

---@extension
---@return System.ReadOnlySpan_1_System_Char_
function m.AsReadOnlySpan() end

---@extension
---@return number
function m.ToInt() end

---@extension
---@return number
function m.ToLong() end

---@extension
---@return number
function m.ToFloat() end

System.String = m
return m
