---@class System.Threading.StackCrawlMark : System.Enum
---@field public LookForMe System.Threading.StackCrawlMark @static
---@field public LookForMyCaller System.Threading.StackCrawlMark @static
---@field public LookForMyCallersCaller System.Threading.StackCrawlMark @static
---@field public LookForThread System.Threading.StackCrawlMark @static
---@field public value__ number
local m = {}

System.Threading.StackCrawlMark = m
return m
