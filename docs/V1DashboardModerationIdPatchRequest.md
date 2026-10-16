# V1DashboardModerationIdPatchRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | 
**Action** | **String** |  | [optional] [default to "keep"]

## Examples

- Prepare the resource
```powershell
$V1DashboardModerationIdPatchRequest = Initialize-ShionStream.ClientV1DashboardModerationIdPatchRequest  -Status null `
 -Action null
```

- Convert the resource to JSON
```powershell
$V1DashboardModerationIdPatchRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

