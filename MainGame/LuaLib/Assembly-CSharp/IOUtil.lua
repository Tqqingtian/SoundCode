---@class IOUtil : System.Object
local m = {}

---@static
---@param filePath string
---@return string
function m.GetFileText(filePath) end

---@static
---@param filePath string
---@param content string
function m.CreateTextFile(filePath, content) end

---@static
---@param filePath string
function m.DeleteFile(filePath) end

---@static
---@param sourceDirName string
---@param destDirName string
function m.CopyDirectory(sourceDirName, destDirName) end

---@static
---@param path string
---@return string
function m.GetFileBuffer(path) end

IOUtil = m
return m
