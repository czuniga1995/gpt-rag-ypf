param aseName string
param aseRG string

resource ase 'Microsoft.Web/hostingEnvironments@2021-03-01' existing = {
  name:aseName
  scope:resourceGroup(aseRG)
}

output aseID string =ase.id
