---@class DG.Tweening.DOTweenAnimation : DG.Tweening.Core.ABSAnimationComponent
---@field public delay number
---@field public duration number
---@field public easeType DG.Tweening.Ease
---@field public easeCurve UnityEngine.AnimationCurve
---@field public loopType DG.Tweening.LoopType
---@field public loops number
---@field public id string
---@field public isRelative boolean
---@field public isFrom boolean
---@field public isIndependentUpdate boolean
---@field public autoKill boolean
---@field public isActive boolean
---@field public isValid boolean
---@field public target UnityEngine.Component
---@field public animationType DG.Tweening.Core.DOTweenAnimationType
---@field public autoPlay boolean
---@field public endValueFloat number
---@field public endValueV3 UnityEngine.Vector3
---@field public endValueColor UnityEngine.Color
---@field public endValueString string
---@field public endValueRect UnityEngine.Rect
---@field public optionalBool0 boolean
---@field public optionalFloat0 number
---@field public optionalInt0 number
---@field public optionalRotationMode DG.Tweening.RotateMode
---@field public optionalScrambleMode DG.Tweening.ScrambleMode
---@field public optionalString string
local m = {}

function m:CreateTween() end

---@virtual
function m:DOPlay() end

---@virtual
function m:DOPlayBackwards() end

---@virtual
function m:DOPlayForward() end

---@virtual
function m:DOPause() end

---@virtual
function m:DOTogglePause() end

---@virtual
function m:DORewind() end

---@overload fun() @virtual
---@virtual
---@param fromHere boolean
function m:DORestart(fromHere) end

---@virtual
function m:DOComplete() end

---@virtual
function m:DOKill() end

---@param id string
function m:DOPlayById(id) end

---@param id string
function m:DOPlayAllById(id) end

function m:DOPlayNext() end

function m:DORewindAndPlayNext() end

---@param id string
function m:DORestartById(id) end

---@param id string
function m:DORestartAllById(id) end

---@return DG.Tweening.Tween[]
function m:GetTweens() end

DG.Tweening.DOTweenAnimation = m
return m
