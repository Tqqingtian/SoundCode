---@class TQ.HttpRoutine : System.Object
---@field public IsBusy boolean
local m = {}

---@overload fun(url:string, callBack:fun(args:TQ.HttpCallBackArgs), isPost:boolean, isGetData:boolean)
---@overload fun(url:string, callBack:fun(args:TQ.HttpCallBackArgs), isPost:boolean)
---@overload fun(url:string, callBack:fun(args:TQ.HttpCallBackArgs))
---@param url string
---@param callBack fun(args:TQ.HttpCallBackArgs)
---@param isPost boolean
---@param isGetData boolean
---@param dic System.Collections.Generic.Dictionary_2_System_String_System_Object_
function m:SendData(url, callBack, isPost, isGetData, dic) end

TQ.HttpRoutine = m
return m
