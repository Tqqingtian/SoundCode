---@class FooExtension : System.Object
local m = {}

---@static
---@param a Foo1Parent
function m.PlainExtension(a) end

---@static
---@param a Foo1Parent
---@return Foo1Parent
function m.Extension1(a) end

---@overload fun(a:Foo1Parent, b:Foo2Parent) @static
---@static
---@param a Foo1Parent
---@param b UnityEngine.GameObject
---@return Foo1Parent
function m.Extension2(a, b) end

---@static
---@param obj UnityEngine.GameObject
---@return UnityEngine.Component
function m.UnsupportedExtension(obj) end

FooExtension = m
return m
