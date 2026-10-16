# V1UserSettingsPatchRequestNotifications
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewEpisodeAlerts** | **Boolean** |  | [optional] 
**WatchlistUpdates** | **Boolean** |  | [optional] 
**MarketingEmails** | **Boolean** |  | [optional] 
**PublicWatchlist** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$V1UserSettingsPatchRequestNotifications = Initialize-ShionStream.ClientV1UserSettingsPatchRequestNotifications  -NewEpisodeAlerts null `
 -WatchlistUpdates null `
 -MarketingEmails null `
 -PublicWatchlist null
```

- Convert the resource to JSON
```powershell
$V1UserSettingsPatchRequestNotifications | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

