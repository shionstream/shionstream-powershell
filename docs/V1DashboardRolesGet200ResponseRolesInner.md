# V1DashboardRolesGet200ResponseRolesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | 
**Slug** | **String** |  | 
**Description** | **String** |  | 
**MemberCount** | **Decimal** |  | 
**Permissions** | **String[]** |  | 
**IsDefault** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$V1DashboardRolesGet200ResponseRolesInner = Initialize-ShionStream.ClientV1DashboardRolesGet200ResponseRolesInner  -Id null `
 -Name null `
 -Slug null `
 -Description null `
 -MemberCount null `
 -Permissions null `
 -IsDefault null
```

- Convert the resource to JSON
```powershell
$V1DashboardRolesGet200ResponseRolesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

