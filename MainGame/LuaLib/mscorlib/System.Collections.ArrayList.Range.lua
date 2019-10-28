---@class System.Collections.ArrayList.Range : System.Collections.ArrayList
---@field public Capacity number
---@field public Count number
---@field public IsReadOnly boolean
---@field public IsFixedSize boolean
---@field public IsSynchronized boolean
---@field public SyncRoot any
---@field public Item any
local m = {}

---@virtual
---@param value any
---@return number
function m:Add(value) end

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
---@param item any
---@return boolean
function m:Contains(item) end

---@overload fun(index:number, array:System.Array, arrayIndex:number, count:number) @virtual
---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

---@overload fun(index:number, count:number): @virtual
---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

---@virtual
---@param index number
---@param count number
---@return System.Collections.ArrayList
function m:GetRange(index, count) end

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

---@virtual
---@param index number
function m:RemoveAt(index) end

---@virtual
---@param index number
---@param count number
function m:RemoveRange(index, count) end

---@virtual
---@param index number
---@param count number
function m:Reverse(index, count) end

---@virtual
---@param index number
---@param c System.Collections.ICollection
function m:SetRange(index, c) end

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

System.Collections.ArrayList.Range = m
return m
