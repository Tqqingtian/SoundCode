---@class System.Environment : System.Object
---@field public CommandLine string @static
---@field public CurrentDirectory string @static
---@field public CurrentManagedThreadId number @static
---@field public ExitCode number @static
---@field public HasShutdownStarted boolean @static
---@field public MachineName string @static
---@field public NewLine string @static
---@field public OSVersion System.OperatingSystem @static
---@field public StackTrace string @static
---@field public SystemDirectory string @static
---@field public TickCount number @static
---@field public UserDomainName string @static
---@field public UserInteractive boolean @static
---@field public UserName string @static
---@field public Version System.Version @static
---@field public WorkingSet number @static
---@field public Is64BitOperatingSystem boolean @static
---@field public SystemPageSize number @static
---@field public Is64BitProcess boolean @static
---@field public ProcessorCount number @static
local m = {}

---@static
---@param exitCode number
function m.Exit(exitCode) end

---@static
---@param name string
---@return string
function m.ExpandEnvironmentVariables(name) end

---@static
---@return string[]
function m.GetCommandLineArgs() end

---@overload fun(variable:string, target:System.EnvironmentVariableTarget): @static
---@static
---@param variable string
---@return string
function m.GetEnvironmentVariable(variable) end

---@overload fun(target:System.EnvironmentVariableTarget): @static
---@static
---@return System.Collections.IDictionary
function m.GetEnvironmentVariables() end

---@overload fun(folder:System.Environment.SpecialFolder, option:System.Environment.SpecialFolderOption): @static
---@static
---@param folder System.Environment.SpecialFolder
---@return string
function m.GetFolderPath(folder) end

---@static
---@return string[]
function m.GetLogicalDrives() end

---@overload fun(variable:string, value:string, target:System.EnvironmentVariableTarget) @static
---@static
---@param variable string
---@param value string
function m.SetEnvironmentVariable(variable, value) end

---@overload fun(message:string, exception:System.Exception) @static
---@static
---@param message string
function m.FailFast(message) end

System.Environment = m
return m
