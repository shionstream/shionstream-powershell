# V1UserWatchlistGet200ResponseDataInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**AnimeId** | **String** |  | 
**Status** | **String** |  | 
**IsFavorite** | **Boolean** |  | 
**CurrentEpisode** | **Decimal** |  | 
**UserRating** | **Decimal** |  | [optional] 
**CreatedAt** | **String** |  | 
**UpdatedAt** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$V1UserWatchlistGet200ResponseDataInner = Initialize-ShionStream.ClientV1UserWatchlistGet200ResponseDataInner  -Id null `
 -AnimeId null `
 -Status null `
 -IsFavorite null `
 -CurrentEpisode null `
 -UserRating null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$V1UserWatchlistGet200ResponseDataInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

