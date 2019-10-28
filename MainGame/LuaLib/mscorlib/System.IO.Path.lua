---@class System.IO.Path : System.Object
---@field public InvalidPathChars number[] @static
---@field public AltDirectorySeparatorChar number @static
---@field public DirectorySeparatorChar number @static
---@field public PathSeparator number @static
---@field public VolumeSeparatorChar number @static
local m = {}

---@static
---@param path string
---@param extension string
---@return string
function m.ChangeExtension(path, extension) end

---@overload fun(...:string|string[]): @static
---@overload fun(): @static
---@overload fun(path1:string, path2:string, path3:string): @static
---@overload fun(path1:string, path2:string, path3:string, path4:string): @static
---@static
---@param path1 string
---@param path2 string
---@return string
function m.Combine(path1, path2) end

---@static
---@param path string
---@return string
function m.GetDirectoryName(path) end

---@static
---@param path string
---@return string
function m.GetExtension(path) end

---@static
---@param path string
---@return string
function m.GetFileName(path) end

---@static
---@param path string
---@return string
function m.GetFileNameWithoutExtension(path) end

---@static
---@param path string
---@return string
function m.GetFullPath(path) end

---@static
---@param path string
---@return string
function m.GetPathRoot(path) end

---@static
---@return string
function m.GetTempFileName() end

---@static
---@return string
function m.GetTempPath() end

---@static
---@param path string
---@return boolean
function m.HasExtension(path) end

---@static
---@param path string
---@return boolean
function m.IsPathRooted(path) end

---@static
---@return number[]
function m.GetInvalidFileNameChars() end

---@static
---@return number[]
function m.GetInvalidPathChars() end

---@static
---@return string
function m.GetRandomFileName() end

System.IO.Path = m
return m
