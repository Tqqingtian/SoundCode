---@class UnityEngine.Object : System.Object
---@field public name string
---@field public hideFlags UnityEngine.HideFlags
local m = {}

---@return number
function m:GetInstanceID() end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@static
---@param exists UnityEngine.Object
---@return boolean
function m.op_Implicit(exists) end

---@overload fun(original:UnityEngine.Object, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, parent:UnityEngine.Transform): @static
---@overload fun(original:UnityEngine.Object): @static
---@overload fun(original:UnityEngine.Object, parent:UnityEngine.Transform): @static
---@overload fun(original:UnityEngine.Object, parent:UnityEngine.Transform, instantiateInWorldSpace:boolean): @static
---@overload fun(original:UnityEngine.Object): @static
---@overload fun(original:UnityEngine.Object, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion): @static
---@overload fun(original:UnityEngine.Object, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, parent:UnityEngine.Transform): @static
---@overload fun(original:UnityEngine.Object, parent:UnityEngine.Transform): @static
---@overload fun(original:UnityEngine.Object, parent:UnityEngine.Transform, worldPositionStays:boolean): @static
---@static
---@param original UnityEngine.Object
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Object
function m.Instantiate(original, position, rotation) end

---@overload fun(obj:UnityEngine.Object) @static
---@static
---@param obj UnityEngine.Object
---@param t number
function m.Destroy(obj, t) end

---@overload fun(obj:UnityEngine.Object) @static
---@static
---@param obj UnityEngine.Object
---@param allowDestroyingAssets boolean
function m.DestroyImmediate(obj, allowDestroyingAssets) end

---@overload fun(): @static
---@static
---@param type System.Type
---@return UnityEngine.Object[]
function m.FindObjectsOfType(type) end

---@static
---@param target UnityEngine.Object
function m.DontDestroyOnLoad(target) end

---@overload fun(obj:UnityEngine.Object) @static
---@static
---@param obj UnityEngine.Object
---@param t number
function m.DestroyObject(obj, t) end

---@static
---@param type System.Type
---@return UnityEngine.Object[]
function m.FindSceneObjectsOfType(type) end

---@static
---@param type System.Type
---@return UnityEngine.Object[]
function m.FindObjectsOfTypeIncludingAssets(type) end

---@overload fun(type:System.Type): @static
---@static
---@return UnityEngine.Object
function m.FindObjectOfType() end

---@static
---@param type System.Type
---@return UnityEngine.Object[]
function m.FindObjectsOfTypeAll(type) end

---@virtual
---@return string
function m:ToString() end

---@static
---@param x UnityEngine.Object
---@param y UnityEngine.Object
---@return boolean
function m.op_Equality(x, y) end

---@static
---@param x UnityEngine.Object
---@param y UnityEngine.Object
---@return boolean
function m.op_Inequality(x, y) end

UnityEngine.Object = m
return m
