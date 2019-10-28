---@class System.IAsyncResult : table
---@field public IsCompleted boolean
---@field public AsyncWaitHandle System.Threading.WaitHandle
---@field public AsyncState any
---@field public CompletedSynchronously boolean
local m = {}

System.IAsyncResult = m
return m
