# V1UserSettingsGet200ResponseData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Player** | [**V1UserSettingsGet200ResponseDataPlayer**](V1UserSettingsGet200ResponseDataPlayer.md) |  | 
**Notifications** | [**V1UserSettingsGet200ResponseDataNotifications**](V1UserSettingsGet200ResponseDataNotifications.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1UserSettingsGet200ResponseData = Initialize-ShionStream.ClientV1UserSettingsGet200ResponseData  -Player null `
 -Notifications null
```

- Convert the resource to JSON
```powershell
$V1UserSettingsGet200ResponseData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

