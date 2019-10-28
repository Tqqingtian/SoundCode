---@class UnityEngine.Assertions.Assert : System.Object
---@field public raiseExceptions boolean @static
local m = {}

---@static
---@param obj1 any
---@param obj2 any
---@return boolean
function m.Equals(obj1, obj2) end

---@static
---@param obj1 any
---@param obj2 any
---@return boolean
function m.ReferenceEquals(obj1, obj2) end

---@overload fun(condition:boolean, message:string) @static
---@static
---@param condition boolean
function m.IsTrue(condition) end

---@overload fun(condition:boolean, message:string) @static
---@static
---@param condition boolean
function m.IsFalse(condition) end

---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number, tolerance:number) @static
---@overload fun(expected:number, actual:number, tolerance:number, message:string) @static
---@static
---@param expected number
---@param actual number
function m.AreApproximatelyEqual(expected, actual) end

---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number, tolerance:number) @static
---@overload fun(expected:number, actual:number, tolerance:number, message:string) @static
---@static
---@param expected number
---@param actual number
function m.AreNotApproximatelyEqual(expected, actual) end

---@overload fun(expected:any, actual:any, message:string) @static
---@overload fun(expected:any, actual:any, message:string, comparer:any) @static
---@overload fun(expected:UnityEngine.Object, actual:UnityEngine.Object, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@static
---@param expected any
---@param actual any
function m.AreEqual(expected, actual) end

---@overload fun(expected:any, actual:any, message:string) @static
---@overload fun(expected:any, actual:any, message:string, comparer:any) @static
---@overload fun(expected:UnityEngine.Object, actual:UnityEngine.Object, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@overload fun(expected:number, actual:number) @static
---@overload fun(expected:number, actual:number, message:string) @static
---@static
---@param expected any
---@param actual any
function m.AreNotEqual(expected, actual) end

---@overload fun(value:any, message:string) @static
---@overload fun(value:UnityEngine.Object, message:string) @static
---@static
---@param value any
function m.IsNull(value) end

---@overload fun(value:any, message:string) @static
---@overload fun(value:UnityEngine.Object, message:string) @static
---@static
---@param value any
function m.IsNotNull(value) end

UnityEngine.Assertions.Assert = m
return m
