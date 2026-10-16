# V1DashboardUsersGet200ResponseUsersInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | 
**Email** | **String** |  | 
**Image** | **String** |  | [optional] 
**Role** | **String** |  | 
**EmailVerified** | **Boolean** |  | 
**CreatedAt** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$V1DashboardUsersGet200ResponseUsersInner = Initialize-ShionStream.ClientV1DashboardUsersGet200ResponseUsersInner  -Id null `
 -Name null `
 -Email null `
 -Image null `
 -Role null `
 -EmailVerified null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$V1DashboardUsersGet200ResponseUsersInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

