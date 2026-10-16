# V1AnimeGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**VarData** | [**V1AnimeGet200ResponseDataInner[]**](V1AnimeGet200ResponseDataInner.md) |  | 
**Pagination** | [**V1AnimeGet200ResponsePagination**](V1AnimeGet200ResponsePagination.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1AnimeGet200Response = Initialize-ShionStream.ClientV1AnimeGet200Response  -Success null `
 -VarData null `
 -Pagination null
```

- Convert the resource to JSON
```powershell
$V1AnimeGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

