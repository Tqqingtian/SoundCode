---@class System.Text.Normalization : System.Object
---@field public NoNfd number @static
---@field public NoNfkd number @static
---@field public NoNfc number @static
---@field public MaybeNfc number @static
---@field public NoNfkc number @static
---@field public MaybeNfkc number @static
---@field public FullCompositionExclusion number @static
---@field public IsUnsafe number @static
---@field public isReady boolean @static
---@field public IsReady boolean @static
local m = {}

---@static
---@param c number
---@param type number
---@return System.Text.NormalizationCheck
function m.QuickCheck(c, type) end

---@overload fun(source:string, type:number): @static
---@static
---@param source string
---@param normalizationForm System.Text.NormalizationForm
---@return boolean
function m.IsNormalized(source, normalizationForm) end

---@overload fun(source:string, type:number): @static
---@static
---@param source string
---@param normalizationForm System.Text.NormalizationForm
---@return string
function m.Normalize(source, normalizationForm) end

System.Text.Normalization = m
return m
