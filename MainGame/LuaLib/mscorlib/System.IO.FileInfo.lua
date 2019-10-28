---@class System.IO.FileInfo : System.IO.FileSystemInfo
---@field public Name string
---@field public Length number
---@field public DirectoryName string
---@field public Directory System.IO.DirectoryInfo
---@field public IsReadOnly boolean
---@field public Exists boolean
local m = {}

---@overload fun(includeSections:System.Security.AccessControl.AccessControlSections):
---@return System.Security.AccessControl.FileSecurity
function m:GetAccessControl() end

---@param fileSecurity System.Security.AccessControl.FileSecurity
function m:SetAccessControl(fileSecurity) end

---@return System.IO.StreamReader
function m:OpenText() end

---@return System.IO.StreamWriter
function m:CreateText() end

---@return System.IO.StreamWriter
function m:AppendText() end

---@overload fun(destFileName:string, overwrite:boolean):
---@param destFileName string
---@return System.IO.FileInfo
function m:CopyTo(destFileName) end

---@return System.IO.FileStream
function m:Create() end

---@virtual
function m:Delete() end

function m:Decrypt() end

function m:Encrypt() end

---@overload fun(mode:System.IO.FileMode, access:System.IO.FileAccess):
---@overload fun(mode:System.IO.FileMode, access:System.IO.FileAccess, share:System.IO.FileShare):
---@param mode System.IO.FileMode
---@return System.IO.FileStream
function m:Open(mode) end

---@return System.IO.FileStream
function m:OpenRead() end

---@return System.IO.FileStream
function m:OpenWrite() end

---@param destFileName string
function m:MoveTo(destFileName) end

---@overload fun(destinationFileName:string, destinationBackupFileName:string, ignoreMetadataErrors:boolean):
---@param destinationFileName string
---@param destinationBackupFileName string
---@return System.IO.FileInfo
function m:Replace(destinationFileName, destinationBackupFileName) end

---@virtual
---@return string
function m:ToString() end

System.IO.FileInfo = m
return m
