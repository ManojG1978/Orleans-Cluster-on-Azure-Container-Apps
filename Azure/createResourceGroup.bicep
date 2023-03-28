// common
targetScope = 'subscription'

// parameters
////////////////////////////////////////////////////////////////////////////////

// common
@description('Rg for all resources')
param rgName string

@description('Set default rg location to East US')
param rgLocation string = 'eastus'

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: rgName
  location: rgLocation
}

// outputs
////////////////////////////////////////////////////////////////////////////////

output outputRgName string = rg.name
