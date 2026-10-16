# V1CommentsPost201Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**VarData** | [**V1CommentsGet200ResponseDataInner**](V1CommentsGet200ResponseDataInner.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1CommentsPost201Response = Initialize-ShionStream.ClientV1CommentsPost201Response  -Success null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$V1CommentsPost201Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

