# V1DashboardAnimeGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AnimeList** | [**AnyType[]**](AnyType.md) |  | 
**Total** | **Decimal** |  | 
**Page** | **Decimal** |  | 
**Limit** | **Decimal** |  | 

## Examples

- Prepare the resource
```powershell
$V1DashboardAnimeGet200Response = Initialize-ShionStream.ClientV1DashboardAnimeGet200Response  -AnimeList null `
 -Total null `
 -Page null `
 -Limit null
```

- Convert the resource to JSON
```powershell
$V1DashboardAnimeGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

