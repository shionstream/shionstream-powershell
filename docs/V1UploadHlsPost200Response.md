# V1UploadHlsPost200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**VarData** | [**V1UploadHlsPost200ResponseData**](V1UploadHlsPost200ResponseData.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1UploadHlsPost200Response = Initialize-ShionStream.ClientV1UploadHlsPost200Response  -Success null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$V1UploadHlsPost200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

