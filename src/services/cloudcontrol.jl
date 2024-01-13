# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: cloudcontrol
using AWS.Compat
using AWS.UUIDs

"""
    cancel_resource_request(request_token)
    cancel_resource_request(request_token, params::Dict{String,<:Any})

Cancels the specified resource operation request. For more information, see Canceling
resource operation requests in the Amazon Web Services Cloud Control API User Guide. Only
resource operations requests with a status of PENDING or IN_PROGRESS can be canceled.

# Arguments
- `request_token`: The RequestToken of the ProgressEvent object returned by the resource
  operation request.

"""
cancel_resource_request(RequestToken; aws_config::AbstractAWSConfig=global_aws_config()) =
    cloudcontrol(
        "CancelResourceRequest",
        Dict{String,Any}("RequestToken" => RequestToken);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function cancel_resource_request(
    RequestToken,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudcontrol(
        "CancelResourceRequest",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("RequestToken" => RequestToken), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_resource(desired_state, type_name)
    create_resource(desired_state, type_name, params::Dict{String,<:Any})

Creates the specified resource. For more information, see Creating a resource in the Amazon
Web Services Cloud Control API User Guide. After you have initiated a resource creation
request, you can monitor the progress of your request by calling GetResourceRequestStatus
using the RequestToken of the ProgressEvent type returned by CreateResource.

# Arguments
- `desired_state`: Structured data format representing the desired state of the resource,
  consisting of that resource's properties and their desired values.  Cloud Control API
  currently supports JSON as a structured data format.  Specify the desired state as one of
  the following:   A JSON blob   A local path containing the desired state in JSON data
  format   For more information, see Composing the desired state of the resource in the
  Amazon Web Services Cloud Control API User Guide. For more information about the properties
  of a specific resource, refer to the related topic for the resource in the Resource and
  property types reference in the CloudFormation Users Guide.
- `type_name`: The name of the resource type.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A unique identifier to ensure the idempotency of the resource request.
  As a best practice, specify this token to ensure idempotency, so that Amazon Web Services
  Cloud Control API can accurately distinguish between request retries and new resource
  requests. You might retry a resource request to ensure that it was successfully received. A
  client token is valid for 36 hours once used. After that, a resource request with the same
  client token is treated as a new request. If you do not specify a client token, one is
  generated for inclusion in the request. For more information, see Ensuring resource
  operation requests are unique in the Amazon Web Services Cloud Control API User Guide.
- `"RoleArn"`: The Amazon Resource Name (ARN) of the Identity and Access Management (IAM)
  role for Cloud Control API to use when performing this resource operation. The role
  specified must have the permissions required for this operation. The necessary permissions
  for each event handler are defined in the  handlers  section of the resource type
  definition schema. If you do not specify a role, Cloud Control API uses a temporary session
  created using your Amazon Web Services user credentials. For more information, see
  Specifying credentials in the Amazon Web Services Cloud Control API User Guide.
- `"TypeVersionId"`: For private resource types, the type version to use in this resource
  operation. If you do not specify a resource version, CloudFormation uses the default
  version.
"""
create_resource(DesiredState, TypeName; aws_config::AbstractAWSConfig=global_aws_config()) =
    cloudcontrol(
        "CreateResource",
        Dict{String,Any}(
            "DesiredState" => DesiredState,
            "TypeName" => TypeName,
            "ClientToken" => string(uuid4()),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function create_resource(
    DesiredState,
    TypeName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudcontrol(
        "CreateResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "DesiredState" => DesiredState,
                    "TypeName" => TypeName,
                    "ClientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_resource(identifier, type_name)
    delete_resource(identifier, type_name, params::Dict{String,<:Any})

Deletes the specified resource. For details, see Deleting a resource in the Amazon Web
Services Cloud Control API User Guide. After you have initiated a resource deletion
request, you can monitor the progress of your request by calling GetResourceRequestStatus
using the RequestToken of the ProgressEvent returned by DeleteResource.

# Arguments
- `identifier`: The identifier for the resource. You can specify the primary identifier, or
  any secondary identifier defined for the resource type in its resource schema. You can only
  specify one identifier. Primary identifiers can be specified as a string or JSON; secondary
  identifiers must be specified as JSON. For compound primary identifiers (that is, one that
  consists of multiple resource properties strung together), to specify the primary
  identifier as a string, list the property values in the order they are specified in the
  primary identifier definition, separated by |. For more information, see Identifying
  resources in the Amazon Web Services Cloud Control API User Guide.
- `type_name`: The name of the resource type.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A unique identifier to ensure the idempotency of the resource request.
  As a best practice, specify this token to ensure idempotency, so that Amazon Web Services
  Cloud Control API can accurately distinguish between request retries and new resource
  requests. You might retry a resource request to ensure that it was successfully received. A
  client token is valid for 36 hours once used. After that, a resource request with the same
  client token is treated as a new request. If you do not specify a client token, one is
  generated for inclusion in the request. For more information, see Ensuring resource
  operation requests are unique in the Amazon Web Services Cloud Control API User Guide.
- `"RoleArn"`: The Amazon Resource Name (ARN) of the Identity and Access Management (IAM)
  role for Cloud Control API to use when performing this resource operation. The role
  specified must have the permissions required for this operation. The necessary permissions
  for each event handler are defined in the  handlers  section of the resource type
  definition schema. If you do not specify a role, Cloud Control API uses a temporary session
  created using your Amazon Web Services user credentials. For more information, see
  Specifying credentials in the Amazon Web Services Cloud Control API User Guide.
- `"TypeVersionId"`: For private resource types, the type version to use in this resource
  operation. If you do not specify a resource version, CloudFormation uses the default
  version.
"""
delete_resource(Identifier, TypeName; aws_config::AbstractAWSConfig=global_aws_config()) =
    cloudcontrol(
        "DeleteResource",
        Dict{String,Any}(
            "Identifier" => Identifier,
            "TypeName" => TypeName,
            "ClientToken" => string(uuid4()),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function delete_resource(
    Identifier,
    TypeName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudcontrol(
        "DeleteResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Identifier" => Identifier,
                    "TypeName" => TypeName,
                    "ClientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_resource(identifier, type_name)
    get_resource(identifier, type_name, params::Dict{String,<:Any})

Returns information about the current state of the specified resource. For details, see
Reading a resource's current state. You can use this action to return information about an
existing resource in your account and Amazon Web Services Region, whether those resources
were provisioned using Cloud Control API.

# Arguments
- `identifier`: The identifier for the resource. You can specify the primary identifier, or
  any secondary identifier defined for the resource type in its resource schema. You can only
  specify one identifier. Primary identifiers can be specified as a string or JSON; secondary
  identifiers must be specified as JSON. For compound primary identifiers (that is, one that
  consists of multiple resource properties strung together), to specify the primary
  identifier as a string, list the property values in the order they are specified in the
  primary identifier definition, separated by |. For more information, see Identifying
  resources in the Amazon Web Services Cloud Control API User Guide.
- `type_name`: The name of the resource type.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"RoleArn"`: The Amazon Resource Name (ARN) of the Identity and Access Management (IAM)
  role for Cloud Control API to use when performing this resource operation. The role
  specified must have the permissions required for this operation. The necessary permissions
  for each event handler are defined in the  handlers  section of the resource type
  definition schema. If you do not specify a role, Cloud Control API uses a temporary session
  created using your Amazon Web Services user credentials. For more information, see
  Specifying credentials in the Amazon Web Services Cloud Control API User Guide.
- `"TypeVersionId"`: For private resource types, the type version to use in this resource
  operation. If you do not specify a resource version, CloudFormation uses the default
  version.
"""
get_resource(Identifier, TypeName; aws_config::AbstractAWSConfig=global_aws_config()) =
    cloudcontrol(
        "GetResource",
        Dict{String,Any}("Identifier" => Identifier, "TypeName" => TypeName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function get_resource(
    Identifier,
    TypeName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudcontrol(
        "GetResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("Identifier" => Identifier, "TypeName" => TypeName),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_resource_request_status(request_token)
    get_resource_request_status(request_token, params::Dict{String,<:Any})

Returns the current status of a resource operation request. For more information, see
Tracking the progress of resource operation requests in the Amazon Web Services Cloud
Control API User Guide.

# Arguments
- `request_token`: A unique token used to track the progress of the resource operation
  request. Request tokens are included in the ProgressEvent type returned by a resource
  operation request.

"""
get_resource_request_status(
    RequestToken; aws_config::AbstractAWSConfig=global_aws_config()
) = cloudcontrol(
    "GetResourceRequestStatus",
    Dict{String,Any}("RequestToken" => RequestToken);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function get_resource_request_status(
    RequestToken,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudcontrol(
        "GetResourceRequestStatus",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("RequestToken" => RequestToken), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_resource_requests()
    list_resource_requests(params::Dict{String,<:Any})

Returns existing resource operation requests. This includes requests of all status types.
For more information, see Listing active resource operation requests in the Amazon Web
Services Cloud Control API User Guide.  Resource operation requests expire after 7 days.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to be returned with a single call. If the
  number of available results exceeds this maximum, the response includes a NextToken value
  that you can assign to the NextToken request parameter to get the next set of results. The
  default is 20.
- `"NextToken"`: If the previous paginated request didn't return all of the remaining
  results, the response object's NextToken parameter value is set to a token. To retrieve the
  next set of results, call this action again and assign that token to the request object's
  NextToken parameter. If there are no remaining results, the previous response object's
  NextToken parameter is set to null.
- `"ResourceRequestStatusFilter"`: The filter criteria to apply to the requests returned.
"""
list_resource_requests(; aws_config::AbstractAWSConfig=global_aws_config()) = cloudcontrol(
    "ListResourceRequests"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
)
function list_resource_requests(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return cloudcontrol(
        "ListResourceRequests",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_resources(type_name)
    list_resources(type_name, params::Dict{String,<:Any})

Returns information about the specified resources. For more information, see Discovering
resources in the Amazon Web Services Cloud Control API User Guide. You can use this action
to return information about existing resources in your account and Amazon Web Services
Region, whether those resources were provisioned using Cloud Control API.

# Arguments
- `type_name`: The name of the resource type.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: Reserved.
- `"NextToken"`: If the previous paginated request didn't return all of the remaining
  results, the response object's NextToken parameter value is set to a token. To retrieve the
  next set of results, call this action again and assign that token to the request object's
  NextToken parameter. If there are no remaining results, the previous response object's
  NextToken parameter is set to null.
- `"ResourceModel"`: The resource model to use to select the resources to return.
- `"RoleArn"`: The Amazon Resource Name (ARN) of the Identity and Access Management (IAM)
  role for Cloud Control API to use when performing this resource operation. The role
  specified must have the permissions required for this operation. The necessary permissions
  for each event handler are defined in the  handlers  section of the resource type
  definition schema. If you do not specify a role, Cloud Control API uses a temporary session
  created using your Amazon Web Services user credentials. For more information, see
  Specifying credentials in the Amazon Web Services Cloud Control API User Guide.
- `"TypeVersionId"`: For private resource types, the type version to use in this resource
  operation. If you do not specify a resource version, CloudFormation uses the default
  version.
"""
list_resources(TypeName; aws_config::AbstractAWSConfig=global_aws_config()) = cloudcontrol(
    "ListResources",
    Dict{String,Any}("TypeName" => TypeName);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function list_resources(
    TypeName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudcontrol(
        "ListResources",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("TypeName" => TypeName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_resource(identifier, patch_document, type_name)
    update_resource(identifier, patch_document, type_name, params::Dict{String,<:Any})

Updates the specified property values in the resource. You specify your resource property
updates as a list of patch operations contained in a JSON patch document that adheres to
the  RFC 6902 - JavaScript Object Notation (JSON) Patch  standard. For details on how Cloud
Control API performs resource update operations, see Updating a resource in the Amazon Web
Services Cloud Control API User Guide. After you have initiated a resource update request,
you can monitor the progress of your request by calling GetResourceRequestStatus using the
RequestToken of the ProgressEvent returned by UpdateResource. For more information about
the properties of a specific resource, refer to the related topic for the resource in the
Resource and property types reference in the CloudFormation Users Guide.

# Arguments
- `identifier`: The identifier for the resource. You can specify the primary identifier, or
  any secondary identifier defined for the resource type in its resource schema. You can only
  specify one identifier. Primary identifiers can be specified as a string or JSON; secondary
  identifiers must be specified as JSON. For compound primary identifiers (that is, one that
  consists of multiple resource properties strung together), to specify the primary
  identifier as a string, list the property values in the order they are specified in the
  primary identifier definition, separated by |. For more information, see Identifying
  resources in the Amazon Web Services Cloud Control API User Guide.
- `patch_document`: A JavaScript Object Notation (JSON) document listing the patch
  operations that represent the updates to apply to the current resource properties. For
  details, see Composing the patch document in the Amazon Web Services Cloud Control API User
  Guide.
- `type_name`: The name of the resource type.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientToken"`: A unique identifier to ensure the idempotency of the resource request.
  As a best practice, specify this token to ensure idempotency, so that Amazon Web Services
  Cloud Control API can accurately distinguish between request retries and new resource
  requests. You might retry a resource request to ensure that it was successfully received. A
  client token is valid for 36 hours once used. After that, a resource request with the same
  client token is treated as a new request. If you do not specify a client token, one is
  generated for inclusion in the request. For more information, see Ensuring resource
  operation requests are unique in the Amazon Web Services Cloud Control API User Guide.
- `"RoleArn"`: The Amazon Resource Name (ARN) of the Identity and Access Management (IAM)
  role for Cloud Control API to use when performing this resource operation. The role
  specified must have the permissions required for this operation. The necessary permissions
  for each event handler are defined in the  handlers  section of the resource type
  definition schema. If you do not specify a role, Cloud Control API uses a temporary session
  created using your Amazon Web Services user credentials. For more information, see
  Specifying credentials in the Amazon Web Services Cloud Control API User Guide.
- `"TypeVersionId"`: For private resource types, the type version to use in this resource
  operation. If you do not specify a resource version, CloudFormation uses the default
  version.
"""
update_resource(
    Identifier, PatchDocument, TypeName; aws_config::AbstractAWSConfig=global_aws_config()
) = cloudcontrol(
    "UpdateResource",
    Dict{String,Any}(
        "Identifier" => Identifier,
        "PatchDocument" => PatchDocument,
        "TypeName" => TypeName,
        "ClientToken" => string(uuid4()),
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_resource(
    Identifier,
    PatchDocument,
    TypeName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudcontrol(
        "UpdateResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Identifier" => Identifier,
                    "PatchDocument" => PatchDocument,
                    "TypeName" => TypeName,
                    "ClientToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
