---@class System.Collections.ArrayList : System.Object
---@field public Capacity number
---@field public Count number
---@field public IsFixedSize boolean
---@field public IsReadOnly boolean
---@field public IsSynchronized boolean
---@field public SyncRoot any
---@field public Item any
local m = {}

---@static
---@param list System.Collections.IList
---@return System.Collections.ArrayList
function m.Adapter(list) end

---@virtual
---@param value any
---@return number
function m:Add(value) end

---@virtual
---@param c System.Collections.ICollection
function m:AddRange(c) end

---@overload fun(value:any): @virtual
---@overload fun(value:any, comparer:System.Collections.IComparer): @virtual
---@virtual
---@param index number
---@param count number
---@param value any
---@param comparer System.Collections.IComparer
---@return number
function m:BinarySearch(index, count, value, comparer) end

---@virtual
function m:Clear() end

---@virtual
---@return any
function m:Clone() end

---@virtual
---@param item any
---@return boolean
function m:Contains(item) end

---@overload fun(array:System.Array, arrayIndex:number) @virtual
---@overload fun(index:number, array:System.Array, arrayIndex:number, count:number) @virtual
---@virtual
---@param array System.Array
function m:CopyTo(array) end

---@overload fun(list:System.Collections.ArrayList): @static
---@static
---@param list System.Collections.IList
---@return System.Collections.IList
function m.FixedSize(list) end

---@overload fun(index:number, count:number): @virtual
---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

---@overload fun(value:any, startIndex:number): @virtual
---@overload fun(value:any, startIndex:number, count:number): @virtual
---@virtual
---@param value any
---@return number
function m:IndexOf(value) end

---@virtual
---@param index number
---@param value any
function m:Insert(index, value) end

---@virtual
---@param index number
---@param c System.Collections.ICollection
function m:InsertRange(index, c) end

---@overload fun(value:any, startIndex:number): @virtual
---@overload fun(value:any, startIndex:number, count:number): @virtual
---@virtual
---@param value any
---@return number
function m:LastIndexOf(value) end

---@overload fun(list:System.Collections.ArrayList): @static
---@static
---@param list System.Collections.IList
---@return System.Collections.IList
function m.ReadOnly(list) end

---@virtual
---@param obj any
function m:Remove(obj) end

---@virtual
---@param index number
function m:RemoveAt(index) end

---@virtual
---@param index number
---@param count number
function m:RemoveRange(index, count) end

---@static
---@param value any
---@param count number
---@return System.Collections.ArrayList
function m.Repeat(value, count) end

---@overload fun(index:number, count:number) @virtual
---@virtual
function m:Reverse() end

---@virtual
---@param index number
---@param c System.Collections.ICollection
function m:SetRange(index, c) end

---@virtual
---@param index number
---@param count number
---@return System.Collections.ArrayList
function m:GetRange(index, count) end

---@overload fun(comparer:System.Collections.IComparer) @virtual
---@overload fun(index:number, count:number, comparer:System.Collections.IComparer) @virtual
---@virtual
function m:Sort() end

---@overload fun(list:System.Collections.ArrayList): @static
---@static
---@param list System.Collections.IList
---@return System.Collections.IList
function m.Synchronized(list) end

---@overload fun(type:System.Type): @virtual
---@virtual
---@return any[]
function m:ToArray() end

---@virtual
function m:TrimToSize() end

System.Collections.ArrayList = m
return m
