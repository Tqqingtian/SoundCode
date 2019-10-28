---@class UnityEngine.Mathf : System.ValueType
---@field public PI number @static
---@field public Infinity number @static
---@field public NegativeInfinity number @static
---@field public Deg2Rad number @static
---@field public Rad2Deg number @static
---@field public Epsilon number @static
local m = {}

---@static
---@param value number
---@return number
function m.ClosestPowerOfTwo(value) end

---@static
---@param value number
---@return boolean
function m.IsPowerOfTwo(value) end

---@static
---@param value number
---@return number
function m.NextPowerOfTwo(value) end

---@static
---@param value number
---@return number
function m.GammaToLinearSpace(value) end

---@static
---@param value number
---@return number
function m.LinearToGammaSpace(value) end

---@static
---@param kelvin number
---@return UnityEngine.Color
function m.CorrelatedColorTemperatureToRGB(kelvin) end

---@static
---@param val number
---@return number
function m.FloatToHalf(val) end

---@static
---@param val number
---@return number
function m.HalfToFloat(val) end

---@static
---@param x number
---@param y number
---@return number
function m.PerlinNoise(x, y) end

---@static
---@param f number
---@return number
function m.Sin(f) end

---@static
---@param f number
---@return number
function m.Cos(f) end

---@static
---@param f number
---@return number
function m.Tan(f) end

---@static
---@param f number
---@return number
function m.Asin(f) end

---@static
---@param f number
---@return number
function m.Acos(f) end

---@static
---@param f number
---@return number
function m.Atan(f) end

---@static
---@param y number
---@param x number
---@return number
function m.Atan2(y, x) end

---@static
---@param f number
---@return number
function m.Sqrt(f) end

---@overload fun(value:number): @static
---@static
---@param f number
---@return number
function m.Abs(f) end

---@overload fun(...:number|number[]): @static
---@overload fun(): @static
---@overload fun(a:number, b:number): @static
---@overload fun(...:number|number[]): @static
---@overload fun(): @static
---@static
---@param a number
---@param b number
---@return number
function m.Min(a, b) end

---@overload fun(...:number|number[]): @static
---@overload fun(): @static
---@overload fun(a:number, b:number): @static
---@overload fun(...:number|number[]): @static
---@overload fun(): @static
---@static
---@param a number
---@param b number
---@return number
function m.Max(a, b) end

---@static
---@param f number
---@param p number
---@return number
function m.Pow(f, p) end

---@static
---@param power number
---@return number
function m.Exp(power) end

---@overload fun(f:number): @static
---@static
---@param f number
---@param p number
---@return number
function m.Log(f, p) end

---@static
---@param f number
---@return number
function m.Log10(f) end

---@static
---@param f number
---@return number
function m.Ceil(f) end

---@static
---@param f number
---@return number
function m.Floor(f) end

---@static
---@param f number
---@return number
function m.Round(f) end

---@static
---@param f number
---@return number
function m.CeilToInt(f) end

---@static
---@param f number
---@return number
function m.FloorToInt(f) end

---@static
---@param f number
---@return number
function m.RoundToInt(f) end

---@static
---@param f number
---@return number
function m.Sign(f) end

---@overload fun(value:number, min:number, max:number): @static
---@static
---@param value number
---@param min number
---@param max number
---@return number
function m.Clamp(value, min, max) end

---@static
---@param value number
---@return number
function m.Clamp01(value) end

---@static
---@param a number
---@param b number
---@param t number
---@return number
function m.Lerp(a, b, t) end

---@static
---@param a number
---@param b number
---@param t number
---@return number
function m.LerpUnclamped(a, b, t) end

---@static
---@param a number
---@param b number
---@param t number
---@return number
function m.LerpAngle(a, b, t) end

---@static
---@param current number
---@param target number
---@param maxDelta number
---@return number
function m.MoveTowards(current, target, maxDelta) end

---@static
---@param current number
---@param target number
---@param maxDelta number
---@return number
function m.MoveTowardsAngle(current, target, maxDelta) end

---@static
---@param from number
---@param to number
---@param t number
---@return number
function m.SmoothStep(from, to, t) end

---@static
---@param value number
---@param absmax number
---@param gamma number
---@return number
function m.Gamma(value, absmax, gamma) end

---@static
---@param a number
---@param b number
---@return boolean
function m.Approximately(a, b) end

---@overload fun(current:number, target:number, currentVelocity:System.Single, smoothTime:number):(, System.Single) @static
---@overload fun(current:number, target:number, currentVelocity:System.Single, smoothTime:number, maxSpeed:number, deltaTime:number):(, System.Single) @static
---@static
---@param current number
---@param target number
---@param currentVelocity System.Single
---@param smoothTime number
---@param maxSpeed number
---@return number, System.Single
function m.SmoothDamp(current, target, currentVelocity, smoothTime, maxSpeed) end

---@overload fun(current:number, target:number, currentVelocity:System.Single, smoothTime:number):(, System.Single) @static
---@overload fun(current:number, target:number, currentVelocity:System.Single, smoothTime:number, maxSpeed:number, deltaTime:number):(, System.Single) @static
---@static
---@param current number
---@param target number
---@param currentVelocity System.Single
---@param smoothTime number
---@param maxSpeed number
---@return number, System.Single
function m.SmoothDampAngle(current, target, currentVelocity, smoothTime, maxSpeed) end

---@static
---@param t number
---@param length number
---@return number
function m.Repeat(t, length) end

---@static
---@param t number
---@param length number
---@return number
function m.PingPong(t, length) end

---@static
---@param a number
---@param b number
---@param value number
---@return number
function m.InverseLerp(a, b, value) end

---@static
---@param current number
---@param target number
---@return number
function m.DeltaAngle(current, target) end

UnityEngine.Mathf = m
return m
