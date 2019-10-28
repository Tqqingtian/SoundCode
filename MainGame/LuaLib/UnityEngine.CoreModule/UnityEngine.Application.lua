---@class UnityEngine.Application : System.Object
---@field public isLoadingLevel boolean @static
---@field public streamedBytes number @static
---@field public webSecurityEnabled boolean @static
---@field public isPlaying boolean @static
---@field public isFocused boolean @static
---@field public platform UnityEngine.RuntimePlatform @static
---@field public buildGUID string @static
---@field public isMobilePlatform boolean @static
---@field public isConsolePlatform boolean @static
---@field public runInBackground boolean @static
---@field public isBatchMode boolean @static
---@field public dataPath string @static
---@field public streamingAssetsPath string @static
---@field public persistentDataPath string @static
---@field public temporaryCachePath string @static
---@field public absoluteURL string @static
---@field public unityVersion string @static
---@field public version string @static
---@field public installerName string @static
---@field public identifier string @static
---@field public installMode UnityEngine.ApplicationInstallMode @static
---@field public sandboxType UnityEngine.ApplicationSandboxType @static
---@field public productName string @static
---@field public companyName string @static
---@field public cloudProjectId string @static
---@field public targetFrameRate number @static
---@field public systemLanguage UnityEngine.SystemLanguage @static
---@field public stackTraceLogType UnityEngine.StackTraceLogType @static
---@field public consoleLogPath string @static
---@field public backgroundLoadingPriority UnityEngine.ThreadPriority @static
---@field public internetReachability UnityEngine.NetworkReachability @static
---@field public genuine boolean @static
---@field public genuineCheckAvailable boolean @static
---@field public isShowingSplashScreen boolean @static
---@field public isPlayer boolean @static
---@field public isEditor boolean @static
---@field public levelCount number @static
---@field public loadedLevel number @static
---@field public loadedLevelName string @static
local m = {}

---@overload fun() @static
---@static
---@param exitCode number
function m.Quit(exitCode) end

---@static
function m.CancelQuit() end

---@static
function m.Unload() end

---@overload fun(levelName:string): @static
---@static
---@param levelIndex number
---@return number
function m.GetStreamProgressForLevel(levelIndex) end

---@overload fun(levelName:string): @static
---@static
---@param levelIndex number
---@return boolean
function m.CanStreamedLevelBeLoaded(levelIndex) end

---@static
---@param obj UnityEngine.Object
---@return boolean
function m.IsPlaying(obj) end

---@static
---@return string[]
function m.GetBuildTags() end

---@static
---@param buildTags string[]
function m.SetBuildTags(buildTags) end

---@static
---@return boolean
function m.HasProLicense() end

---@static
---@param script string
function m.ExternalEval(script) end

---@static
---@param delegateMethod fun(advertisingId:string, trackingEnabled:boolean, errorMsg:string)
---@return boolean
function m.RequestAdvertisingIdentifierAsync(delegateMethod) end

---@static
---@param url string
function m.OpenURL(url) end

---@static
---@param mode number
function m.ForceCrash(mode) end

---@static
---@param logType UnityEngine.LogType
---@return UnityEngine.StackTraceLogType
function m.GetStackTraceLogType(logType) end

---@static
---@param logType UnityEngine.LogType
---@param stackTraceType UnityEngine.StackTraceLogType
function m.SetStackTraceLogType(logType, stackTraceType) end

---@static
---@param mode UnityEngine.UserAuthorization
---@return UnityEngine.AsyncOperation
function m.RequestUserAuthorization(mode) end

---@static
---@param mode UnityEngine.UserAuthorization
---@return boolean
function m.HasUserAuthorization(mode) end

---@static
---@param value fun()
function m.add_lowMemory(value) end

---@static
---@param value fun()
function m.remove_lowMemory(value) end

---@static
---@param value fun(condition:string, stackTrace:string, type:UnityEngine.LogType)
function m.add_logMessageReceived(value) end

---@static
---@param value fun(condition:string, stackTrace:string, type:UnityEngine.LogType)
function m.remove_logMessageReceived(value) end

---@static
---@param value fun(condition:string, stackTrace:string, type:UnityEngine.LogType)
function m.add_logMessageReceivedThreaded(value) end

---@static
---@param value fun(condition:string, stackTrace:string, type:UnityEngine.LogType)
function m.remove_logMessageReceivedThreaded(value) end

---@overload fun(functionName:string) @static
---@static
---@param functionName string
---@param ... any|any[]
function m.ExternalCall(functionName, ...) end

---@static
---@param o UnityEngine.Object
function m.DontDestroyOnLoad(o) end

---@overload fun(filename:string) @static
---@static
---@param filename string
---@param superSize number
function m.CaptureScreenshot(filename, superSize) end

---@static
---@param value fun()
function m.add_onBeforeRender(value) end

---@static
---@param value fun()
function m.remove_onBeforeRender(value) end

---@static
---@param value fun(obj:boolean)
function m.add_focusChanged(value) end

---@static
---@param value fun(obj:boolean)
function m.remove_focusChanged(value) end

---@static
---@param value fun():
function m.add_wantsToQuit(value) end

---@static
---@param value fun():
function m.remove_wantsToQuit(value) end

---@static
---@param value fun()
function m.add_quitting(value) end

---@static
---@param value fun()
function m.remove_quitting(value) end

---@static
---@param handler fun(condition:string, stackTrace:string, type:UnityEngine.LogType)
function m.RegisterLogCallback(handler) end

---@static
---@param handler fun(condition:string, stackTrace:string, type:UnityEngine.LogType)
function m.RegisterLogCallbackThreaded(handler) end

---@overload fun(name:string) @static
---@static
---@param index number
function m.LoadLevel(index) end

---@overload fun(name:string) @static
---@static
---@param index number
function m.LoadLevelAdditive(index) end

---@overload fun(levelName:string): @static
---@static
---@param index number
---@return UnityEngine.AsyncOperation
function m.LoadLevelAsync(index) end

---@overload fun(levelName:string): @static
---@static
---@param index number
---@return UnityEngine.AsyncOperation
function m.LoadLevelAdditiveAsync(index) end

---@overload fun(scenePath:string): @static
---@static
---@param index number
---@return boolean
function m.UnloadLevel(index) end

UnityEngine.Application = m
return m
