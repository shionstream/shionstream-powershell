# V1UserProfileGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**VarData** | [**V1UserProfileGet200ResponseData**](V1UserProfileGet200ResponseData.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1UserProfileGet200Response = Initialize-ShionStream.ClientV1UserProfileGet200Response  -Success null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$V1UserProfileGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

