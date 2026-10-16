# V1UserWatchlistPostRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AnimeId** | **String** |  | 
**Status** | **String** |  | [optional] [default to "plan_to_watch"]

## Examples

- Prepare the resource
```powershell
$V1UserWatchlistPostRequest = Initialize-ShionStream.ClientV1UserWatchlistPostRequest  -AnimeId null `
 -Status null
```

- Convert the resource to JSON
```powershell
$V1UserWatchlistPostRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

