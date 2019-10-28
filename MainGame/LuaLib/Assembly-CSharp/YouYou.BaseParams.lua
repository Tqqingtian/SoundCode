---@class TQ.BaseParams : System.Object
---@field public IntParam1 number
---@field public IntParam2 number
---@field public IntParam3 number
---@field public IntParam4 number
---@field public IntParam5 number
---@field public FloatParam1 number
---@field public FloatParam2 number
---@field public FloatParam3 number
---@field public FloatParam4 number
---@field public FloatParam5 number
---@field public StringParam1 string
---@field public StringParam2 string
---@field public StringParam3 string
---@field public StringParam4 string
---@field public StringParam5 string
---@field public ULongParams1 number
---@field public ULongParams2 number
---@field public ULongParams3 number
---@field public ULongParams4 number
---@field public ULongParams5 number
local m = {}

function m:Reset() end

TQ.BaseParams = m
return m
