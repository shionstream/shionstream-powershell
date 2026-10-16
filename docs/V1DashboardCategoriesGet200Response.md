# V1DashboardCategoriesGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Categories** | [**V1DashboardCategoriesGet200ResponseCategoriesInner[]**](V1DashboardCategoriesGet200ResponseCategoriesInner.md) |  | 
**Genres** | [**V1DashboardCategoriesGet200ResponseGenresInner[]**](V1DashboardCategoriesGet200ResponseGenresInner.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1DashboardCategoriesGet200Response = Initialize-ShionStream.ClientV1DashboardCategoriesGet200Response  -Categories null `
 -Genres null
```

- Convert the resource to JSON
```powershell
$V1DashboardCategoriesGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

