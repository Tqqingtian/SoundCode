---@class System.Runtime.InteropServices.ICustomMarshaler : table
local m = {}

---@abstract
---@param pNativeData System.IntPtr
---@return any
function m:MarshalNativeToManaged(pNativeData) end

---@abstract
---@param ManagedObj any
---@return System.IntPtr
function m:MarshalManagedToNative(ManagedObj) end

---@abstract
---@param pNativeData System.IntPtr
function m:CleanUpNativeData(pNativeData) end

---@abstract
---@param ManagedObj any
function m:CleanUpManagedData(ManagedObj) end

---@abstract
---@return number
function m:GetNativeDataSize() end

System.Runtime.InteropServices.ICustomMarshaler = m
return m
