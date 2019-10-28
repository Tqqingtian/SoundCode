---@class UnityEngine.HashUtilities : System.Object
local m = {}

---@static
---@param inHash UnityEngine.Hash128
---@param outHash UnityEngine.Hash128
---@return UnityEngine.Hash128, UnityEngine.Hash128
function m.AppendHash(inHash, outHash) end

---@static
---@param value UnityEngine.Matrix4x4
---@param hash UnityEngine.Hash128
---@return UnityEngine.Matrix4x4, UnityEngine.Hash128
function m.QuantisedMatrixHash(value, hash) end

---@static
---@param value UnityEngine.Vector3
---@param hash UnityEngine.Hash128
---@return UnityEngine.Vector3, UnityEngine.Hash128
function m.QuantisedVectorHash(value, hash) end

---@static
---@param value any
---@param hash UnityEngine.Hash128
---@return any, UnityEngine.Hash128
function m.ComputeHash128(value, hash) end

UnityEngine.HashUtilities = m
return m
