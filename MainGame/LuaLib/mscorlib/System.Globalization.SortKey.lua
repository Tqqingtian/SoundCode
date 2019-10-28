---@class System.Globalization.SortKey : System.Object
---@field public OriginalString string
---@field public KeyData string
local m = {}

---@static
---@param sortkey1 System.Globalization.SortKey
---@param sortkey2 System.Globalization.SortKey
---@return number
function m.Compare(sortkey1, sortkey2) end

---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

System.Globalization.SortKey = m
return m
