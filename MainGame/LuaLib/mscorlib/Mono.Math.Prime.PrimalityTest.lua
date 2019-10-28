---@class Mono.Math.Prime.PrimalityTest : System.MulticastDelegate
local m = {}

---@virtual
---@param bi Mono.Math.BigInteger
---@param confidence Mono.Math.Prime.ConfidenceFactor
---@return boolean
function m:Invoke(bi, confidence) end

---@virtual
---@param bi Mono.Math.BigInteger
---@param confidence Mono.Math.Prime.ConfidenceFactor
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(bi, confidence, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return boolean
function m:EndInvoke(result) end

Mono.Math.Prime.PrimalityTest = m
return m
