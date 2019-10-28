---@class GameUtil : System.Object
local m = {}

---@overload fun(currPos:UnityEngine.Vector3, targerPos:UnityEngine.Vector3, distance:number): @static
---@static
---@param targerPos UnityEngine.Vector3
---@param distance number
---@return UnityEngine.Vector3
function m.GetRandomPos(targerPos, distance) end

---@static
---@param path UnityEngine.Vector3[]
---@return number
function m.GetPathLen(path) end

---@static
---@param path string
---@return string
function m.GetFileName(path) end

---@static
---@param go UnityEngine.GameObject
---@param imgPath string
---@param imgName string
---@param isSetNativeSize boolean
function m.AutoLoadTexture(go, imgPath, imgName, isSetNativeSize) end

---@static
---@param go UnityEngine.GameObject
---@param number number
function m.AutoNumberAnimation(go, number) end

---@static
---@param parent UnityEngine.Transform
---@param prefab UnityEngine.GameObject
---@return UnityEngine.GameObject
function m.AddChild(parent, prefab) end

---@static
---@param path string
---@return string
function m.GetUIResPath(path) end

GameUtil = m
return m
