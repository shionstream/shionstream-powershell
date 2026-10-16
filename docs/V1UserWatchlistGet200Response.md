# V1UserWatchlistGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**VarData** | [**V1UserWatchlistGet200ResponseDataInner[]**](V1UserWatchlistGet200ResponseDataInner.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1UserWatchlistGet200Response = Initialize-ShionStream.ClientV1UserWatchlistGet200Response  -Success null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$V1UserWatchlistGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

