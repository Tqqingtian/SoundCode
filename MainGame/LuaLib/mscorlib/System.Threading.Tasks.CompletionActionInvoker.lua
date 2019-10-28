---@class System.Threading.Tasks.CompletionActionInvoker : System.Object
local m = {}

---@virtual
function m:ExecuteWorkItem() end

---@virtual
---@param tae System.Threading.ThreadAbortException
function m:MarkAborted(tae) end

System.Threading.Tasks.CompletionActionInvoker = m
return m
