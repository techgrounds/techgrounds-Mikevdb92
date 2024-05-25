param location string
param serverName string
param adminUsername string
@secure()
param adminPassword string

var databaseCollation = 'SQL_Latin1_General_CP1_CI_AS'
var databaseName = 'sample-db-with-tde'
var sqlDbName = 'sqlDb-${serverName}'
var sqlServerName  = 'sqlServer${uniqueString(resourceGroup().id)}-${serverName}'

resource sqlServer 'Microsoft.Sql/servers@2023-05-01-preview' = {
  name: sqlServerName
  location: location
  tags: {
    serverType: sqlServerName
  }
  properties: {
    administratorLogin: adminUsername
    administratorLoginPassword: adminPassword
    version: '12.0'
  }
}

resource sqldatabase 'Microsoft.Sql/servers/databases@2023-05-01-preview' = {
  parent: sqlServer
  name: sqlDbName
  location: location
  tags: {
    serverType: sqlDbName
  }
  properties: {
    collation: databaseCollation
    maxSizeBytes: 1073741824  //1 GiB
  }
}

output sqlServerFqdn string = sqlServer.properties.fullyQualifiedDomainName
output databaseName string = databaseName
