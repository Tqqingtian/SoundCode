---@class System.Reflection.MemberFilter : System.MulticastDelegate
local m = {}

---@virtual
---@param m System.Reflection.MemberInfo
---@param filterCriteria any
---@return boolean
function m:Invoke(m, filterCriteria) end

---@virtual
---@param m System.Reflection.MemberInfo
---@param filterCriteria any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(m, filterCriteria, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return boolean
function m:EndInvoke(result) end

System.Reflection.MemberFilter = m
return m
