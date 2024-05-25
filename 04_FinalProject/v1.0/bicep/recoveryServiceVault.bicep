param name string
param location string

// var skyName = 'RSO'
// var skuTier = 'Standard'
param timeZone string

param policyName string

resource recoveryServiceVault 'Microsoft.RecoveryServices/vaults@2023-06-01' = {
  name: name
  location: location
  sku: {
    name:'Standard'
  }
  properties: {
    publicNetworkAccess: 'Disabled'
  }
}

resource backupPolicy 'Microsoft.RecoveryServices/vaults/backupPolicies@2023-06-01' = {
  parent: recoveryServiceVault
  name: policyName
  location: location
  properties: {
    backupManagementType: 'AzureIaasVM'
    instantRpRetentionRangeInDays: 3
    schedulePolicy: {
      scheduleRunFrequency: 'Daily'
      scheduleRunTimes: [
        timeZone
      ]
      schedulePolicyType: 'SimpleSchedulePolicy'
    }
    retentionPolicy: {
      dailySchedule: {
        retentionTimes: [
          timeZone
        ]
        retentionDuration:{
          durationType:'Days'
          count: 7
        }
      }
      retentionPolicyType: 'LongTermRetentionPolicy'
    }
    timeZone: 'W. Europe Standard Time'
  }
}
