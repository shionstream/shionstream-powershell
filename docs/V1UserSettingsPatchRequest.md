# V1UserSettingsPatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarProfile** | [**V1UserSettingsPatchRequestProfile**](V1UserSettingsPatchRequestProfile.md) |  | [optional] 
**Player** | [**V1UserSettingsPatchRequestPlayer**](V1UserSettingsPatchRequestPlayer.md) |  | [optional] 
**Notifications** | [**V1UserSettingsPatchRequestNotifications**](V1UserSettingsPatchRequestNotifications.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$V1UserSettingsPatchRequest = Initialize-ShionStream.ClientV1UserSettingsPatchRequest  -VarProfile null `
 -Player null `
 -Notifications null
```

- Convert the resource to JSON
```powershell
$V1UserSettingsPatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

