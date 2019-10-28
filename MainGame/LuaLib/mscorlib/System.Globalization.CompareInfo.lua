---@class System.Globalization.CompareInfo : System.Object
---@field public Name string
---@field public LCID number
---@field public Version System.Globalization.SortVersion
local m = {}

---@overload fun(name:string, assembly:System.Reflection.Assembly): @static
---@overload fun(culture:number): @static
---@overload fun(name:string): @static
---@static
---@param culture number
---@param assembly System.Reflection.Assembly
---@return System.Globalization.CompareInfo
function m.GetCompareInfo(culture, assembly) end

---@overload fun(text:string): @static
---@static
---@param ch number
---@return boolean
function m.IsSortable(ch) end

---@overload fun(string1:string, string2:string, options:System.Globalization.CompareOptions): @virtual
---@overload fun(string1:string, offset1:number, length1:number, string2:string, offset2:number, length2:number): @virtual
---@overload fun(string1:string, offset1:number, string2:string, offset2:number, options:System.Globalization.CompareOptions): @virtual
---@overload fun(string1:string, offset1:number, string2:string, offset2:number): @virtual
---@overload fun(string1:string, offset1:number, length1:number, string2:string, offset2:number, length2:number, options:System.Globalization.CompareOptions): @virtual
---@virtual
---@param string1 string
---@param string2 string
---@return number
function m:Compare(string1, string2) end

---@overload fun(source:string, prefix:string): @virtual
---@virtual
---@param source string
---@param prefix string
---@param options System.Globalization.CompareOptions
---@return boolean
function m:IsPrefix(source, prefix, options) end

---@overload fun(source:string, suffix:string): @virtual
---@virtual
---@param source string
---@param suffix string
---@param options System.Globalization.CompareOptions
---@return boolean
function m:IsSuffix(source, suffix, options) end

---@overload fun(source:string, value:string): @virtual
---@overload fun(source:string, value:number, options:System.Globalization.CompareOptions): @virtual
---@overload fun(source:string, value:string, options:System.Globalization.CompareOptions): @virtual
---@overload fun(source:string, value:number, startIndex:number): @virtual
---@overload fun(source:string, value:string, startIndex:number): @virtual
---@overload fun(source:string, value:number, startIndex:number, options:System.Globalization.CompareOptions): @virtual
---@overload fun(source:string, value:string, startIndex:number, options:System.Globalization.CompareOptions): @virtual
---@overload fun(source:string, value:number, startIndex:number, count:number): @virtual
---@overload fun(source:string, value:string, startIndex:number, count:number): @virtual
---@overload fun(source:string, value:number, startIndex:number, count:number, options:System.Globalization.CompareOptions): @virtual
---@overload fun(source:string, value:string, startIndex:number, count:number, options:System.Globalization.CompareOptions): @virtual
---@virtual
---@param source string
---@param value number
---@return number
function m:IndexOf(source, value) end

---@overload fun(source:string, value:string): @virtual
---@overload fun(source:string, value:number, options:System.Globalization.CompareOptions): @virtual
---@overload fun(source:string, value:string, options:System.Globalization.CompareOptions): @virtual
---@overload fun(source:string, value:number, startIndex:number): @virtual
---@overload fun(source:string, value:string, startIndex:number): @virtual
---@overload fun(source:string, value:number, startIndex:number, options:System.Globalization.CompareOptions): @virtual
---@overload fun(source:string, value:string, startIndex:number, options:System.Globalization.CompareOptions): @virtual
---@overload fun(source:string, value:number, startIndex:number, count:number): @virtual
---@overload fun(source:string, value:string, startIndex:number, count:number): @virtual
---@overload fun(source:string, value:number, startIndex:number, count:number, options:System.Globalization.CompareOptions): @virtual
---@overload fun(source:string, value:string, startIndex:number, count:number, options:System.Globalization.CompareOptions): @virtual
---@virtual
---@param source string
---@param value number
---@return number
function m:LastIndexOf(source, value) end

---@overload fun(source:string): @virtual
---@virtual
---@param source string
---@param options System.Globalization.CompareOptions
---@return System.Globalization.SortKey
function m:GetSortKey(source, options) end

---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@overload fun(source:string, options:System.Globalization.CompareOptions): @virtual
---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

---@extension
---@param options System.Globalization.CompareOptions
---@return System.StringComparer
function m.GetStringComparer(options) end

System.Globalization.CompareInfo = m
return m
