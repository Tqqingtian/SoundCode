---@class UnityEngine.Experimental.Rendering.GraphicsFormatUtility : System.Object
local m = {}

---@overload fun(format:UnityEngine.RenderTextureFormat, isSRGB:boolean): @static
---@static
---@param format UnityEngine.TextureFormat
---@param isSRGB boolean
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function m.GetGraphicsFormat(format, isSRGB) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return UnityEngine.TextureFormat
function m.GetTextureFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsSRGBFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return UnityEngine.RenderTextureFormat
function m.GetRenderTextureFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return number
function m.GetColorComponentCount(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return number
function m.GetAlphaComponentCount(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return number
function m.GetComponentCount(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsCompressedFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsPackedFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.Is16BitPackedFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function m.ConvertToAlphaFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsAlphaOnlyFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.HasAlphaChannel(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsDepthFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsStencilFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsIEEE754Format(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsFloatFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsHalfFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsUnsignedFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsSignedFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsNormFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsUNormFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsSNormFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsIntegerFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsUIntFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsSIntFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsDXTCFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsRGTCFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsBPTCFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsBCFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsPVRTCFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsETCFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function m.IsASTCFormat(format) end

---@static
---@param format UnityEngine.TextureFormat
---@return boolean
function m.IsCrunchFormat(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return number
function m.GetBlockSize(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return number
function m.GetBlockWidth(format) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return number
function m.GetBlockHeight(format) end

---@overload fun(width:number, height:number, depth:number, format:UnityEngine.Experimental.Rendering.GraphicsFormat): @static
---@static
---@param width number
---@param height number
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return number
function m.ComputeMipmapSize(width, height, format) end

UnityEngine.Experimental.Rendering.GraphicsFormatUtility = m
return m
