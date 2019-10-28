---@class System.ConsoleDriver : System.Object
---@field public Initialized boolean @static
---@field public BackgroundColor System.ConsoleColor @static
---@field public BufferHeight number @static
---@field public BufferWidth number @static
---@field public CapsLock boolean @static
---@field public CursorLeft number @static
---@field public CursorSize number @static
---@field public CursorTop number @static
---@field public CursorVisible boolean @static
---@field public KeyAvailable boolean @static
---@field public ForegroundColor System.ConsoleColor @static
---@field public LargestWindowHeight number @static
---@field public LargestWindowWidth number @static
---@field public NumberLock boolean @static
---@field public Title string @static
---@field public TreatControlCAsInput boolean @static
---@field public WindowHeight number @static
---@field public WindowLeft number @static
---@field public WindowTop number @static
---@field public WindowWidth number @static
---@field public IsErrorRedirected boolean @static
---@field public IsOutputRedirected boolean @static
---@field public IsInputRedirected boolean @static
---@field public IsConsole boolean @static
local m = {}

---@static
---@param frequency number
---@param duration number
function m.Beep(frequency, duration) end

---@static
function m.Clear() end

---@overload fun(sourceLeft:number, sourceTop:number, sourceWidth:number, sourceHeight:number, targetLeft:number, targetTop:number, sourceChar:number, sourceForeColor:System.ConsoleColor, sourceBackColor:System.ConsoleColor) @static
---@static
---@param sourceLeft number
---@param sourceTop number
---@param sourceWidth number
---@param sourceHeight number
---@param targetLeft number
---@param targetTop number
function m.MoveBufferArea(sourceLeft, sourceTop, sourceWidth, sourceHeight, targetLeft, targetTop) end

---@static
function m.Init() end

---@static
---@return number
function m.Read() end

---@static
---@return string
function m.ReadLine() end

---@static
---@param intercept boolean
---@return System.ConsoleKeyInfo
function m.ReadKey(intercept) end

---@static
function m.ResetColor() end

---@static
---@param width number
---@param height number
function m.SetBufferSize(width, height) end

---@static
---@param left number
---@param top number
function m.SetCursorPosition(left, top) end

---@static
---@param left number
---@param top number
function m.SetWindowPosition(left, top) end

---@static
---@param width number
---@param height number
function m.SetWindowSize(width, height) end

System.ConsoleDriver = m
return m
