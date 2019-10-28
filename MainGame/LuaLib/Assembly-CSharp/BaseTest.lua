---@class BaseTest : BaseTestBase_1_InnerTypeTest_
local m = {}

---@virtual
---@param p number
function m:Foo(p) end

---@param p number
function m:Proxy(p) end

---@virtual
---@return string
function m:ToString() end

BaseTest = m
return m
