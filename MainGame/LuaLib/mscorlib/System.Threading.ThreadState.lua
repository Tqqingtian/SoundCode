---@class System.Threading.ThreadState : System.Enum
---@field public Running System.Threading.ThreadState @static
---@field public StopRequested System.Threading.ThreadState @static
---@field public SuspendRequested System.Threading.ThreadState @static
---@field public Background System.Threading.ThreadState @static
---@field public Unstarted System.Threading.ThreadState @static
---@field public Stopped System.Threading.ThreadState @static
---@field public WaitSleepJoin System.Threading.ThreadState @static
---@field public Suspended System.Threading.ThreadState @static
---@field public AbortRequested System.Threading.ThreadState @static
---@field public Aborted System.Threading.ThreadState @static
---@field public value__ number
local m = {}

System.Threading.ThreadState = m
return m
