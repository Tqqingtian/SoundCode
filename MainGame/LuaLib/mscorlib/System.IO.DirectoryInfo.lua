---@class System.IO.DirectoryInfo : System.IO.FileSystemInfo
---@field public Exists boolean
---@field public Name string
---@field public Parent System.IO.DirectoryInfo
---@field public Root System.IO.DirectoryInfo
local m = {}

---@overload fun(directorySecurity:System.Security.AccessControl.DirectorySecurity)
function m:Create() end

---@overload fun(path:string, directorySecurity:System.Security.AccessControl.DirectorySecurity):
---@param path string
---@return System.IO.DirectoryInfo
function m:CreateSubdirectory(path) end

---@overload fun(searchPattern:string):
---@overload fun(searchPattern:string, searchOption:System.IO.SearchOption):
---@return System.IO.FileInfo[]
function m:GetFiles() end

---@overload fun(searchPattern:string):
---@overload fun(searchPattern:string, searchOption:System.IO.SearchOption):
---@return System.IO.DirectoryInfo[]
function m:GetDirectories() end

---@overload fun(searchPattern:string):
---@overload fun(searchPattern:string, searchOption:System.IO.SearchOption):
---@return System.IO.FileSystemInfo[]
function m:GetFileSystemInfos() end

---@overload fun(recursive:boolean)
---@virtual
function m:Delete() end

---@param destDirName string
function m:MoveTo(destDirName) end

---@virtual
---@return string
function m:ToString() end

---@overload fun(includeSections:System.Security.AccessControl.AccessControlSections):
---@return System.Security.AccessControl.DirectorySecurity
function m:GetAccessControl() end

---@param directorySecurity System.Security.AccessControl.DirectorySecurity
function m:SetAccessControl(directorySecurity) end

---@overload fun(searchPattern:string):
---@overload fun(searchPattern:string, searchOption:System.IO.SearchOption):
---@return System.Collections.Generic.IEnumerable_1_System_IO_DirectoryInfo_
function m:EnumerateDirectories() end

---@overload fun(searchPattern:string):
---@overload fun(searchPattern:string, searchOption:System.IO.SearchOption):
---@return System.Collections.Generic.IEnumerable_1_System_IO_FileInfo_
function m:EnumerateFiles() end

---@overload fun(searchPattern:string):
---@overload fun(searchPattern:string, searchOption:System.IO.SearchOption):
---@return System.Collections.Generic.IEnumerable_1_System_IO_FileSystemInfo_
function m:EnumerateFileSystemInfos() end

System.IO.DirectoryInfo = m
return m
