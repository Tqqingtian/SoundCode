---@class TestAsync : UnityEngine.MonoBehaviour
local m = {}

function m:TestMethodAsync() end

---@return System.Threading.Tasks.Task_1_System_Int32_
function m:Test1() end

TestAsync = m
return m
