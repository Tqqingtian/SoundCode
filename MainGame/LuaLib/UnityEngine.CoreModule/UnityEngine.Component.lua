---@class UnityEngine.Component : UnityEngine.Object
---@field public transform UnityEngine.Transform
---@field public gameObject UnityEngine.GameObject
---@field public tag string
---@field public rigidbody UnityEngine.Component
---@field public rigidbody2D UnityEngine.Component
---@field public camera UnityEngine.Component
---@field public light UnityEngine.Component
---@field public animation UnityEngine.Component
---@field public constantForce UnityEngine.Component
---@field public renderer UnityEngine.Component
---@field public audio UnityEngine.Component
---@field public guiText UnityEngine.Component
---@field public networkView UnityEngine.Component
---@field public guiElement UnityEngine.Component
---@field public guiTexture UnityEngine.Component
---@field public collider UnityEngine.Component
---@field public collider2D UnityEngine.Component
---@field public hingeJoint UnityEngine.Component
---@field public particleSystem UnityEngine.Component
local m = {}

---@overload fun():
---@overload fun(type:string):
---@param type System.Type
---@return UnityEngine.Component
function m:GetComponent(type) end

---@overload fun(t:System.Type):
---@overload fun(includeInactive:boolean):
---@overload fun():
---@param t System.Type
---@param includeInactive boolean
---@return UnityEngine.Component
function m:GetComponentInChildren(t, includeInactive) end

---@overload fun(t:System.Type):
---@overload fun(includeInactive:boolean):
---@overload fun(includeInactive:boolean, result:any[])
---@overload fun():
---@overload fun(results:any[])
---@param t System.Type
---@param includeInactive boolean
---@return UnityEngine.Component[]
function m:GetComponentsInChildren(t, includeInactive) end

---@overload fun():
---@param t System.Type
---@return UnityEngine.Component
function m:GetComponentInParent(t) end

---@overload fun(t:System.Type):
---@overload fun(includeInactive:boolean):
---@overload fun(includeInactive:boolean, results:any[])
---@overload fun():
---@param t System.Type
---@param includeInactive boolean
---@return UnityEngine.Component[]
function m:GetComponentsInParent(t, includeInactive) end

---@overload fun(type:System.Type, results:UnityEngine.Component[])
---@overload fun(results:any[])
---@overload fun():
---@param type System.Type
---@return UnityEngine.Component[]
function m:GetComponents(type) end

---@param tag string
---@return boolean
function m:CompareTag(tag) end

---@overload fun(methodName:string, value:any)
---@overload fun(methodName:string)
---@overload fun(methodName:string, options:UnityEngine.SendMessageOptions)
---@param methodName string
---@param value any
---@param options UnityEngine.SendMessageOptions
function m:SendMessageUpwards(methodName, value, options) end

---@overload fun(methodName:string)
---@overload fun(methodName:string, value:any, options:UnityEngine.SendMessageOptions)
---@overload fun(methodName:string, options:UnityEngine.SendMessageOptions)
---@param methodName string
---@param value any
function m:SendMessage(methodName, value) end

---@overload fun(methodName:string, parameter:any)
---@overload fun(methodName:string)
---@overload fun(methodName:string, options:UnityEngine.SendMessageOptions)
---@param methodName string
---@param parameter any
---@param options UnityEngine.SendMessageOptions
function m:BroadcastMessage(methodName, parameter, options) end

UnityEngine.Component = m
return m
