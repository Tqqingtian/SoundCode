---@class System.Console : System.Object
---@field public Error System.IO.TextWriter @static
---@field public Out System.IO.TextWriter @static
---@field public In System.IO.TextReader @static
---@field public InputEncoding System.Text.Encoding @static
---@field public OutputEncoding System.Text.Encoding @static
---@field public BackgroundColor System.ConsoleColor @static
---@field public BufferHeight number @static
---@field public BufferWidth number @static
---@field public CapsLock boolean @static
---@field public CursorLeft number @static
---@field public CursorTop number @static
---@field public CursorSize number @static
---@field public CursorVisible boolean @static
---@field public ForegroundColor System.ConsoleColor @static
---@field public KeyAvailable boolean @static
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
local m = {}

---@overload fun(bufferSize:number): @static
---@static
---@return System.IO.Stream
function m.OpenStandardError() end

---@overload fun(bufferSize:number): @static
---@static
---@return System.IO.Stream
function m.OpenStandardInput() end

---@overload fun(bufferSize:number): @static
---@static
---@return System.IO.Stream
function m.OpenStandardOutput() end

---@static
---@param newError System.IO.TextWriter
function m.SetError(newError) end

---@static
---@param newIn System.IO.TextReader
function m.SetIn(newIn) end

---@static
---@param newOut System.IO.TextWriter
function m.SetOut(newOut) end

---@overload fun(value:number) @static
---@overload fun(buffer:number[]) @static
---@overload fun(value:System.Decimal) @static
---@overload fun(value:number) @static
---@overload fun(value:number) @static
---@overload fun(value:number) @static
---@overload fun(value:any) @static
---@overload fun(value:number) @static
---@overload fun(value:string) @static
---@overload fun(value:number) @static
---@overload fun(value:number) @static
---@overload fun(format:string, arg0:any) @static
---@overload fun(format:string, ...:any|any[]) @static
---@overload fun(format:string) @static
---@overload fun(buffer:number[], index:number, count:number) @static
---@overload fun(format:string, arg0:any, arg1:any) @static
---@overload fun(format:string, arg0:any, arg1:any, arg2:any) @static
---@overload fun(format:string, arg0:any, arg1:any, arg2:any, arg3:any) @static
---@static
---@param value boolean
function m.Write(value) end

---@overload fun(value:boolean) @static
---@overload fun(value:number) @static
---@overload fun(buffer:number[]) @static
---@overload fun(value:System.Decimal) @static
---@overload fun(value:number) @static
---@overload fun(value:number) @static
---@overload fun(value:number) @static
---@overload fun(value:any) @static
---@overload fun(value:number) @static
---@overload fun(value:string) @static
---@overload fun(value:number) @static
---@overload fun(value:number) @static
---@overload fun(format:string, arg0:any) @static
---@overload fun(format:string, ...:any|any[]) @static
---@overload fun(format:string) @static
---@overload fun(buffer:number[], index:number, count:number) @static
---@overload fun(format:string, arg0:any, arg1:any) @static
---@overload fun(format:string, arg0:any, arg1:any, arg2:any) @static
---@overload fun(format:string, arg0:any, arg1:any, arg2:any, arg3:any) @static
---@static
function m.WriteLine() end

---@static
---@return number
function m.Read() end

---@static
---@return string
function m.ReadLine() end

---@overload fun(frequency:number, duration:number) @static
---@static
function m.Beep() end

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

---@overload fun(intercept:boolean): @static
---@static
---@return System.ConsoleKeyInfo
function m.ReadKey() end

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

---@static
---@param value fun(sender:any, e:System.ConsoleCancelEventArgs)
function m.add_CancelKeyPress(value) end

---@static
---@param value fun(sender:any, e:System.ConsoleCancelEventArgs)
function m.remove_CancelKeyPress(value) end

System.Console = m
return m
