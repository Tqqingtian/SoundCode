---@class UnityEngine.InternalStaticBatchingUtility : System.Object
local m = {}

---@static
---@param staticBatchRoot UnityEngine.GameObject
function m.CombineRoot(staticBatchRoot) end

---@static
---@param staticBatchRoot UnityEngine.GameObject
---@param combineOnlyStatic boolean
---@param isEditorPostprocessScene boolean
function m.Combine(staticBatchRoot, combineOnlyStatic, isEditorPostprocessScene) end

---@static
---@param gos UnityEngine.GameObject[]
---@param staticBatchRoot UnityEngine.GameObject
---@param isEditorPostprocessScene boolean
function m.CombineGameObjects(gos, staticBatchRoot, isEditorPostprocessScene) end

UnityEngine.InternalStaticBatchingUtility = m
return m
