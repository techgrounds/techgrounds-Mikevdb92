$certname = {certificateName}  ## Replace {certificateName}
$cert = New-SelfSignedCertificate -Subject "CN=$certname" -CertStoreLocation "Cert:\CurrentUser\My" -KeyExportPolicy Exportable -KeySpec Signature -KeyLength 2048 -KeyAlgorithm RSA -HashAlgorithm SHA256

$mypwd = ConvertTo-SecureString -String {myPassword} -Force -AsPlainText  ## Replace {myPassword}

Export-PfxCertificate -Cert $cert -FilePath {location} -Password $mypwd   ## Specify your preferred location {Location}
