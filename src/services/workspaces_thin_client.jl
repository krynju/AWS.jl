# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: workspaces_thin_client
using AWS.Compat
using AWS.UUIDs

"""
    create_environment(desktop_arn)
    create_environment(desktop_arn, params::Dict{String,<:Any})

Creates an environment for your thin client devices.

# Arguments
- `desktop_arn`: The Amazon Resource Name (ARN) of the desktop to stream from Amazon
  WorkSpaces, WorkSpaces Web, or AppStream 2.0.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: Specifies a unique, case-sensitive identifier that you provide to ensure
  the idempotency of the request. This lets you safely retry the request without accidentally
  performing the same operation a second time. Passing the same value to a later call to an
  operation requires that you also pass the same value for all other parameters. We recommend
  that you use a UUID type of value. If you don't provide this value, then Amazon Web
  Services generates a random one for you. If you retry the operation with the same
  ClientToken, but with different parameters, the retry fails with an
  IdempotentParameterMismatch error.
- `"desiredSoftwareSetId"`: The ID of the software set to apply.
- `"desktopEndpoint"`: The URL for the identity provider login (only for environments that
  use AppStream 2.0).
- `"kmsKeyArn"`: The Amazon Resource Name (ARN) of the Key Management Service key to use to
  encrypt the environment.
- `"maintenanceWindow"`: A specification for a time window to apply software updates.
- `"name"`: The name for the environment.
- `"softwareSetUpdateMode"`: An option to define which software updates to apply.
- `"softwareSetUpdateSchedule"`: An option to define if software updates should be applied
  within a maintenance window.
- `"tags"`: A map of the key-value pairs of the tag or tags to assign to the resource.
"""
create_environment(desktopArn; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "POST",
        "/environments",
        Dict{String,Any}("desktopArn" => desktopArn, "clientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function create_environment(
    desktopArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return workspaces_thin_client(
        "POST",
        "/environments",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "desktopArn" => desktopArn, "clientToken" => string(uuid4())
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_device(id)
    delete_device(id, params::Dict{String,<:Any})

Deletes a thin client device.

# Arguments
- `id`: The ID of the device to delete.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: Specifies a unique, case-sensitive identifier that you provide to ensure
  the idempotency of the request. This lets you safely retry the request without accidentally
  performing the same operation a second time. Passing the same value to a later call to an
  operation requires that you also pass the same value for all other parameters. We recommend
  that you use a UUID type of value. If you don't provide this value, then Amazon Web
  Services generates a random one for you. If you retry the operation with the same
  ClientToken, but with different parameters, the retry fails with an
  IdempotentParameterMismatch error.
"""
delete_device(id; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "DELETE",
        "/devices/$(id)",
        Dict{String,Any}("clientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function delete_device(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return workspaces_thin_client(
        "DELETE",
        "/devices/$(id)",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("clientToken" => string(uuid4())), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_environment(id)
    delete_environment(id, params::Dict{String,<:Any})

Deletes an environment.

# Arguments
- `id`: The ID of the environment to delete.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: Specifies a unique, case-sensitive identifier that you provide to ensure
  the idempotency of the request. This lets you safely retry the request without accidentally
  performing the same operation a second time. Passing the same value to a later call to an
  operation requires that you also pass the same value for all other parameters. We recommend
  that you use a UUID type of value. If you don't provide this value, then Amazon Web
  Services generates a random one for you. If you retry the operation with the same
  ClientToken, but with different parameters, the retry fails with an
  IdempotentParameterMismatch error.
"""
delete_environment(id; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "DELETE",
        "/environments/$(id)",
        Dict{String,Any}("clientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function delete_environment(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return workspaces_thin_client(
        "DELETE",
        "/environments/$(id)",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("clientToken" => string(uuid4())), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    deregister_device(id)
    deregister_device(id, params::Dict{String,<:Any})

Deregisters a thin client device.

# Arguments
- `id`: The ID of the device to deregister.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: Specifies a unique, case-sensitive identifier that you provide to ensure
  the idempotency of the request. This lets you safely retry the request without accidentally
  performing the same operation a second time. Passing the same value to a later call to an
  operation requires that you also pass the same value for all other parameters. We recommend
  that you use a UUID type of value. If you don't provide this value, then Amazon Web
  Services generates a random one for you. If you retry the operation with the same
  ClientToken, but with different parameters, the retry fails with an
  IdempotentParameterMismatch error.
- `"targetDeviceStatus"`: The desired new status for the device.
"""
deregister_device(id; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "POST",
        "/deregister-device/$(id)",
        Dict{String,Any}("clientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function deregister_device(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return workspaces_thin_client(
        "POST",
        "/deregister-device/$(id)",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("clientToken" => string(uuid4())), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_device(id)
    get_device(id, params::Dict{String,<:Any})

Returns information for a thin client device.

# Arguments
- `id`: The ID of the device for which to return information.

"""
get_device(id; aws_config::AbstractAWSConfig=global_aws_config()) = workspaces_thin_client(
    "GET", "/devices/$(id)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
)
function get_device(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return workspaces_thin_client(
        "GET",
        "/devices/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_environment(id)
    get_environment(id, params::Dict{String,<:Any})

Returns information for an environment.

# Arguments
- `id`: The ID of the environment for which to return information.

"""
get_environment(id; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "GET", "/environments/$(id)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function get_environment(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return workspaces_thin_client(
        "GET",
        "/environments/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_software_set(id)
    get_software_set(id, params::Dict{String,<:Any})

Returns information for a software set.

# Arguments
- `id`: The ID of the software set for which to return information.

"""
get_software_set(id; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "GET", "/softwaresets/$(id)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function get_software_set(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return workspaces_thin_client(
        "GET",
        "/softwaresets/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_devices()
    list_devices(params::Dict{String,<:Any})

Returns a list of thin client devices.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results that are returned per call. You can use
  nextToken to obtain further pages of results. This is only an upper limit. The actual
  number of results returned per call might be fewer than the specified maximum.
- `"nextToken"`: If nextToken is returned, there are more results available. The value of
  nextToken is a unique pagination token for each page. Make the call again using the
  returned token to retrieve the next page. Keep all other arguments unchanged. Each
  pagination token expires after 24 hours. Using an expired pagination token will return an
  HTTP 400 InvalidToken error.
"""
list_devices(; aws_config::AbstractAWSConfig=global_aws_config()) = workspaces_thin_client(
    "GET", "/devices"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
)
function list_devices(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return workspaces_thin_client(
        "GET", "/devices", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_environments()
    list_environments(params::Dict{String,<:Any})

Returns a list of environments.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results that are returned per call. You can use
  nextToken to obtain further pages of results. This is only an upper limit. The actual
  number of results returned per call might be fewer than the specified maximum.
- `"nextToken"`: If nextToken is returned, there are more results available. The value of
  nextToken is a unique pagination token for each page. Make the call again using the
  returned token to retrieve the next page. Keep all other arguments unchanged. Each
  pagination token expires after 24 hours. Using an expired pagination token will return an
  HTTP 400 InvalidToken error.
"""
list_environments(; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "GET", "/environments"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function list_environments(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return workspaces_thin_client(
        "GET",
        "/environments",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_software_sets()
    list_software_sets(params::Dict{String,<:Any})

Returns a list of software sets.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results that are returned per call. You can use
  nextToken to obtain further pages of results. This is only an upper limit. The actual
  number of results returned per call might be fewer than the specified maximum.
- `"nextToken"`: If nextToken is returned, there are more results available. The value of
  nextToken is a unique pagination token for each page. Make the call again using the
  returned token to retrieve the next page. Keep all other arguments unchanged. Each
  pagination token expires after 24 hours. Using an expired pagination token will return an
  HTTP 400 InvalidToken error.
"""
list_software_sets(; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "GET", "/softwaresets"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function list_software_sets(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return workspaces_thin_client(
        "GET",
        "/softwaresets",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Returns a list of tags for a resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource for which you want to
  retrieve tags.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "GET",
        "/tags/$(resourceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function list_tags_for_resource(
    resourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return workspaces_thin_client(
        "GET",
        "/tags/$(resourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Assigns one or more tags (key-value pairs) to the specified resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource that you want to tag.
- `tags`: A map of the key-value pairs of the tag or tags to assign to the resource.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tags" => tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function tag_resource(
    resourceArn,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return workspaces_thin_client(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tags" => tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes a tag or tags from a resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the resource that you want to untag.
- `tag_keys`: The keys of the key-value pairs for the tag or tags you want to remove from
  the specified resource.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function untag_resource(
    resourceArn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return workspaces_thin_client(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_device(id)
    update_device(id, params::Dict{String,<:Any})

Updates a thin client device.

# Arguments
- `id`: The ID of the device to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"desiredSoftwareSetId"`: The ID of the software set to apply.
- `"kmsKeyArn"`: The Amazon Resource Name (ARN) of the Key Management Service key to use
  for the update.
- `"name"`: The name of the device to update.
- `"softwareSetUpdateSchedule"`: An option to define if software updates should be applied
  within a maintenance window.
"""
update_device(id; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "PATCH", "/devices/$(id)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function update_device(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return workspaces_thin_client(
        "PATCH",
        "/devices/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_environment(id)
    update_environment(id, params::Dict{String,<:Any})

Updates an environment.

# Arguments
- `id`: The ID of the environment to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"desiredSoftwareSetId"`: The ID of the software set to apply.
- `"desktopArn"`: The Amazon Resource Name (ARN) of the desktop to stream from Amazon
  WorkSpaces, WorkSpaces Web, or AppStream 2.0.
- `"desktopEndpoint"`: The URL for the identity provider login (only for environments that
  use AppStream 2.0).
- `"maintenanceWindow"`: A specification for a time window to apply software updates.
- `"name"`: The name of the environment to update.
- `"softwareSetUpdateMode"`: An option to define which software updates to apply.
- `"softwareSetUpdateSchedule"`: An option to define if software updates should be applied
  within a maintenance window.
"""
update_environment(id; aws_config::AbstractAWSConfig=global_aws_config()) =
    workspaces_thin_client(
        "PATCH",
        "/environments/$(id)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function update_environment(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return workspaces_thin_client(
        "PATCH",
        "/environments/$(id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_software_set(id, validation_status)
    update_software_set(id, validation_status, params::Dict{String,<:Any})

Updates a software set.

# Arguments
- `id`: The ID of the software set to update.
- `validation_status`: An option to define if the software set has been validated.

"""
update_software_set(
    id, validationStatus; aws_config::AbstractAWSConfig=global_aws_config()
) = workspaces_thin_client(
    "PATCH",
    "/softwaresets/$(id)",
    Dict{String,Any}("validationStatus" => validationStatus);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_software_set(
    id,
    validationStatus,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return workspaces_thin_client(
        "PATCH",
        "/softwaresets/$(id)",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("validationStatus" => validationStatus), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
