---@class UnityEngine.Android.Permission : System.ValueType
---@field public Camera string @static
---@field public Microphone string @static
---@field public FineLocation string @static
---@field public CoarseLocation string @static
---@field public ExternalStorageRead string @static
---@field public ExternalStorageWrite string @static
local m = {}

---@static
---@param permission string
---@return boolean
function m.HasUserAuthorizedPermission(permission) end

---@static
---@param permission string
function m.RequestUserPermission(permission) end

UnityEngine.Android.Permission = m
return m
