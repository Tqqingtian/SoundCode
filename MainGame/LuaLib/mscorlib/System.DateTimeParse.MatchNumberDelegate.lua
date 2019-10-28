---@class System.DateTimeParse.MatchNumberDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param str System.__DTString
---@param digitLen number
---@return boolean, System.__DTString, System.Int32
function m:Invoke(str, digitLen) end

---@virtual
---@param str System.__DTString
---@param digitLen number
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult, System.__DTString, System.Int32
function m:BeginInvoke(str, digitLen, callback, object) end

---@virtual
---@param str System.__DTString
---@param __result System.IAsyncResult
---@return boolean, System.__DTString, System.Int32
function m:EndInvoke(str, __result) end

System.DateTimeParse.MatchNumberDelegate = m
return m
