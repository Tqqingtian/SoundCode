---@class System.IO.FileStreamAsyncResult : System.Object
---@field public Buffer string
---@field public Offset number
---@field public Count number
---@field public OriginalCount number
---@field public BytesRead number
---@field public AsyncState any
---@field public CompletedSynchronously boolean
---@field public AsyncWaitHandle System.Threading.WaitHandle
---@field public IsCompleted boolean
---@field public Exception System.Exception
---@field public Done boolean
local m = {}

---@overload fun(e:System.Exception, nbytes:number)
---@overload fun(e:System.Exception, nbytes:number, synch:boolean)
---@param e System.Exception
function m:SetComplete(e) end

System.IO.FileStreamAsyncResult = m
return m
