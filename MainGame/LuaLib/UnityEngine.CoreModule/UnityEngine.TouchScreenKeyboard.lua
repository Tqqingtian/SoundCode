---@class UnityEngine.TouchScreenKeyboard : System.Object
---@field public isSupported boolean @static
---@field public hideInput boolean @static
---@field public area UnityEngine.Rect @static
---@field public visible boolean @static
---@field public text string
---@field public active boolean
---@field public done boolean
---@field public wasCanceled boolean
---@field public status UnityEngine.TouchScreenKeyboard.Status
---@field public characterLimit number
---@field public canGetSelection boolean
---@field public canSetSelection boolean
---@field public selection UnityEngine.RangeInt
---@field public type UnityEngine.TouchScreenKeyboardType
---@field public targetDisplay number
local m = {}

---@overload fun(text:string, keyboardType:UnityEngine.TouchScreenKeyboardType, autocorrection:boolean, multiline:boolean, secure:boolean, alert:boolean, textPlaceholder:string): @static
---@overload fun(text:string, keyboardType:UnityEngine.TouchScreenKeyboardType, autocorrection:boolean, multiline:boolean, secure:boolean, alert:boolean): @static
---@overload fun(text:string, keyboardType:UnityEngine.TouchScreenKeyboardType, autocorrection:boolean, multiline:boolean, secure:boolean): @static
---@overload fun(text:string, keyboardType:UnityEngine.TouchScreenKeyboardType, autocorrection:boolean, multiline:boolean): @static
---@overload fun(text:string, keyboardType:UnityEngine.TouchScreenKeyboardType, autocorrection:boolean): @static
---@overload fun(text:string, keyboardType:UnityEngine.TouchScreenKeyboardType): @static
---@overload fun(text:string): @static
---@static
---@param text string
---@param keyboardType UnityEngine.TouchScreenKeyboardType
---@param autocorrection boolean
---@param multiline boolean
---@param secure boolean
---@param alert boolean
---@param textPlaceholder string
---@param characterLimit number
---@return UnityEngine.TouchScreenKeyboard
function m.Open(text, keyboardType, autocorrection, multiline, secure, alert, textPlaceholder, characterLimit) end

UnityEngine.TouchScreenKeyboard = m
return m
