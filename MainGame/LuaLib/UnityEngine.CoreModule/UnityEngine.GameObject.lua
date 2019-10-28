---@class UnityEngine.GameObject : UnityEngine.Object
---@field public transform UnityEngine.Transform
---@field public layer number
---@field public active boolean
---@field public activeSelf boolean
---@field public activeInHierarchy boolean
---@field public isStatic boolean
---@field public tag string
---@field public scene UnityEngine.SceneManagement.Scene
---@field public gameObject UnityEngine.GameObject
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

---@static
---@param type UnityEngine.PrimitiveType
---@return UnityEngine.GameObject
function m.CreatePrimitive(type) end

---@overload fun(type:System.Type):
---@overload fun(type:string):
---@return any
function m:GetComponent() end

---@overload fun(type:System.Type):
---@overload fun():
---@overload fun(includeInactive:boolean):
---@param type System.Type
---@param includeInactive boolean
---@return UnityEngine.Component
function m:GetComponentInChildren(type, includeInactive) end

---@overload fun():
---@param type System.Type
---@return UnityEngine.Component
function m:GetComponentInParent(type) end

---@overload fun():
---@overload fun(type:System.Type, results:UnityEngine.Component[])
---@overload fun(results:any[])
---@param type System.Type
---@return UnityEngine.Component[]
function m:GetComponents(type) end

---@overload fun(type:System.Type, includeInactive:boolean):
---@overload fun(includeInactive:boolean):
---@overload fun(includeInactive:boolean, results:any[])
---@overload fun():
---@overload fun(results:any[])
---@param type System.Type
---@return UnityEngine.Component[]
function m:GetComponentsInChildren(type) end

---@overload fun(type:System.Type, includeInactive:boolean):
---@overload fun(includeInactive:boolean, results:any[])
---@overload fun(includeInactive:boolean):
---@overload fun():
---@param type System.Type
---@return UnityEngine.Component[]
function m:GetComponentsInParent(type) end

---@static
---@param tag string
---@return UnityEngine.GameObject
function m.FindWithTag(tag) end

---@overload fun(methodName:string, value:any, options:UnityEngine.SendMessageOptions)
---@overload fun(methodName:string, value:any)
---@overload fun(methodName:string)
---@param methodName string
---@param options UnityEngine.SendMessageOptions
function m:SendMessageUpwards(methodName, options) end

---@overload fun(methodName:string, value:any, options:UnityEngine.SendMessageOptions)
---@overload fun(methodName:string, value:any)
---@overload fun(methodName:string)
---@param methodName string
---@param options UnityEngine.SendMessageOptions
function m:SendMessage(methodName, options) end

---@overload fun(methodName:string, parameter:any, options:UnityEngine.SendMessageOptions)
---@overload fun(methodName:string, parameter:any)
---@overload fun(methodName:string)
---@param methodName string
---@param options UnityEngine.SendMessageOptions
function m:BroadcastMessage(methodName, options) end

---@overload fun():
---@overload fun(className:string):
---@param componentType System.Type
---@return UnityEngine.Component
function m:AddComponent(componentType) end

---@param value boolean
function m:SetActive(value) end

---@param state boolean
function m:SetActiveRecursively(state) end

---@param tag string
---@return boolean
function m:CompareTag(tag) end

---@static
---@param tag string
---@return UnityEngine.GameObject
function m.FindGameObjectWithTag(tag) end

---@static
---@param tag string
---@return UnityEngine.GameObject[]
function m.FindGameObjectsWithTag(tag) end

---@static
---@param name string
---@return UnityEngine.GameObject
function m.Find(name) end

---@param clip UnityEngine.Object
---@param time number
function m:SampleAnimation(clip, time) end

---@param animation UnityEngine.Object
function m:PlayAnimation(animation) end

function m:StopAnimation() end

---@extension
---@return UnityEngine.MonoBehaviour
function m.GetOrCreatComponent() end

---@extension
---@param layerName string
function m.SetLayer(layerName) end

---@extension
---@param parent UnityEngine.Transform
function m.SetParent(parent) end

---@extension
---@return UnityEngine.Component
function m.UnsupportedExtension() end

UnityEngine.GameObject = m
return m
