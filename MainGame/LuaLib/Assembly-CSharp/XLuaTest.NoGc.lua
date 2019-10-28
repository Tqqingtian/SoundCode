---@class XLuaTest.NoGc : UnityEngine.MonoBehaviour
---@field public a1 number[]
---@field public a2 UnityEngine.Vector3[]
---@field public a3 XLuaTest.MyStruct[]
---@field public a4 XLuaTest.MyEnum[]
---@field public a5 System.Decimal[]
local m = {}

---@param p number
---@return number
function m:FloatParamMethod(p) end

---@param p UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:Vector3ParamMethod(p) end

---@param p XLuaTest.MyStruct
---@return XLuaTest.MyStruct
function m:StructParamMethod(p) end

---@param p XLuaTest.MyEnum
---@return XLuaTest.MyEnum
function m:EnumParamMethod(p) end

---@param p System.Decimal
---@return System.Decimal
function m:DecimalParamMethod(p) end

XLuaTest.NoGc = m
return m
