---@class System.Array : System.Object
---@field public LongLength number
---@field public IsFixedSize boolean
---@field public IsReadOnly boolean
---@field public IsSynchronized boolean
---@field public SyncRoot any
---@field public Length number
---@field public Rank number
local m = {}

---@overload fun(elementType:System.Type): @static
---@overload fun(elementType:System.Type, length:number): @static
---@overload fun(elementType:System.Type, length1:number, length2:number): @static
---@overload fun(elementType:System.Type, length1:number, length2:number, length3:number): @static
---@overload fun(elementType:System.Type, ...:number|number[]): @static
---@overload fun(elementType:System.Type): @static
---@overload fun(elementType:System.Type, lengths:number[], lowerBounds:number[]): @static
---@static
---@param elementType System.Type
---@param ... number|number[]
---@return System.Array
function m.CreateInstance(elementType, ...) end

---@static
---@param array any[]
---@return any[]
function m.AsReadOnly(array) end

---@static
---@param array T__
---@param newSize number
---@return T__
function m.Resize(array, newSize) end

---@overload fun(array:System.Array, index:number)
---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

---@virtual
---@return any
function m:Clone() end

---@overload fun(array:System.Array, index:number, length:number, value:any): @static
---@overload fun(array:System.Array, value:any, comparer:System.Collections.IComparer): @static
---@overload fun(array:System.Array, index:number, length:number, value:any, comparer:System.Collections.IComparer): @static
---@overload fun(array:any[], value:any): @static
---@overload fun(array:any[], value:any, comparer:any): @static
---@overload fun(array:any[], index:number, length:number, value:any): @static
---@overload fun(array:any[], index:number, length:number, value:any, comparer:any): @static
---@static
---@param array System.Array
---@param value any
---@return number
function m.BinarySearch(array, value) end

---@static
---@param array any[]
---@param converter fun(input:any):
---@return any[]
function m.ConvertAll(array, converter) end

---@overload fun(sourceArray:System.Array, sourceIndex:number, destinationArray:System.Array, destinationIndex:number, length:number) @static
---@overload fun(sourceArray:System.Array, destinationArray:System.Array, length:number) @static
---@overload fun(sourceArray:System.Array, sourceIndex:number, destinationArray:System.Array, destinationIndex:number, length:number) @static
---@static
---@param sourceArray System.Array
---@param destinationArray System.Array
---@param length number
function m.Copy(sourceArray, destinationArray, length) end

---@static
---@param array any[]
---@param action fun(obj:any)
function m.ForEach(array, action) end

---@param dimension number
---@return number
function m:GetLongLength(dimension) end

---@overload fun(index1:number, index2:number):
---@overload fun(index1:number, index2:number, index3:number):
---@overload fun(...:number|number[]):
---@overload fun():
---@overload fun(...:number|number[]):
---@overload fun():
---@overload fun(index:number):
---@overload fun(index1:number, index2:number):
---@overload fun(index1:number, index2:number, index3:number):
---@param index number
---@return any
function m:GetValue(index) end

---@overload fun(array:System.Array, value:any, startIndex:number): @static
---@overload fun(array:System.Array, value:any, startIndex:number, count:number): @static
---@overload fun(array:any[], value:any): @static
---@overload fun(array:any[], value:any, startIndex:number): @static
---@overload fun(array:any[], value:any, startIndex:number, count:number): @static
---@static
---@param array System.Array
---@param value any
---@return number
function m.IndexOf(array, value) end

---@overload fun(array:System.Array, value:any, startIndex:number): @static
---@overload fun(array:System.Array, value:any, startIndex:number, count:number): @static
---@overload fun(array:any[], value:any): @static
---@overload fun(array:any[], value:any, startIndex:number): @static
---@overload fun(array:any[], value:any, startIndex:number, count:number): @static
---@static
---@param array System.Array
---@param value any
---@return number
function m.LastIndexOf(array, value) end

---@overload fun(array:System.Array, index:number, length:number) @static
---@overload fun(array:any[]) @static
---@overload fun(array:any[], index:number, length:number) @static
---@static
---@param array System.Array
function m.Reverse(array) end

---@overload fun(value:any, index1:number, index2:number)
---@overload fun(value:any, index1:number, index2:number, index3:number)
---@overload fun(value:any, ...:number|number[])
---@overload fun(value:any)
---@overload fun(value:any, ...:number|number[])
---@overload fun(value:any)
---@overload fun(value:any, index:number)
---@overload fun(value:any, index1:number, index2:number)
---@overload fun(value:any, index1:number, index2:number, index3:number)
---@param value any
---@param index number
function m:SetValue(value, index) end

---@overload fun(array:System.Array, index:number, length:number) @static
---@overload fun(array:System.Array, comparer:System.Collections.IComparer) @static
---@overload fun(array:System.Array, index:number, length:number, comparer:System.Collections.IComparer) @static
---@overload fun(keys:System.Array, items:System.Array) @static
---@overload fun(keys:System.Array, items:System.Array, comparer:System.Collections.IComparer) @static
---@overload fun(keys:System.Array, items:System.Array, index:number, length:number) @static
---@overload fun(keys:System.Array, items:System.Array, index:number, length:number, comparer:System.Collections.IComparer) @static
---@overload fun(array:any[]) @static
---@overload fun(array:any[], index:number, length:number) @static
---@overload fun(array:any[], comparer:any) @static
---@overload fun(array:any[], index:number, length:number, comparer:any) @static
---@overload fun(array:any[], comparison:fun(x:any, y:any):) @static
---@overload fun(keys:any[], items:any[]) @static
---@overload fun(keys:any[], items:any[], index:number, length:number) @static
---@overload fun(keys:any[], items:any[], comparer:any) @static
---@overload fun(keys:any[], items:any[], index:number, length:number, comparer:any) @static
---@static
---@param array System.Array
function m.Sort(array) end

---@static
---@param array any[]
---@param match fun(obj:any):
---@return boolean
function m.Exists(array, match) end

---@overload fun(array:any[], value:any, startIndex:number, count:number) @static
---@static
---@param array any[]
---@param value any
function m.Fill(array, value) end

---@static
---@param array any[]
---@param match fun(obj:any):
---@return any
function m.Find(array, match) end

---@static
---@param array any[]
---@param match fun(obj:any):
---@return any[]
function m.FindAll(array, match) end

---@overload fun(array:any[], startIndex:number, match:fun(obj:any):): @static
---@overload fun(array:any[], startIndex:number, count:number, match:fun(obj:any):): @static
---@static
---@param array any[]
---@param match fun(obj:any):
---@return number
function m.FindIndex(array, match) end

---@static
---@param array any[]
---@param match fun(obj:any):
---@return any
function m.FindLast(array, match) end

---@overload fun(array:any[], startIndex:number, match:fun(obj:any):): @static
---@overload fun(array:any[], startIndex:number, count:number, match:fun(obj:any):): @static
---@static
---@param array any[]
---@param match fun(obj:any):
---@return number
function m.FindLastIndex(array, match) end

---@static
---@param array any[]
---@param match fun(obj:any):
---@return boolean
function m.TrueForAll(array, match) end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

---@param dimension number
---@return number
function m:GetLength(dimension) end

---@param dimension number
---@return number
function m:GetLowerBound(dimension) end

---@param dimension number
---@return number
function m:GetUpperBound(dimension) end

---@static
---@param array System.Array
---@param index number
---@param length number
function m.Clear(array, index, length) end

---@static
---@param sourceArray System.Array
---@param sourceIndex number
---@param destinationArray System.Array
---@param destinationIndex number
---@param length number
function m.ConstrainedCopy(sourceArray, sourceIndex, destinationArray, destinationIndex, length) end

---@static
---@return any[]
function m.Empty() end

function m:Initialize() end

System.Array = m
return m
