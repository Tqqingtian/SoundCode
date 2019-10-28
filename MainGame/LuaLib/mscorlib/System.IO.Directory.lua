---@class System.IO.Directory : System.Object
local m = {}

---@overload fun(path:string, searchPattern:string): @static
---@overload fun(path:string, searchPattern:string, searchOption:System.IO.SearchOption): @static
---@static
---@param path string
---@return string[]
function m.GetFiles(path) end

---@overload fun(path:string, searchPattern:string): @static
---@overload fun(path:string, searchPattern:string, searchOption:System.IO.SearchOption): @static
---@static
---@param path string
---@return string[]
function m.GetDirectories(path) end

---@overload fun(path:string, searchPattern:string): @static
---@overload fun(path:string, searchPattern:string, searchOption:System.IO.SearchOption): @static
---@static
---@param path string
---@return string[]
function m.GetFileSystemEntries(path) end

---@overload fun(path:string, searchPattern:string): @static
---@overload fun(path:string, searchPattern:string, searchOption:System.IO.SearchOption): @static
---@static
---@param path string
---@return System.Collections.Generic.IEnumerable_1_System_String_
function m.EnumerateDirectories(path) end

---@overload fun(path:string, searchPattern:string): @static
---@overload fun(path:string, searchPattern:string, searchOption:System.IO.SearchOption): @static
---@static
---@param path string
---@return System.Collections.Generic.IEnumerable_1_System_String_
function m.EnumerateFiles(path) end

---@overload fun(path:string, searchPattern:string): @static
---@overload fun(path:string, searchPattern:string, searchOption:System.IO.SearchOption): @static
---@static
---@param path string
---@return System.Collections.Generic.IEnumerable_1_System_String_
function m.EnumerateFileSystemEntries(path) end

---@static
---@param path string
---@return string
function m.GetDirectoryRoot(path) end

---@overload fun(path:string, directorySecurity:System.Security.AccessControl.DirectorySecurity): @static
---@static
---@param path string
---@return System.IO.DirectoryInfo
function m.CreateDirectory(path) end

---@overload fun(path:string, recursive:boolean) @static
---@static
---@param path string
function m.Delete(path) end

---@static
---@param path string
---@return boolean
function m.Exists(path) end

---@static
---@param path string
---@return System.DateTime
function m.GetLastAccessTime(path) end

---@static
---@param path string
---@return System.DateTime
function m.GetLastAccessTimeUtc(path) end

---@static
---@param path string
---@return System.DateTime
function m.GetLastWriteTime(path) end

---@static
---@param path string
---@return System.DateTime
function m.GetLastWriteTimeUtc(path) end

---@static
---@param path string
---@return System.DateTime
function m.GetCreationTime(path) end

---@static
---@param path string
---@return System.DateTime
function m.GetCreationTimeUtc(path) end

---@static
---@return string
function m.GetCurrentDirectory() end

---@static
---@return string[]
function m.GetLogicalDrives() end

---@static
---@param path string
---@return System.IO.DirectoryInfo
function m.GetParent(path) end

---@static
---@param sourceDirName string
---@param destDirName string
function m.Move(sourceDirName, destDirName) end

---@static
---@param path string
---@param directorySecurity System.Security.AccessControl.DirectorySecurity
function m.SetAccessControl(path, directorySecurity) end

---@static
---@param path string
---@param creationTime System.DateTime
function m.SetCreationTime(path, creationTime) end

---@static
---@param path string
---@param creationTimeUtc System.DateTime
function m.SetCreationTimeUtc(path, creationTimeUtc) end

---@static
---@param path string
function m.SetCurrentDirectory(path) end

---@static
---@param path string
---@param lastAccessTime System.DateTime
function m.SetLastAccessTime(path, lastAccessTime) end

---@static
---@param path string
---@param lastAccessTimeUtc System.DateTime
function m.SetLastAccessTimeUtc(path, lastAccessTimeUtc) end

---@static
---@param path string
---@param lastWriteTime System.DateTime
function m.SetLastWriteTime(path, lastWriteTime) end

---@static
---@param path string
---@param lastWriteTimeUtc System.DateTime
function m.SetLastWriteTimeUtc(path, lastWriteTimeUtc) end

---@overload fun(path:string): @static
---@static
---@param path string
---@param includeSections System.Security.AccessControl.AccessControlSections
---@return System.Security.AccessControl.DirectorySecurity
function m.GetAccessControl(path, includeSections) end

System.IO.Directory = m
return m
