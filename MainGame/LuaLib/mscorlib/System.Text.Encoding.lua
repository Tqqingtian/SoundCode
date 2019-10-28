---@class System.Text.Encoding : System.Object
---@field public ASCII System.Text.Encoding @static
---@field public Default System.Text.Encoding @static
---@field public Unicode System.Text.Encoding @static
---@field public BigEndianUnicode System.Text.Encoding @static
---@field public UTF7 System.Text.Encoding @static
---@field public UTF8 System.Text.Encoding @static
---@field public UTF32 System.Text.Encoding @static
---@field public BodyName string
---@field public EncodingName string
---@field public HeaderName string
---@field public WebName string
---@field public WindowsCodePage number
---@field public IsBrowserDisplay boolean
---@field public IsBrowserSave boolean
---@field public IsMailNewsDisplay boolean
---@field public IsMailNewsSave boolean
---@field public IsSingleByte boolean
---@field public EncoderFallback System.Text.EncoderFallback
---@field public DecoderFallback System.Text.DecoderFallback
---@field public IsReadOnly boolean
---@field public CodePage number
local m = {}

---@overload fun(srcEncoding:System.Text.Encoding, dstEncoding:System.Text.Encoding, bytes:string, index:number, count:number): @static
---@static
---@param srcEncoding System.Text.Encoding
---@param dstEncoding System.Text.Encoding
---@param bytes string
---@return string
function m.Convert(srcEncoding, dstEncoding, bytes) end

---@static
---@param provider System.Text.EncodingProvider
function m.RegisterProvider(provider) end

---@overload fun(codepage:number, encoderFallback:System.Text.EncoderFallback, decoderFallback:System.Text.DecoderFallback): @static
---@overload fun(name:string): @static
---@overload fun(name:string, encoderFallback:System.Text.EncoderFallback, decoderFallback:System.Text.DecoderFallback): @static
---@static
---@param codepage number
---@return System.Text.Encoding
function m.GetEncoding(codepage) end

---@static
---@return System.Text.EncodingInfo[]
function m.GetEncodings() end

---@virtual
---@return string
function m:GetPreamble() end

---@virtual
---@return any
function m:Clone() end

---@overload fun(s:string): @virtual
---@overload fun(chars:number[], index:number, count:number): @abstract
---@overload fun(chars:System.Char*, count:number): @virtual
---@virtual
---@param chars number[]
---@return number
function m:GetByteCount(chars) end

---@overload fun(chars:number[], index:number, count:number): @virtual
---@overload fun(chars:number[], charIndex:number, charCount:number, bytes:string, byteIndex:number): @abstract
---@overload fun(s:string): @virtual
---@overload fun(s:string, charIndex:number, charCount:number, bytes:string, byteIndex:number): @virtual
---@overload fun(chars:System.Char*, charCount:number, bytes:System.Byte*, byteCount:number): @virtual
---@virtual
---@param chars number[]
---@return string
function m:GetBytes(chars) end

---@overload fun(bytes:string, index:number, count:number): @abstract
---@overload fun(bytes:System.Byte*, count:number): @virtual
---@virtual
---@param bytes string
---@return number
function m:GetCharCount(bytes) end

---@overload fun(bytes:string, index:number, count:number): @virtual
---@overload fun(bytes:string, byteIndex:number, byteCount:number, chars:number[], charIndex:number): @abstract
---@overload fun(bytes:System.Byte*, byteCount:number, chars:System.Char*, charCount:number): @virtual
---@virtual
---@param bytes string
---@return number[]
function m:GetChars(bytes) end

---@overload fun(bytes:string): @virtual
---@overload fun(bytes:string, index:number, count:number): @virtual
---@param bytes System.Byte*
---@param byteCount number
---@return string
function m:GetString(bytes, byteCount) end

---@overload fun(form:System.Text.NormalizationForm): @virtual
---@return boolean
function m:IsAlwaysNormalized() end

---@virtual
---@return System.Text.Decoder
function m:GetDecoder() end

---@virtual
---@return System.Text.Encoder
function m:GetEncoder() end

---@abstract
---@param charCount number
---@return number
function m:GetMaxByteCount(charCount) end

---@abstract
---@param byteCount number
---@return number
function m:GetMaxCharCount(byteCount) end

---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@virtual
---@return number
function m:GetHashCode() end

System.Text.Encoding = m
return m
