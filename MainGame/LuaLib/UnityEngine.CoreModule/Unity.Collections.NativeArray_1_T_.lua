---@class Unity.Collections.NativeArray_1_T_ : System.ValueType
---@field public Length number
---@field public Item System.ValueType
---@field public IsCreated boolean
local m = {}

---@virtual
function m:Dispose() end

---@overload fun(array:Unity.Collections.NativeArray_1_T_)
---@param array System.ValueType[]
function m:CopyFrom(array) end

---@overload fun(array:Unity.Collections.NativeArray_1_T_)
---@param array System.ValueType[]
function m:CopyTo(array) end

---@return System.ValueType[]
function m:ToArray() end

---@return System.ValueType
function m:GetEnumerator() end

---@overload fun(obj:any): @virtual
---@virtual
---@param other Unity.Collections.NativeArray_1_T_
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left Unity.Collections.NativeArray_1_T_
---@param right Unity.Collections.NativeArray_1_T_
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left Unity.Collections.NativeArray_1_T_
---@param right Unity.Collections.NativeArray_1_T_
---@return boolean
function m.op_Inequality(left, right) end

---@overload fun(src:System.ValueType[], dst:Unity.Collections.NativeArray_1_T_) @static
---@overload fun(src:Unity.Collections.NativeArray_1_T_, dst:System.ValueType[]) @static
---@overload fun(src:Unity.Collections.NativeArray_1_T_, dst:Unity.Collections.NativeArray_1_T_, length:number) @static
---@overload fun(src:System.ValueType[], dst:Unity.Collections.NativeArray_1_T_, length:number) @static
---@overload fun(src:Unity.Collections.NativeArray_1_T_, dst:System.ValueType[], length:number) @static
---@overload fun(src:Unity.Collections.NativeArray_1_T_, srcIndex:number, dst:Unity.Collections.NativeArray_1_T_, dstIndex:number, length:number) @static
---@overload fun(src:System.ValueType[], srcIndex:number, dst:Unity.Collections.NativeArray_1_T_, dstIndex:number, length:number) @static
---@overload fun(src:Unity.Collections.NativeArray_1_T_, srcIndex:number, dst:System.ValueType[], dstIndex:number, length:number) @static
---@static
---@param src Unity.Collections.NativeArray_1_T_
---@param dst Unity.Collections.NativeArray_1_T_
function m.Copy(src, dst) end

Unity.Collections.NativeArray_1_T_ = m
return m
