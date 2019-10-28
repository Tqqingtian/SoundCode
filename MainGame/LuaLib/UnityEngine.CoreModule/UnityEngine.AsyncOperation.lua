---@class UnityEngine.AsyncOperation : UnityEngine.YieldInstruction
---@field public isDone boolean
---@field public progress number
---@field public priority number
---@field public allowSceneActivation boolean
local m = {}

---@param value fun(obj:UnityEngine.AsyncOperation)
function m:add_completed(value) end

---@param value fun(obj:UnityEngine.AsyncOperation)
function m:remove_completed(value) end

UnityEngine.AsyncOperation = m
return m
