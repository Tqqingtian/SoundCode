---@class Mono.Security.Uri : System.Object
---@field public SchemeDelimiter string @static
---@field public UriSchemeFile string @static
---@field public UriSchemeFtp string @static
---@field public UriSchemeGopher string @static
---@field public UriSchemeHttp string @static
---@field public UriSchemeHttps string @static
---@field public UriSchemeMailto string @static
---@field public UriSchemeNews string @static
---@field public UriSchemeNntp string @static
---@field public AbsolutePath string
---@field public AbsoluteUri string
---@field public Authority string
---@field public Fragment string
---@field public Host string
---@field public IsDefaultPort boolean
---@field public IsFile boolean
---@field public IsLoopback boolean
---@field public IsUnc boolean
---@field public LocalPath string
---@field public PathAndQuery string
---@field public Port number
---@field public Query string
---@field public Scheme string
---@field public Segments string[]
---@field public UserEscaped boolean
---@field public UserInfo string
local m = {}

---@static
---@param schemeName string
---@return boolean
function m.CheckSchemeName(schemeName) end

---@virtual
---@param comparant any
---@return boolean
function m:Equals(comparant) end

---@virtual
---@return number
function m:GetHashCode() end

---@param part Mono.Security.UriPartial
---@return string
function m:GetLeftPart(part) end

---@static
---@param digit number
---@return number
function m.FromHex(digit) end

---@static
---@param character number
---@return string
function m.HexEscape(character) end

---@static
---@param pattern string
---@param index System.Int32
---@return number, System.Int32
function m.HexUnescape(pattern, index) end

---@static
---@param digit number
---@return boolean
function m.IsHexDigit(digit) end

---@static
---@param pattern string
---@param index number
---@return boolean
function m.IsHexEncoding(pattern, index) end

---@param toUri Mono.Security.Uri
---@return string
function m:MakeRelative(toUri) end

---@virtual
---@return string
function m:ToString() end

Mono.Security.Uri = m
return m
