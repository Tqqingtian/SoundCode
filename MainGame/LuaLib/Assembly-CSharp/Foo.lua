---@class Foo : System.Object
local m = {}

---@param a Foo1Parent
function m:Test1(a) end

---@param a Foo1Parent
---@param b Foo2Parent
---@param c UnityEngine.GameObject
---@return Foo1Parent
function m:Test2(a, b, c) end

---@param a any
function m:UnsupportedMethod1(a) end

function m:UnsupportedMethod2() end

---@param a any
function m:UnsupportedMethod3(a) end

Foo = m
return m
