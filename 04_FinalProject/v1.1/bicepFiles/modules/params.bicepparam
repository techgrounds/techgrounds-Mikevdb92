using '../main.bicep'

//* Keyvault
@secure()
param adminPasswordOrKey = 'Test123!test'
@description('Enter a name for the key vault, "-" and a random string will be added later')
param keyvaultName  = 'keyvault'
param objectID  = '45367586-c9f1-40bb-8619-4ba218d28228'

//* Server name
param serverName = [
  'web'
  'management'
]

//* Virtual network Web server
@description('Enter virtual network adress for the web server ')
param vnetAdressPrefixesWeb = '10.10.10.0/24'
@description('Enter subnet adresses for the web server')
param subnetAdressPrefixWeb = [
  '10.10.10.0/26'
  '10.10.10.64/28'
]

//* Virtual network Management server
@description('Enter virtual network adress for the management server ')
param vnetAdressPrefixesMan = '10.20.20.0/24'
@description('Enter subnet adresses for the management server')
param subnetAdressPrefixMan = [
  '10.20.20.0/25'
  '10.20.20.128/25'
]

//* Network Security Group
param trustedIp = '' //! Upload with empty string
param vmStaticIpVmMan = '10.20.20.10'

//* VM management
param adminUsername = 'admin'
param virtualMachineSize = 'Standard_B1ms' //At least B1ms, dont use B1s (low CPU)

//* Vmss web
param instanceCount = '1'


