---@class System.Threading.ThreadPoolWorkQueueThreadLocals : System.Object
---@field public threadLocals System.Threading.ThreadPoolWorkQueueThreadLocals @static
---@field public workQueue System.Threading.ThreadPoolWorkQueue
---@field public workStealingQueue System.Threading.ThreadPoolWorkQueue.WorkStealingQueue
---@field public random System.Random
local m = {}

System.Threading.ThreadPoolWorkQueueThreadLocals = m
return m
