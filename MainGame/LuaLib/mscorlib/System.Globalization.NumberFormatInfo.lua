---@class System.Globalization.NumberFormatInfo : System.Object
---@field public InvariantInfo System.Globalization.NumberFormatInfo @static
---@field public CurrentInfo System.Globalization.NumberFormatInfo @static
---@field public CurrencyDecimalDigits number
---@field public CurrencyDecimalSeparator string
---@field public IsReadOnly boolean
---@field public CurrencyGroupSizes number[]
---@field public NumberGroupSizes number[]
---@field public PercentGroupSizes number[]
---@field public CurrencyGroupSeparator string
---@field public CurrencySymbol string
---@field public NaNSymbol string
---@field public CurrencyNegativePattern number
---@field public NumberNegativePattern number
---@field public PercentPositivePattern number
---@field public PercentNegativePattern number
---@field public NegativeInfinitySymbol string
---@field public NegativeSign string
---@field public NumberDecimalDigits number
---@field public NumberDecimalSeparator string
---@field public NumberGroupSeparator string
---@field public CurrencyPositivePattern number
---@field public PositiveInfinitySymbol string
---@field public PositiveSign string
---@field public PercentDecimalDigits number
---@field public PercentDecimalSeparator string
---@field public PercentGroupSeparator string
---@field public PercentSymbol string
---@field public PerMilleSymbol string
---@field public NativeDigits string[]
---@field public DigitSubstitution System.Globalization.DigitShapes
local m = {}

---@static
---@param formatProvider System.IFormatProvider
---@return System.Globalization.NumberFormatInfo
function m.GetInstance(formatProvider) end

---@virtual
---@return any
function m:Clone() end

---@virtual
---@param formatType System.Type
---@return any
function m:GetFormat(formatType) end

---@static
---@param nfi System.Globalization.NumberFormatInfo
---@return System.Globalization.NumberFormatInfo
function m.ReadOnly(nfi) end

System.Globalization.NumberFormatInfo = m
return m
