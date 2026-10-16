# V1CommentsPostRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AnimeId** | **String** |  | 
**EpisodeId** | **String** |  | 
**Content** | **String** |  | 
**ParentId** | **String** |  | [optional] 
**IsSpoiler** | **Boolean** |  | [optional] [default to $false]
**GuestName** | **String** |  | [optional] 
**GuestEmail** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$V1CommentsPostRequest = Initialize-ShionStream.ClientV1CommentsPostRequest  -AnimeId null `
 -EpisodeId null `
 -Content null `
 -ParentId null `
 -IsSpoiler null `
 -GuestName null `
 -GuestEmail null
```

- Convert the resource to JSON
```powershell
$V1CommentsPostRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

