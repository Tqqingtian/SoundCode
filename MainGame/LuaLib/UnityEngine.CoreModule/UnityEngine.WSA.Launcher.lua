---@class UnityEngine.WSA.Launcher : System.Object
local m = {}

---@static
---@param folder UnityEngine.WSA.Folder
---@param relativeFilePath string
---@param showWarning boolean
function m.LaunchFile(folder, relativeFilePath, showWarning) end

---@static
---@param fileExtension string
function m.LaunchFileWithPicker(fileExtension) end

---@static
---@param uri string
---@param showWarning boolean
function m.LaunchUri(uri, showWarning) end

UnityEngine.WSA.Launcher = m
return m
