---@class System.Threading.ThreadPoolGlobals : System.Object
---@field public tpQuantum number @static
---@field public processorCount number @static
---@field public tpHosted boolean @static
---@field public vmTpInitialized boolean @static
---@field public enableWorkerTracking boolean @static
---@field public workQueue System.Threading.ThreadPoolWorkQueue @static
local m = {}

System.Threading.ThreadPoolGlobals = m
return m
