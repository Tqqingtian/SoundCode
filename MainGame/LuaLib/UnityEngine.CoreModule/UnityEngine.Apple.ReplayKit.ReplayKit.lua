---@class UnityEngine.Apple.ReplayKit.ReplayKit : System.Object
---@field public APIAvailable boolean @static
---@field public broadcastingAPIAvailable boolean @static
---@field public recordingAvailable boolean @static
---@field public isRecording boolean @static
---@field public isBroadcasting boolean @static
---@field public cameraEnabled boolean @static
---@field public microphoneEnabled boolean @static
---@field public broadcastURL string @static
---@field public lastError string @static
local m = {}

---@overload fun(enableMicrophone:boolean): @static
---@overload fun(): @static
---@static
---@param enableMicrophone boolean
---@param enableCamera boolean
---@return boolean
function m.StartRecording(enableMicrophone, enableCamera) end

---@overload fun(callback:fun(hasStarted:boolean, errorMessage:string), enableMicrophone:boolean) @static
---@overload fun(callback:fun(hasStarted:boolean, errorMessage:string)) @static
---@static
---@param callback fun(hasStarted:boolean, errorMessage:string)
---@param enableMicrophone boolean
---@param enableCamera boolean
function m.StartBroadcasting(callback, enableMicrophone, enableCamera) end

---@static
---@return boolean
function m.StopRecording() end

---@static
function m.StopBroadcasting() end

---@static
---@return boolean
function m.Preview() end

---@static
---@return boolean
function m.Discard() end

---@static
---@param posX number
---@param posY number
---@return boolean
function m.ShowCameraPreviewAt(posX, posY) end

---@static
function m.HideCameraPreview() end

UnityEngine.Apple.ReplayKit.ReplayKit = m
return m
