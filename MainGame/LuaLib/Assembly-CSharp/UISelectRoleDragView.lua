---@class UISelectRoleDragView : UnityEngine.MonoBehaviour
---@field public OnDraging fun(dir:number)
---@field public OnDragComplete fun(dir:number)
---@field public OnDoubleClick fun()
local m = {}

---@virtual
---@param eventData UnityEngine.EventSystems.PointerEventData
function m:OnBeginDrag(eventData) end

---@virtual
---@param eventData UnityEngine.EventSystems.PointerEventData
function m:OnDrag(eventData) end

---@virtual
---@param eventData UnityEngine.EventSystems.PointerEventData
function m:OnEndDrag(eventData) end

UISelectRoleDragView = m
return m
