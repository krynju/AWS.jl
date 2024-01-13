# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: s3outposts
using AWS.Compat
using AWS.UUIDs

"""
    create_endpoint(outpost_id, security_group_id, subnet_id)
    create_endpoint(outpost_id, security_group_id, subnet_id, params::Dict{String,<:Any})

Creates an endpoint and associates it with the specified Outpost.  It can take up to 5
minutes for this action to finish.   Related actions include:    DeleteEndpoint
ListEndpoints

# Arguments
- `outpost_id`: The ID of the Outposts.
- `security_group_id`: The ID of the security group to use with the endpoint.
- `subnet_id`: The ID of the subnet in the selected VPC. The endpoint subnet must belong to
  the Outpost that has Amazon S3 on Outposts provisioned.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AccessType"`: The type of access for the network connectivity for the Amazon S3 on
  Outposts endpoint. To use the Amazon Web Services VPC, choose Private. To use the endpoint
  with an on-premises network, choose CustomerOwnedIp. If you choose CustomerOwnedIp, you
  must also provide the customer-owned IP address pool (CoIP pool).   Private is the default
  access type value.
- `"CustomerOwnedIpv4Pool"`: The ID of the customer-owned IPv4 address pool (CoIP pool) for
  the endpoint. IP addresses are allocated from this pool for the endpoint.
"""
create_endpoint(
    OutpostId, SecurityGroupId, SubnetId; aws_config::AbstractAWSConfig=global_aws_config()
) = s3outposts(
    "POST",
    "/S3Outposts/CreateEndpoint",
    Dict{String,Any}(
        "OutpostId" => OutpostId,
        "SecurityGroupId" => SecurityGroupId,
        "SubnetId" => SubnetId,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_endpoint(
    OutpostId,
    SecurityGroupId,
    SubnetId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return s3outposts(
        "POST",
        "/S3Outposts/CreateEndpoint",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "OutpostId" => OutpostId,
                    "SecurityGroupId" => SecurityGroupId,
                    "SubnetId" => SubnetId,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_endpoint(endpoint_id, outpost_id)
    delete_endpoint(endpoint_id, outpost_id, params::Dict{String,<:Any})

Deletes an endpoint.  It can take up to 5 minutes for this action to finish.   Related
actions include:    CreateEndpoint     ListEndpoints

# Arguments
- `endpoint_id`: The ID of the endpoint.
- `outpost_id`: The ID of the Outposts.

"""
delete_endpoint(endpointId, outpostId; aws_config::AbstractAWSConfig=global_aws_config()) =
    s3outposts(
        "DELETE",
        "/S3Outposts/DeleteEndpoint",
        Dict{String,Any}("endpointId" => endpointId, "outpostId" => outpostId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function delete_endpoint(
    endpointId,
    outpostId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return s3outposts(
        "DELETE",
        "/S3Outposts/DeleteEndpoint",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("endpointId" => endpointId, "outpostId" => outpostId),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_endpoints()
    list_endpoints(params::Dict{String,<:Any})

Lists endpoints associated with the specified Outpost.  Related actions include:
CreateEndpoint     DeleteEndpoint

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of endpoints that will be returned in the response.
- `"nextToken"`: If a previous response from this operation included a NextToken value,
  provide that value here to retrieve the next page of results.
"""
list_endpoints(; aws_config::AbstractAWSConfig=global_aws_config()) = s3outposts(
    "GET",
    "/S3Outposts/ListEndpoints";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function list_endpoints(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return s3outposts(
        "GET",
        "/S3Outposts/ListEndpoints",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_outposts_with_s3()
    list_outposts_with_s3(params::Dict{String,<:Any})

Lists the Outposts with S3 on Outposts capacity for your Amazon Web Services account.
Includes S3 on Outposts that you have access to as the Outposts owner, or as a shared user
from Resource Access Manager (RAM).

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of Outposts to return. The limit is 100.
- `"nextToken"`: When you can get additional results from the ListOutpostsWithS3 call, a
  NextToken parameter is returned in the output. You can then pass in a subsequent command to
  the NextToken parameter to continue listing additional Outposts.
"""
list_outposts_with_s3(; aws_config::AbstractAWSConfig=global_aws_config()) = s3outposts(
    "GET",
    "/S3Outposts/ListOutpostsWithS3";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function list_outposts_with_s3(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return s3outposts(
        "GET",
        "/S3Outposts/ListOutpostsWithS3",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_shared_endpoints(outpost_id)
    list_shared_endpoints(outpost_id, params::Dict{String,<:Any})

Lists all endpoints associated with an Outpost that has been shared by Amazon Web Services
Resource Access Manager (RAM). Related actions include:    CreateEndpoint
DeleteEndpoint

# Arguments
- `outpost_id`: The ID of the Amazon Web Services Outpost.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of endpoints that will be returned in the response.
- `"nextToken"`: If a previous response from this operation included a NextToken value, you
  can provide that value here to retrieve the next page of results.
"""
list_shared_endpoints(outpostId; aws_config::AbstractAWSConfig=global_aws_config()) =
    s3outposts(
        "GET",
        "/S3Outposts/ListSharedEndpoints",
        Dict{String,Any}("outpostId" => outpostId);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function list_shared_endpoints(
    outpostId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return s3outposts(
        "GET",
        "/S3Outposts/ListSharedEndpoints",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("outpostId" => outpostId), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
