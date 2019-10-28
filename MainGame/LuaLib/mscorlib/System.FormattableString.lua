---@class System.FormattableString : System.Object
---@field public Format string
---@field public ArgumentCount number
local m = {}

---@abstract
---@return any[]
function m:GetArguments() end

---@abstract
---@param index number
---@return any
function m:GetArgument(index) end

---@overload fun(): @virtual
---@abstract
---@param formatProvider System.IFormatProvider
---@return string
function m:ToString(formatProvider) end

---@static
---@param formattable System.FormattableString
---@return string
function m.Invariant(formattable) end

System.FormattableString = m
return m
