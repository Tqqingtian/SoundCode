---@class System.Runtime.CompilerServices.FormattableStringFactory.ConcreteFormattableString : System.FormattableString
---@field public Format string
---@field public ArgumentCount number
local m = {}

---@virtual
---@return any[]
function m:GetArguments() end

---@virtual
---@param index number
---@return any
function m:GetArgument(index) end

---@virtual
---@param formatProvider System.IFormatProvider
---@return string
function m:ToString(formatProvider) end

System.Runtime.CompilerServices.FormattableStringFactory.ConcreteFormattableString = m
return m
