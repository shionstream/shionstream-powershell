# V1UserProfileGet200ResponseData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | 
**Email** | **String** |  | 
**Image** | **String** |  | [optional] 
**Role** | **String** |  | 
**Activity** | [**V1UserProfileGet200ResponseDataActivity**](V1UserProfileGet200ResponseDataActivity.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1UserProfileGet200ResponseData = Initialize-ShionStream.ClientV1UserProfileGet200ResponseData  -Id null `
 -Name null `
 -Email null `
 -Image null `
 -Role null `
 -Activity null
```

- Convert the resource to JSON
```powershell
$V1UserProfileGet200ResponseData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

