---@class System.SpanExtensions : System.Object
local m = {}

---@overload fun(source:System.ValueType): @static
---@static
---@param source System.ValueType
---@return System.Span_1_System_Byte_
function m.AsBytes(source) end

---@overload fun(array:any[]): @static
---@overload fun(arraySegment:any[]): @static
---@static
---@param text string
---@return System.ReadOnlySpan_1_System_Char_
function m.AsReadOnlySpan(text) end

---@overload fun(source:System.ValueType): @static
---@static
---@param source System.ValueType
---@return System.ValueType
function m.NonPortableCast(source) end

---@overload fun(span:System.Span_1_System_Byte_, value:number): @static
---@overload fun(span:System.ValueType, value:System.ValueType): @static
---@overload fun(span:System.Span_1_System_Byte_, value:System.ReadOnlySpan_1_System_Byte_): @static
---@overload fun(span:System.ValueType, value:System.ValueType): @static
---@overload fun(span:System.ReadOnlySpan_1_System_Byte_, value:number): @static
---@overload fun(span:System.ValueType, value:System.ValueType): @static
---@overload fun(span:System.ReadOnlySpan_1_System_Byte_, value:System.ReadOnlySpan_1_System_Byte_): @static
---@static
---@param span System.ValueType
---@param value System.ValueType
---@return number
function m.IndexOf(span, value) end

---@overload fun(first:System.Span_1_System_Byte_, second:System.ReadOnlySpan_1_System_Byte_): @static
---@overload fun(first:System.ValueType, second:System.ValueType): @static
---@overload fun(first:System.ReadOnlySpan_1_System_Byte_, second:System.ReadOnlySpan_1_System_Byte_): @static
---@static
---@param first System.ValueType
---@param second System.ValueType
---@return boolean
function m.SequenceEqual(first, second) end

---@overload fun(span:System.Span_1_System_Byte_, value0:number, value1:number, value2:number): @static
---@overload fun(span:System.Span_1_System_Byte_, values:System.ReadOnlySpan_1_System_Byte_): @static
---@overload fun(span:System.ReadOnlySpan_1_System_Byte_, value0:number, value1:number): @static
---@overload fun(span:System.ReadOnlySpan_1_System_Byte_, value0:number, value1:number, value2:number): @static
---@overload fun(span:System.ReadOnlySpan_1_System_Byte_, values:System.ReadOnlySpan_1_System_Byte_): @static
---@static
---@param span System.Span_1_System_Byte_
---@param value0 number
---@param value1 number
---@return number
function m.IndexOfAny(span, value0, value1) end

---@overload fun(span:System.ValueType, value:System.ValueType): @static
---@overload fun(span:System.ReadOnlySpan_1_System_Byte_, value:System.ReadOnlySpan_1_System_Byte_): @static
---@overload fun(span:System.ValueType, value:System.ValueType): @static
---@static
---@param span System.Span_1_System_Byte_
---@param value System.ReadOnlySpan_1_System_Byte_
---@return boolean
function m.StartsWith(span, value) end

---@overload fun(arraySegment:any[]): @static
---@static
---@param array any[]
---@return System.ValueType
function m.AsSpan(array) end

---@static
---@param array any[]
---@param destination System.ValueType
function m.CopyTo(array, destination) end

System.SpanExtensions = m
return m
