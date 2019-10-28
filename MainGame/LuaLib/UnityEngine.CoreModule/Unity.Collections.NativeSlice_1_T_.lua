---@class Unity.Collections.NativeSlice_1_T_ : System.ValueType
---@field public Item System.ValueType
---@field public Stride number
---@field public Length number
local m = {}

---@static
---@param array System.ValueType
---@return Unity.Collections.NativeSlice_1_T_
function m.op_Implicit(array) end

---@return System.ValueType
function m:SliceConvert() end

---@overload fun():
---@param offset number
---@return System.ValueType
function m:SliceWithStride(offset) end

---@overload fun(array:System.ValueType[])
---@param slice Unity.Collections.NativeSlice_1_T_
function m:CopyFrom(slice) end

---@overload fun(array:System.ValueType[])
---@param array System.ValueType
function m:CopyTo(array) end

---@return System.ValueType[]
function m:ToArray() end

---@return System.ValueType
function m:GetEnumerator() end

---@overload fun(obj:any): @virtual
---@virtual
---@param other Unity.Collections.NativeSlice_1_T_
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left Unity.Collections.NativeSlice_1_T_
---@param right Unity.Collections.NativeSlice_1_T_
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left Unity.Collections.NativeSlice_1_T_
---@param right Unity.Collections.NativeSlice_1_T_
---@return boolean
function m.op_Inequality(left, right) end

Unity.Collections.NativeSlice_1_T_ = m
return m
