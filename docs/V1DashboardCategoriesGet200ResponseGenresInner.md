# V1DashboardCategoriesGet200ResponseGenresInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | 
**Slug** | **String** |  | 
**AnimeCount** | **Decimal** |  | 
**IsActive** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$V1DashboardCategoriesGet200ResponseGenresInner = Initialize-ShionStream.ClientV1DashboardCategoriesGet200ResponseGenresInner  -Id null `
 -Name null `
 -Slug null `
 -AnimeCount null `
 -IsActive null
```

- Convert the resource to JSON
```powershell
$V1DashboardCategoriesGet200ResponseGenresInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

