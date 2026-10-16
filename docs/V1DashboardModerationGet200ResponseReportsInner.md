# V1DashboardModerationGet200ResponseReportsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**CommentId** | **String** |  | 
**CommentText** | **String** |  | 
**AnimeTitle** | **String** |  | 
**EpisodeNumber** | **Decimal** |  | 
**Author** | [**V1DashboardModerationGet200ResponseReportsInnerAuthor**](V1DashboardModerationGet200ResponseReportsInnerAuthor.md) |  | 
**Reporter** | [**V1DashboardModerationGet200ResponseReportsInnerReporter**](V1DashboardModerationGet200ResponseReportsInnerReporter.md) |  | 
**Reason** | **String** |  | 
**Status** | **String** |  | 
**ReportedAt** | **String** |  | 
**FlaggedBySystem** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$V1DashboardModerationGet200ResponseReportsInner = Initialize-ShionStream.ClientV1DashboardModerationGet200ResponseReportsInner  -Id null `
 -CommentId null `
 -CommentText null `
 -AnimeTitle null `
 -EpisodeNumber null `
 -Author null `
 -Reporter null `
 -Reason null `
 -Status null `
 -ReportedAt null `
 -FlaggedBySystem null
```

- Convert the resource to JSON
```powershell
$V1DashboardModerationGet200ResponseReportsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

