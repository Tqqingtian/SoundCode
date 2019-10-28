---@class TQ.UIFormBase : UnityEngine.MonoBehaviour
---@field public UIFormId number
---@field public GroupId number
---@field public CurrCanvas UnityEngine.Canvas
---@field public CloseTime number
---@field public DisableUILayer boolean
---@field public IsLock boolean
---@field public UserData any
local m = {}

function m:ToClose() end

TQ.UIFormBase = m
return m
