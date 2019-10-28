---@class InnerTypeTest : System.Object
local m = {}

function m:Foo() end

InnerTypeTest = m
return m
