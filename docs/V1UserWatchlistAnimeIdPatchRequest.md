# V1UserWatchlistAnimeIdPatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | [optional] 
**IsFavorite** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$V1UserWatchlistAnimeIdPatchRequest = Initialize-ShionStream.ClientV1UserWatchlistAnimeIdPatchRequest  -Status null `
 -IsFavorite null
```

- Convert the resource to JSON
```powershell
$V1UserWatchlistAnimeIdPatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

