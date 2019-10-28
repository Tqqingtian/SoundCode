---@class System.Security.SecureString : System.Object
---@field public Length number
local m = {}

---@param c number
function m:AppendChar(c) end

function m:Clear() end

---@return System.Security.SecureString
function m:Copy() end

---@virtual
function m:Dispose() end

---@param index number
---@param c number
function m:InsertAt(index, c) end

---@return boolean
function m:IsReadOnly() end

function m:MakeReadOnly() end

---@param index number
function m:RemoveAt(index) end

---@param index number
---@param c number
function m:SetAt(index, c) end

System.Security.SecureString = m
return m
