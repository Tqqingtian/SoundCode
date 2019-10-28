---@class TQ.DownloadComponent : TQ.TQBaseComponent
---@field public FlushSize number
---@field public DownloadRoutineCount number
local m = {}

---@overload fun(url:string, onUpdate:fun(t1:string, t2:number, t3:number))
---@overload fun(url:string)
---@param url string
---@param onUpdate fun(t1:string, t2:number, t3:number)
---@param onComplete fun(t1:string)
function m:BeginDownloadSingle(url, onUpdate, onComplete) end

---@overload fun(lstUrl:System.Collections.Generic.LinkedList_1_System_String_, onDownloadMulitUpdate:fun(t1:number, t2:number, t3:number, t4:number))
---@overload fun(lstUrl:System.Collections.Generic.LinkedList_1_System_String_)
---@param lstUrl System.Collections.Generic.LinkedList_1_System_String_
---@param onDownloadMulitUpdate fun(t1:number, t2:number, t3:number, t4:number)
---@param onDownloadMulitComplete fun()
function m:BeginDownloadMulit(lstUrl, onDownloadMulitUpdate, onDownloadMulitComplete) end

---@virtual
function m:OnUpdate() end

---@virtual
function m:Shutdown() end

TQ.DownloadComponent = m
return m
