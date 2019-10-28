---@class UnityEngine.Resources : System.Object
local m = {}

---@overload fun(): @static
---@static
---@param type System.Type
---@return UnityEngine.Object[]
function m.FindObjectsOfTypeAll(type) end

---@overload fun(path:string): @static
---@overload fun(path:string, systemTypeInstance:System.Type): @static
---@static
---@param path string
---@return UnityEngine.Object
function m.Load(path) end

---@overload fun(path:string): @static
---@overload fun(path:string, type:System.Type): @static
---@static
---@param path string
---@return UnityEngine.ResourceRequest
function m.LoadAsync(path) end

---@overload fun(path:string): @static
---@overload fun(path:string): @static
---@static
---@param path string
---@param systemTypeInstance System.Type
---@return UnityEngine.Object[]
function m.LoadAll(path, systemTypeInstance) end

---@overload fun(path:string): @static
---@static
---@param type System.Type
---@param path string
---@return UnityEngine.Object
function m.GetBuiltinResource(type, path) end

---@static
---@param assetToUnload UnityEngine.Object
function m.UnloadAsset(assetToUnload) end

---@static
---@return UnityEngine.AsyncOperation
function m.UnloadUnusedAssets() end

---@overload fun(assetPath:string): @static
---@static
---@param assetPath string
---@param type System.Type
---@return UnityEngine.Object
function m.LoadAssetAtPath(assetPath, type) end

UnityEngine.Resources = m
return m
