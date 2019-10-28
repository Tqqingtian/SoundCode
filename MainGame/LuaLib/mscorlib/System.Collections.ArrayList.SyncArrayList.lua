---@class System.Collections.ArrayList.SyncArrayList : System.Collections.ArrayList
---@field public Capacity number
---@field public Count number
---@field public IsReadOnly boolean
---@field public IsFixedSize boolean
---@field public IsSynchronized boolean
---@field public Item any
---@field public SyncRoot any
local m = {}

---@virtual
---@param value any
---@return number
function m:Add(value) end

---@virtual
---@param c System.Collections.ICollection
function m:AddRange(c) end

---@overload fun(value:any, comparer:System.Collections.IComparer): @virtual
---@overload fun(index:number, count:number, value:any, comparer:System.Collections.IComparer): @virtual
---@virtual
---@param value any
---@return number
function m:BinarySearch(value) end

---@virtual
function m:Clear() end

---@virtual
---@return any
function m:Clone() end

---@virtual
---@param item any
---@return boolean
function m:Contains(item) end

---@overload fun(array:System.Array, index:number) @virtual
---@overload fun(index:number, array:System.Array, arrayIndex:number, count:number) @virtual
---@virtual
---@param array System.Array
function m:CopyTo(array) end

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
---@param count number
function m:Reverse(index, count) end

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

---@overload fun(type:System.Type): @virtual
---@virtual
---@return any[]
function m:ToArray() end

---@virtual
function m:TrimToSize() end

System.Collections.ArrayList.SyncArrayList = m
return m
