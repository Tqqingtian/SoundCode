---@class TQ.UserDataManager : System.Object
---@field public ServerTaskList ServerTaskEntity[]
local m = {}

function m:Clear() end

---@virtual
function m:Dispose() end

---@param proto Task_SearchTaskReturnProto
function m:ReceiveTask(proto) end

TQ.UserDataManager = m
return m
