---@class UnityEngine.Input : System.Object
---@field public simulateMouseWithTouches boolean @static
---@field public anyKey boolean @static
---@field public anyKeyDown boolean @static
---@field public inputString string @static
---@field public mousePosition UnityEngine.Vector3 @static
---@field public mouseScrollDelta UnityEngine.Vector2 @static
---@field public imeCompositionMode UnityEngine.IMECompositionMode @static
---@field public compositionString string @static
---@field public imeIsSelected boolean @static
---@field public compositionCursorPos UnityEngine.Vector2 @static
---@field public eatKeyPressOnTextFieldFocus boolean @static
---@field public mousePresent boolean @static
---@field public touchCount number @static
---@field public touchPressureSupported boolean @static
---@field public stylusTouchSupported boolean @static
---@field public touchSupported boolean @static
---@field public multiTouchEnabled boolean @static
---@field public isGyroAvailable boolean @static
---@field public deviceOrientation UnityEngine.DeviceOrientation @static
---@field public acceleration UnityEngine.Vector3 @static
---@field public compensateSensors boolean @static
---@field public accelerationEventCount number @static
---@field public backButtonLeavesApp boolean @static
---@field public location UnityEngine.LocationService @static
---@field public compass UnityEngine.Compass @static
---@field public gyro UnityEngine.Gyroscope @static
---@field public touches UnityEngine.Touch[] @static
---@field public accelerationEvents UnityEngine.AccelerationEvent[] @static
local m = {}

---@static
---@param axisName string
---@return number
function m.GetAxis(axisName) end

---@static
---@param axisName string
---@return number
function m.GetAxisRaw(axisName) end

---@static
---@param buttonName string
---@return boolean
function m.GetButton(buttonName) end

---@static
---@param buttonName string
---@return boolean
function m.GetButtonDown(buttonName) end

---@static
---@param buttonName string
---@return boolean
function m.GetButtonUp(buttonName) end

---@static
---@param button number
---@return boolean
function m.GetMouseButton(button) end

---@static
---@param button number
---@return boolean
function m.GetMouseButtonDown(button) end

---@static
---@param button number
---@return boolean
function m.GetMouseButtonUp(button) end

---@static
function m.ResetInputAxes() end

---@static
---@param joystickName string
---@return boolean
function m.IsJoystickPreconfigured(joystickName) end

---@static
---@return string[]
function m.GetJoystickNames() end

---@static
---@param index number
---@return UnityEngine.Touch
function m.GetTouch(index) end

---@static
---@param index number
---@return UnityEngine.AccelerationEvent
function m.GetAccelerationEvent(index) end

---@overload fun(name:string): @static
---@static
---@param key UnityEngine.KeyCode
---@return boolean
function m.GetKey(key) end

---@overload fun(name:string): @static
---@static
---@param key UnityEngine.KeyCode
---@return boolean
function m.GetKeyUp(key) end

---@overload fun(name:string): @static
---@static
---@param key UnityEngine.KeyCode
---@return boolean
function m.GetKeyDown(key) end

UnityEngine.Input = m
return m
