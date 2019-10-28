---@class Mono.Globalization.Unicode.SimpleCollator : System.Object
local m = {}

---@overload fun(s:string, options:System.Globalization.CompareOptions):
---@overload fun(s:string, start:number, length:number, options:System.Globalization.CompareOptions):
---@param s string
---@return System.Globalization.SortKey
function m:GetSortKey(s) end

---@param s1 string
---@param s2 string
---@return number
function m:Compare(s1, s2) end

---@overload fun(s:string, target:string, start:number, length:number, opt:System.Globalization.CompareOptions):
---@param src string
---@param target string
---@param opt System.Globalization.CompareOptions
---@return boolean
function m:IsPrefix(src, target, opt) end

---@overload fun(s:string, target:string, start:number, length:number, opt:System.Globalization.CompareOptions):
---@param src string
---@param target string
---@param opt System.Globalization.CompareOptions
---@return boolean
function m:IsSuffix(src, target, opt) end

---@overload fun(s:string, target:string, start:number, length:number, opt:System.Globalization.CompareOptions):
---@overload fun(s:string, target:number, opt:System.Globalization.CompareOptions):
---@overload fun(s:string, target:number, start:number, length:number, opt:System.Globalization.CompareOptions):
---@param s string
---@param target string
---@param opt System.Globalization.CompareOptions
---@return number
function m:IndexOf(s, target, opt) end

---@overload fun(s:string, target:string, start:number, length:number, opt:System.Globalization.CompareOptions):
---@overload fun(s:string, target:number, opt:System.Globalization.CompareOptions):
---@overload fun(s:string, target:number, start:number, length:number, opt:System.Globalization.CompareOptions):
---@param s string
---@param target string
---@param opt System.Globalization.CompareOptions
---@return number
function m:LastIndexOf(s, target, opt) end

Mono.Globalization.Unicode.SimpleCollator = m
return m
