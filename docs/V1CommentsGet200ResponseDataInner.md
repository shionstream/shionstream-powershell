# V1CommentsGet200ResponseDataInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**AnimeId** | **String** |  | 
**EpisodeId** | **String** |  | 
**UserId** | **String** |  | [optional] 
**GuestName** | **String** |  | [optional] 
**ParentId** | **String** |  | [optional] 
**Content** | **String** |  | 
**IsSpoiler** | **Boolean** |  | 
**CreatedAt** | **String** |  | 
**UpdatedAt** | **String** |  | 
**Likes** | **Decimal** |  | 
**Dislikes** | **Decimal** |  | 

## Examples

- Prepare the resource
```powershell
$V1CommentsGet200ResponseDataInner = Initialize-ShionStream.ClientV1CommentsGet200ResponseDataInner  -Id null `
 -AnimeId null `
 -EpisodeId null `
 -UserId null `
 -GuestName null `
 -ParentId null `
 -Content null `
 -IsSpoiler null `
 -CreatedAt null `
 -UpdatedAt null `
 -Likes null `
 -Dislikes null
```

- Convert the resource to JSON
```powershell
$V1CommentsGet200ResponseDataInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

