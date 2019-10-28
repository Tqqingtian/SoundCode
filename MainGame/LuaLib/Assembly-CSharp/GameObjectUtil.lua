---@class GameObjectUtil : System.Object
local m = {}

---@static
---@param obj UnityEngine.GameObject
---@return UnityEngine.MonoBehaviour
function m.GetOrCreatComponent(obj) end

---@overload fun(arr:UnityEngine.Transform[]) @static
---@overload fun(arr:UnityEngine.Sprite[]) @static
---@static
---@param arr UnityEngine.MonoBehaviour[]
function m.SetNull(arr) end

---@static
---@param obj UnityEngine.GameObject
---@param layerName string
function m.SetLayer(obj, layerName) end

---@static
---@param obj UnityEngine.GameObject
---@param parent UnityEngine.Transform
function m.SetParent(obj, parent) end

---@overload fun(txtObj:UnityEngine.UI.Text, text:string, isAnima:boolean) @static
---@overload fun(txtObj:UnityEngine.UI.Text, text:string) @static
---@static
---@param txtObj UnityEngine.UI.Text
---@param text string
---@param isAnima boolean
---@param scrambleMode DG.Tweening.ScrambleMode
function m.SetText(txtObj, text, isAnima, scrambleMode) end

---@static
---@param sliderObj UnityEngine.UI.Slider
---@param value number
function m.SetSliderValue(sliderObj, value) end

---@static
---@param sliderObj UnityEngine.UI.Image
---@param value UnityEngine.Sprite
function m.SetImage(sliderObj, value) end

GameObjectUtil = m
return m
