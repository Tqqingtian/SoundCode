---@class UnityEngine.Assertions.AssertionMessageUtil : System.Object
local m = {}

---@overload fun(failureMessage:string, expected:string): @static
---@static
---@param failureMessage string
---@return string
function m.GetMessage(failureMessage) end

---@static
---@param actual any
---@param expected any
---@param expectEqual boolean
---@return string
function m.GetEqualityMessage(actual, expected, expectEqual) end

---@static
---@param value any
---@param expectNull boolean
---@return string
function m.NullFailureMessage(value, expectNull) end

---@static
---@param expected boolean
---@return string
function m.BooleanFailureMessage(expected) end

UnityEngine.Assertions.AssertionMessageUtil = m
return m
