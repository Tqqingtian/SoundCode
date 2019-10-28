---@class UnityEngine.SceneManagement.Scene : System.ValueType
---@field public handle number
---@field public path string
---@field public name string
---@field public isLoaded boolean
---@field public buildIndex number
---@field public isDirty boolean
---@field public rootCount number
local m = {}

---@return boolean
function m:IsValid() end

---@overload fun(rootGameObjects:UnityEngine.GameObject[])
---@return UnityEngine.GameObject[]
function m:GetRootGameObjects() end

---@static
---@param lhs UnityEngine.SceneManagement.Scene
---@param rhs UnityEngine.SceneManagement.Scene
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.SceneManagement.Scene
---@param rhs UnityEngine.SceneManagement.Scene
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

UnityEngine.SceneManagement.Scene = m
return m
