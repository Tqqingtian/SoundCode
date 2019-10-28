---@class System.NumberFormatter.CustomInfo : System.Object
---@field public UseGroup boolean
---@field public DecimalDigits number
---@field public DecimalPointPos number
---@field public DecimalTailSharpDigits number
---@field public IntegerDigits number
---@field public IntegerHeadSharpDigits number
---@field public IntegerHeadPos number
---@field public UseExponent boolean
---@field public ExponentDigits number
---@field public ExponentTailSharpDigits number
---@field public ExponentNegativeSignOnly boolean
---@field public DividePlaces number
---@field public Percents number
---@field public Permilles number
local m = {}

---@static
---@param format string
---@param positive System.Boolean
---@param zero boolean
---@param offset System.Int32
---@param length System.Int32
---@return System.Boolean, System.Int32, System.Int32
function m.GetActiveSection(format, positive, zero, offset, length) end

---@static
---@param format string
---@param offset number
---@param length number
---@param nfi System.Globalization.NumberFormatInfo
---@return System.NumberFormatter.CustomInfo
function m.Parse(format, offset, length, nfi) end

---@param format string
---@param offset number
---@param length number
---@param nfi System.Globalization.NumberFormatInfo
---@param positive boolean
---@param sb_int System.Text.StringBuilder
---@param sb_dec System.Text.StringBuilder
---@param sb_exp System.Text.StringBuilder
---@return string
function m:Format(format, offset, length, nfi, positive, sb_int, sb_dec, sb_exp) end

System.NumberFormatter.CustomInfo = m
return m
