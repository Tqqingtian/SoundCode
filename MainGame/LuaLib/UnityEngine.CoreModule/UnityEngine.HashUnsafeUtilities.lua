---@class UnityEngine.HashUnsafeUtilities : System.Object
local m = {}

---@overload fun(data:System.Void*, dataSize:number, hash:UnityEngine.Hash128*) @static
---@static
---@param data System.Void*
---@param dataSize number
---@param hash1 System.UInt64*
---@param hash2 System.UInt64*
function m.ComputeHash128(data, dataSize, hash1, hash2) end

UnityEngine.HashUnsafeUtilities = m
return m
