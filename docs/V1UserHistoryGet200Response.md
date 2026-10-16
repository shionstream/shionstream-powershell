# V1UserHistoryGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**VarData** | [**V1UserHistoryGet200ResponseDataInner[]**](V1UserHistoryGet200ResponseDataInner.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1UserHistoryGet200Response = Initialize-ShionStream.ClientV1UserHistoryGet200Response  -Success null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$V1UserHistoryGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

