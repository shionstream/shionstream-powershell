# V1AnimeGet200ResponsePagination
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Page** | **Decimal** |  | 
**Limit** | **Decimal** |  | 
**Total** | **Decimal** |  | 
**TotalPages** | **Decimal** |  | 

## Examples

- Prepare the resource
```powershell
$V1AnimeGet200ResponsePagination = Initialize-ShionStream.ClientV1AnimeGet200ResponsePagination  -Page null `
 -Limit null `
 -Total null `
 -TotalPages null
```

- Convert the resource to JSON
```powershell
$V1AnimeGet200ResponsePagination | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

