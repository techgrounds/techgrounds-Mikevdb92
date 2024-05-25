param location string
param vmManId string
param vmManName string

var schedule = {
  schedulePolicyType: 'SimpleSchedulePolicy'
  scheduleRunFrequency: 'Daily'
  scheduleRunTimes: ['2024-02-20T01:30:00.000Z']
}
var retention  = {
  retentionPolicyType: 'LongTermRetentionPolicy'
  dailySchedule: {
    retentionTimes: ['2024-02-20T01:30:00.000Z']
    retentionDuration: {
      count: 7
      durationType: 'Days'
    }
  }
}

var vaultName = 'rsVault'
var fabricName = 'Azure'
var backupPolicyName = 'backupPolicy'
var protectionContainers = 'IaasVMContainer;iaasvmcontainerv2;${resourceGroup().name};${vmManName}'
var protectedItems = 'vm;iaasvmcontainerv2;${resourceGroup().name};${vmManName}'

//* Create Recovery service vault
resource recoveryServiceVault 'Microsoft.RecoveryServices/vaults@2023-08-01' = {
  name: vaultName
  location: location
  sku: {
    name:'Standard'
  }
  properties: {
    publicNetworkAccess: 'Disabled'
  }
}

//* Create Backup Policy
resource backupPolicy 'Microsoft.RecoveryServices/vaults/backupPolicies@2023-08-01' = {
  parent: recoveryServiceVault
  name: backupPolicyName
  location:location
  properties:{
    backupManagementType: 'AzureIaasVM'
    schedulePolicy: schedule
    retentionPolicy: retention
    instantRpRetentionRangeInDays: 3
    timeZone:'W. Europe Standard Time'
  }
}

//* Create backup vm-management
resource protectedItem 'Microsoft.RecoveryServices/vaults/backupFabrics/protectionContainers/protectedItems@2023-08-01' = {
  name: '${vaultName}/${fabricName}/${protectionContainers}/${protectedItems}'
  properties: {
    protectedItemType: 'Microsoft.Compute/virtualMachines'
    policyId: backupPolicy.id
    sourceResourceId: vmManId
  }
}
