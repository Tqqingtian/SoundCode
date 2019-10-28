---@class System.IO.File : System.Object
local m = {}

---@overload fun(path:string, contents:string, encoding:System.Text.Encoding) @static
---@static
---@param path string
---@param contents string
function m.AppendAllText(path, contents) end

---@static
---@param path string
---@return System.IO.StreamWriter
function m.AppendText(path) end

---@overload fun(sourceFileName:string, destFileName:string, overwrite:boolean) @static
---@static
---@param sourceFileName string
---@param destFileName string
function m.Copy(sourceFileName, destFileName) end

---@overload fun(path:string, bufferSize:number): @static
---@overload fun(path:string, bufferSize:number, options:System.IO.FileOptions): @static
---@overload fun(path:string, bufferSize:number, options:System.IO.FileOptions, fileSecurity:System.Security.AccessControl.FileSecurity): @static
---@static
---@param path string
---@return System.IO.FileStream
function m.Create(path) end

---@static
---@param path string
---@return System.IO.StreamWriter
function m.CreateText(path) end

---@static
---@param path string
function m.Delete(path) end

---@static
---@param path string
---@return boolean
function m.Exists(path) end

---@overload fun(path:string, includeSections:System.Security.AccessControl.AccessControlSections): @static
---@static
---@param path string
---@return System.Security.AccessControl.FileSecurity
function m.GetAccessControl(path) end

---@static
---@param path string
---@return System.IO.FileAttributes
function m.GetAttributes(path) end

---@static
---@param path string
---@return System.DateTime
function m.GetCreationTime(path) end

---@static
---@param path string
---@return System.DateTime
function m.GetCreationTimeUtc(path) end

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
---@param sourceFileName string
---@param destFileName string
function m.Move(sourceFileName, destFileName) end

---@overload fun(path:string, mode:System.IO.FileMode, access:System.IO.FileAccess): @static
---@overload fun(path:string, mode:System.IO.FileMode, access:System.IO.FileAccess, share:System.IO.FileShare): @static
---@static
---@param path string
---@param mode System.IO.FileMode
---@return System.IO.FileStream
function m.Open(path, mode) end

---@static
---@param path string
---@return System.IO.FileStream
function m.OpenRead(path) end

---@static
---@param path string
---@return System.IO.StreamReader
function m.OpenText(path) end

---@static
---@param path string
---@return System.IO.FileStream
function m.OpenWrite(path) end

---@overload fun(sourceFileName:string, destinationFileName:string, destinationBackupFileName:string, ignoreMetadataErrors:boolean) @static
---@static
---@param sourceFileName string
---@param destinationFileName string
---@param destinationBackupFileName string
function m.Replace(sourceFileName, destinationFileName, destinationBackupFileName) end

---@static
---@param path string
---@param fileSecurity System.Security.AccessControl.FileSecurity
function m.SetAccessControl(path, fileSecurity) end

---@static
---@param path string
---@param fileAttributes System.IO.FileAttributes
function m.SetAttributes(path, fileAttributes) end

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

---@static
---@param path string
---@return string
function m.ReadAllBytes(path) end

---@overload fun(path:string, encoding:System.Text.Encoding): @static
---@static
---@param path string
---@return string[]
function m.ReadAllLines(path) end

---@overload fun(path:string, encoding:System.Text.Encoding): @static
---@static
---@param path string
---@return string
function m.ReadAllText(path) end

---@static
---@param path string
---@param bytes string
function m.WriteAllBytes(path, bytes) end

---@overload fun(path:string, contents:string[], encoding:System.Text.Encoding) @static
---@overload fun(path:string, contents:System.Collections.Generic.IEnumerable_1_System_String_) @static
---@overload fun(path:string, contents:System.Collections.Generic.IEnumerable_1_System_String_, encoding:System.Text.Encoding) @static
---@static
---@param path string
---@param contents string[]
function m.WriteAllLines(path, contents) end

---@overload fun(path:string, contents:string, encoding:System.Text.Encoding) @static
---@static
---@param path string
---@param contents string
function m.WriteAllText(path, contents) end

---@static
---@param path string
function m.Encrypt(path) end

---@static
---@param path string
function m.Decrypt(path) end

---@overload fun(path:string, encoding:System.Text.Encoding): @static
---@static
---@param path string
---@return System.Collections.Generic.IEnumerable_1_System_String_
function m.ReadLines(path) end

---@overload fun(path:string, contents:System.Collections.Generic.IEnumerable_1_System_String_, encoding:System.Text.Encoding) @static
---@static
---@param path string
---@param contents System.Collections.Generic.IEnumerable_1_System_String_
function m.AppendAllLines(path, contents) end

System.IO.File = m
return m
