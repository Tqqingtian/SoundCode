---@class System.Collections.ArrayList.FixedSizeArrayList : System.Collections.ArrayList
---@field public Count number
---@field public IsReadOnly boolean
---@field public IsFixedSize boolean
---@field public IsSynchronized boolean
---@field public Item any
---@field public SyncRoot any
---@field public Capacity number
local m = {}

---@virtual
---@param obj any
---@return number
function m:Add(obj) end

---@virtual
---@param c System.Collections.ICollection
function m:AddRange(c) end

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
---@param obj any
---@return boolean
function m:Contains(obj) end

---@overload fun(index:number, array:System.Array, arrayIndex:number, count:number) @virtual
---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

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
---@param obj any
function m:Insert(index, obj) end

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

---@virtual
---@param value any
function m:Remove(value) end

---@virtual
---@param index number
function m:RemoveAt(index) end

---@virtual
---@param index number
---@param count number
function m:RemoveRange(index, count) end

---@virtual
---@param index number
---@param c System.Collections.ICollection
function m:SetRange(index, c) end

---@virtual
---@param index number
---@param count number
---@return System.Collections.ArrayList
function m:GetRange(index, count) end

---@virtual
---@param index number
---@param count number
function m:Reverse(index, count) end

---@virtual
---@param index number
---@param count number
---@param comparer System.Collections.IComparer
function m:Sort(index, count, comparer) end

---@overload fun(type:System.Type): @virtual
---@virtual
---@return any[]
function m:ToArray() end

---@virtual
function m:TrimToSize() end

System.Collections.ArrayList.FixedSizeArrayList = m
return m
