---@class UnityEngine.BitStream : System.Object
---@field public isReading boolean
---@field public isWriting boolean
local m = {}

---@overload fun(value:System.Char):
---@overload fun(value:System.Int16):
---@overload fun(value:System.Int32):
---@overload fun(value:System.Single):
---@overload fun(value:System.Single, maxDelta:number):
---@overload fun(value:UnityEngine.Quaternion):
---@overload fun(value:UnityEngine.Quaternion, maxDelta:number):
---@overload fun(value:UnityEngine.Vector3):
---@overload fun(value:UnityEngine.Vector3, maxDelta:number):
---@overload fun(value:UnityEngine.NetworkPlayer):
---@overload fun(viewID:UnityEngine.NetworkViewID):
---@param value System.Boolean
---@return System.Boolean
function m:Serialize(value) end

UnityEngine.BitStream = m
return m
