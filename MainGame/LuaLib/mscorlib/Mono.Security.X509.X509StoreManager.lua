---@class Mono.Security.X509.X509StoreManager : System.Object
---@field public CurrentUser Mono.Security.X509.X509Stores @static
---@field public LocalMachine Mono.Security.X509.X509Stores @static
---@field public NewCurrentUser Mono.Security.X509.X509Stores @static
---@field public NewLocalMachine Mono.Security.X509.X509Stores @static
---@field public IntermediateCACertificates Mono.Security.X509.X509CertificateCollection @static
---@field public IntermediateCACrls System.Collections.ArrayList @static
---@field public TrustedRootCertificates Mono.Security.X509.X509CertificateCollection @static
---@field public TrustedRootCACrls System.Collections.ArrayList @static
---@field public UntrustedCertificates Mono.Security.X509.X509CertificateCollection @static
local m = {}

Mono.Security.X509.X509StoreManager = m
return m
