# V1DashboardCategoriesGet200ResponseCategoriesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Code** | **String** |  | 
**Name** | **String** |  | 
**Slug** | **String** |  | 
**AnimeCount** | **Decimal** |  | 
**Description** | **String** |  | 
**IsActive** | **Boolean** |  | 
**UpdatedAt** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$V1DashboardCategoriesGet200ResponseCategoriesInner = Initialize-ShionStream.ClientV1DashboardCategoriesGet200ResponseCategoriesInner  -Id null `
 -Code null `
 -Name null `
 -Slug null `
 -AnimeCount null `
 -Description null `
 -IsActive null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$V1DashboardCategoriesGet200ResponseCategoriesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

