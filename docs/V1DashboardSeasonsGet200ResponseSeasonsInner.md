# V1DashboardSeasonsGet200ResponseSeasonsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Year** | **Decimal** |  | 
**Quarter** | **String** |  | 
**Name** | **String** |  | 
**TotalAnime** | **Decimal** |  | 
**IsCurrent** | **Boolean** |  | 
**IsActive** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$V1DashboardSeasonsGet200ResponseSeasonsInner = Initialize-ShionStream.ClientV1DashboardSeasonsGet200ResponseSeasonsInner  -Id null `
 -Year null `
 -Quarter null `
 -Name null `
 -TotalAnime null `
 -IsCurrent null `
 -IsActive null
```

- Convert the resource to JSON
```powershell
$V1DashboardSeasonsGet200ResponseSeasonsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

