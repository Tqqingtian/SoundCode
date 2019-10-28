---@class System.Collections.Generic.List_1_T_ : System.Object
---@field public Capacity number
---@field public Count number
---@field public Item any
local m = {}

---@virtual
---@param item any
function m:Add(item) end

---@param collection any
function m:AddRange(collection) end

---@return any[]
function m:AsReadOnly() end

---@overload fun(item:any):
---@overload fun(item:any, comparer:any):
---@param index number
---@param count number
---@param item any
---@param comparer any
---@return number
function m:BinarySearch(index, count, item, comparer) end

---@virtual
function m:Clear() end

---@virtual
---@param item any
---@return boolean
function m:Contains(item) end

---@param converter fun(input:any):
---@return any[]
function m:ConvertAll(converter) end

---@overload fun(index:number, array:any[], arrayIndex:number, count:number)
---@overload fun(array:any[], arrayIndex:number) @virtual
---@param array any[]
function m:CopyTo(array) end

---@param match fun(obj:any):
---@return boolean
function m:Exists(match) end

---@param match fun(obj:any):
---@return any
function m:Find(match) end

---@param match fun(obj:any):
---@return any[]
function m:FindAll(match) end

---@overload fun(startIndex:number, match:fun(obj:any):):
---@overload fun(startIndex:number, count:number, match:fun(obj:any):):
---@param match fun(obj:any):
---@return number
function m:FindIndex(match) end

---@param match fun(obj:any):
---@return any
function m:FindLast(match) end

---@overload fun(startIndex:number, match:fun(obj:any):):
---@overload fun(startIndex:number, count:number, match:fun(obj:any):):
---@param match fun(obj:any):
---@return number
function m:FindLastIndex(match) end

---@param action fun(obj:any)
function m:ForEach(action) end

---@return System.ValueType
function m:GetEnumerator() end

---@param index number
---@param count number
---@return any[]
function m:GetRange(index, count) end

---@overload fun(item:any, index:number):
---@overload fun(item:any, index:number, count:number):
---@virtual
---@param item any
---@return number
function m:IndexOf(item) end

---@virtual
---@param index number
---@param item any
function m:Insert(index, item) end

---@param index number
---@param collection any
function m:InsertRange(index, collection) end

---@overload fun(item:any, index:number):
---@overload fun(item:any, index:number, count:number):
---@param item any
---@return number
function m:LastIndexOf(item) end

---@virtual
---@param item any
---@return boolean
function m:Remove(item) end

---@param match fun(obj:any):
---@return number
function m:RemoveAll(match) end

---@virtual
---@param index number
function m:RemoveAt(index) end

---@param index number
---@param count number
function m:RemoveRange(index, count) end

---@overload fun(index:number, count:number)
function m:Reverse() end

---@overload fun(comparer:any)
---@overload fun(index:number, count:number, comparer:any)
---@overload fun(comparison:fun(x:any, y:any):)
function m:Sort() end

---@return any[]
function m:ToArray() end

function m:TrimExcess() end

---@param match fun(obj:any):
---@return boolean
function m:TrueForAll(match) end

System.Collections.Generic.List_1_T_ = m
return m
