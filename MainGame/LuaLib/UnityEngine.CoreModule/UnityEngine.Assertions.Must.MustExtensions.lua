---@class UnityEngine.Assertions.Must.MustExtensions : System.Object
local m = {}

---@overload fun(value:boolean, message:string) @static
---@static
---@param value boolean
function m.MustBeTrue(value) end

---@overload fun(value:boolean, message:string) @static
---@static
---@param value boolean
function m.MustBeFalse(value) end

---@overload fun(actual:number, expected:number, message:string) @static
---@overload fun(actual:number, expected:number, tolerance:number) @static
---@overload fun(actual:number, expected:number, tolerance:number, message:string) @static
---@static
---@param actual number
---@param expected number
function m.MustBeApproximatelyEqual(actual, expected) end

---@overload fun(actual:number, expected:number, message:string) @static
---@overload fun(actual:number, expected:number, tolerance:number) @static
---@overload fun(actual:number, expected:number, tolerance:number, message:string) @static
---@static
---@param actual number
---@param expected number
function m.MustNotBeApproximatelyEqual(actual, expected) end

---@overload fun(actual:any, expected:any, message:string) @static
---@static
---@param actual any
---@param expected any
function m.MustBeEqual(actual, expected) end

---@overload fun(actual:any, expected:any, message:string) @static
---@static
---@param actual any
---@param expected any
function m.MustNotBeEqual(actual, expected) end

---@overload fun(expected:any, message:string) @static
---@static
---@param expected any
function m.MustBeNull(expected) end

---@overload fun(expected:any, message:string) @static
---@static
---@param expected any
function m.MustNotBeNull(expected) end

UnityEngine.Assertions.Must.MustExtensions = m
return m
