---@class Mono.Globalization.Unicode.MSCompatUnicodeTable : System.Object
---@field public MaxExpansionLength number @static
---@field public isReady boolean @static
---@field public IsReady boolean @static
local m = {}

---@static
---@param lcid number
---@return Mono.Globalization.Unicode.TailoringInfo
function m.GetTailoringInfo(lcid) end

---@static
---@param culture System.Globalization.CultureInfo
---@param t Mono.Globalization.Unicode.TailoringInfo
---@param contractions Mono.Globalization.Unicode.Contraction__
---@param diacriticals Mono.Globalization.Unicode.Level2Map__
---@return Mono.Globalization.Unicode.Contraction__, Mono.Globalization.Unicode.Level2Map__
function m.BuildTailoringTables(culture, t, contractions, diacriticals) end

---@static
---@param cp number
---@return number
function m.Category(cp) end

---@static
---@param cp number
---@return number
function m.Level1(cp) end

---@static
---@param cp number
---@return number
function m.Level2(cp) end

---@static
---@param cp number
---@return number
function m.Level3(cp) end

---@overload fun(cp:number): @static
---@static
---@param s string
---@return boolean
function m.IsSortable(s) end

---@overload fun(cp:number, flag:number): @static
---@static
---@param cp number
---@return boolean
function m.IsIgnorable(cp) end

---@static
---@param cp number
---@return boolean
function m.IsIgnorableSymbol(cp) end

---@static
---@param cp number
---@return boolean
function m.IsIgnorableNonSpacing(cp) end

---@static
---@param i number
---@return number
function m.ToKanaTypeInsensitive(i) end

---@static
---@param i number
---@return number
function m.ToWidthCompat(i) end

---@static
---@param c number
---@return boolean
function m.HasSpecialWeight(c) end

---@static
---@param c number
---@return number
function m.GetJapaneseDashType(c) end

---@static
---@param c number
---@return boolean
function m.IsHalfWidthKana(c) end

---@static
---@param c number
---@return boolean
function m.IsHiragana(c) end

---@static
---@param c number
---@return boolean
function m.IsJapaneseSmallLetter(c) end

---@static
---@param culture string
---@param cjkIndexer Mono.Globalization.Unicode.CodePointIndexer
---@param catTable System.Byte*
---@param lv1Table System.Byte*
---@param lv2Indexer Mono.Globalization.Unicode.CodePointIndexer
---@param lv2Table System.Byte*
---@return Mono.Globalization.Unicode.CodePointIndexer, System.Byte*, System.Byte*, Mono.Globalization.Unicode.CodePointIndexer, System.Byte*
function m.FillCJK(culture, cjkIndexer, catTable, lv1Table, lv2Indexer, lv2Table) end

Mono.Globalization.Unicode.MSCompatUnicodeTable = m
return m
