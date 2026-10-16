# V1AnimeSlugEpisodesGet200ResponseDataInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Number** | **Decimal** |  | 
**Title** | **String** |  | 
**DurationSeconds** | **Decimal** |  | 
**Thumbnail** | **String** |  | [optional] 
**AirDate** | **String** |  | [optional] 
**Status** | **String** |  | 
**ViewsCount** | **Decimal** |  | 
**IsVip** | **Boolean** |  | 
**CreatedAt** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$V1AnimeSlugEpisodesGet200ResponseDataInner = Initialize-ShionStream.ClientV1AnimeSlugEpisodesGet200ResponseDataInner  -Id null `
 -Number null `
 -Title null `
 -DurationSeconds null `
 -Thumbnail null `
 -AirDate null `
 -Status null `
 -ViewsCount null `
 -IsVip null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$V1AnimeSlugEpisodesGet200ResponseDataInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

