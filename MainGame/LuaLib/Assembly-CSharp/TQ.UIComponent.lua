---@class TQ.UIComponent : TQ.TQBaseComponent
---@field public UICamera UnityEngine.Camera
---@field public UIExpire number
---@field public UIPoolMaxCount number
local m = {}

function m:LoadingFormCanvasScaler() end

function m:FullFormCanvasScaler() end

function m:NormalFormCanvasScaler() end

---@param id number
---@return TQ.UIGroup
function m:GetGroup(id) end

---@overload fun(uiFormID:number, userData:any)
---@overload fun(uiFormID:number)
---@param uiFormID number
---@param userData any
---@param onOpen fun(t1:TQ.UIFormBase)
function m:OpenUIForm(uiFormID, userData, onOpen) end

---@overload fun(formBase:TQ.UIFormBase)
---@param uiformId number
function m:CloseUIForm(uiformId) end

---@param uiFormId number
---@return TQ.UIFormBase
function m:Dequeue(uiFormId) end

---@param form TQ.UIFormBase
function m:Enqueue(form) end

---@virtual
function m:OnUpdate() end

---@virtual
function m:Shutdown() end

TQ.UIComponent = m
return m
