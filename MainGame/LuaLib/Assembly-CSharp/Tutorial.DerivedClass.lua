---@class Tutorial.DerivedClass : Tutorial.BaseClass
---@field public TestDelegate fun(obj:string)
---@field public DMF number
local m = {}

function m:DMFunc() end

---@param p1 Tutorial.Param1
---@param p2 System.Int32
---@param luafunc fun()
---@return number, System.Int32, System.String, System.Action
function m:ComplexFunc(p1, p2, luafunc) end

---@overload fun(i:string)
---@param i number
function m:TestFunc(i) end

---@static
---@param a Tutorial.DerivedClass
---@param b Tutorial.DerivedClass
---@return Tutorial.DerivedClass
function m.op_Addition(a, b) end

---@overload fun(a:number, b:string)
---@overload fun(a:number)
---@overload fun()
---@param a number
---@param b string
---@param c string
function m:DefaultValueFunc(a, b, c) end

---@overload fun(a:number)
---@param a number
---@param ... string|string[]
function m:VariableParamsFunc(a, ...) end

---@param e Tutorial.TestEnum
---@return Tutorial.TestEnum
function m:EnumTestFunc(e) end

---@param value fun()
function m:add_TestEvent(value) end

---@param value fun()
function m:remove_TestEvent(value) end

function m:CallEvent() end

---@param n number
---@return number
function m:TestLong(n) end

---@return Tutorial.ICalc
function m:GetCalc() end

function m:GenericMethod() end

---@extension
---@return number
function m.GetSomeData() end

---@extension
function m.GenericMethodOfString() end

Tutorial.DerivedClass = m
return m
