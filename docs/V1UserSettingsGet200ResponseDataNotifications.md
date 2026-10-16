# V1UserSettingsGet200ResponseDataNotifications
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NewEpisodeAlerts** | **Boolean** |  | 
**WatchlistUpdates** | **Boolean** |  | 
**MarketingEmails** | **Boolean** |  | 
**PublicWatchlist** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$V1UserSettingsGet200ResponseDataNotifications = Initialize-ShionStream.ClientV1UserSettingsGet200ResponseDataNotifications  -NewEpisodeAlerts null `
 -WatchlistUpdates null `
 -MarketingEmails null `
 -PublicWatchlist null
```

- Convert the resource to JSON
```powershell
$V1UserSettingsGet200ResponseDataNotifications | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

