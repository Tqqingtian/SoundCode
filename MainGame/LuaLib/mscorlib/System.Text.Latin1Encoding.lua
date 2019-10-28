---@class System.Text.Latin1Encoding : System.Text.EncodingNLS
---@field public IsSingleByte boolean
local m = {}

---@virtual
---@param charCount number
---@return number
function m:GetMaxByteCount(charCount) end

---@virtual
---@param byteCount number
---@return number
function m:GetMaxCharCount(byteCount) end

---@virtual
---@param form System.Text.NormalizationForm
---@return boolean
function m:IsAlwaysNormalized(form) end

System.Text.Latin1Encoding = m
return m
