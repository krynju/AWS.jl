# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: route53_recovery_readiness
using AWS.Compat
using AWS.UUIDs

"""
    create_cell(cell_name)
    create_cell(cell_name, params::Dict{String,<:Any})

Creates a cell in an account.

# Arguments
- `cell_name`: The name of the cell to create.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"cells"`: A list of cell Amazon Resource Names (ARNs) contained within this cell, for
  use in nested cells. For example, Availability Zones within specific Amazon Web Services
  Regions.
- `"tags"`:
"""
create_cell(cellName; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "POST",
        "/cells",
        Dict{String,Any}("cellName" => cellName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function create_cell(
    cellName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "POST",
        "/cells",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("cellName" => cellName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_cross_account_authorization(cross_account_authorization)
    create_cross_account_authorization(cross_account_authorization, params::Dict{String,<:Any})

Creates a cross-account readiness authorization. This lets you authorize another account to
work with Route 53 Application Recovery Controller, for example, to check the readiness
status of resources in a separate account.

# Arguments
- `cross_account_authorization`: The cross-account authorization.

"""
create_cross_account_authorization(
    crossAccountAuthorization; aws_config::AbstractAWSConfig=global_aws_config()
) = route53_recovery_readiness(
    "POST",
    "/crossaccountauthorizations",
    Dict{String,Any}("crossAccountAuthorization" => crossAccountAuthorization);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_cross_account_authorization(
    crossAccountAuthorization,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "POST",
        "/crossaccountauthorizations",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("crossAccountAuthorization" => crossAccountAuthorization),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_readiness_check(readiness_check_name, resource_set_name)
    create_readiness_check(readiness_check_name, resource_set_name, params::Dict{String,<:Any})

Creates a readiness check in an account. A readiness check monitors a resource set in your
application, such as a set of Amazon Aurora instances, that Application Recovery Controller
is auditing recovery readiness for. The audits run once every minute on every resource
that's associated with a readiness check.

# Arguments
- `readiness_check_name`: The name of the readiness check to create.
- `resource_set_name`: The name of the resource set to check.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"tags"`:
"""
create_readiness_check(
    readinessCheckName, resourceSetName; aws_config::AbstractAWSConfig=global_aws_config()
) = route53_recovery_readiness(
    "POST",
    "/readinesschecks",
    Dict{String,Any}(
        "readinessCheckName" => readinessCheckName, "resourceSetName" => resourceSetName
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_readiness_check(
    readinessCheckName,
    resourceSetName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "POST",
        "/readinesschecks",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "readinessCheckName" => readinessCheckName,
                    "resourceSetName" => resourceSetName,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_recovery_group(recovery_group_name)
    create_recovery_group(recovery_group_name, params::Dict{String,<:Any})

Creates a recovery group in an account. A recovery group corresponds to an application and
includes a list of the cells that make up the application.

# Arguments
- `recovery_group_name`: The name of the recovery group to create.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"cells"`: A list of the cell Amazon Resource Names (ARNs) in the recovery group.
- `"tags"`:
"""
create_recovery_group(
    recoveryGroupName; aws_config::AbstractAWSConfig=global_aws_config()
) = route53_recovery_readiness(
    "POST",
    "/recoverygroups",
    Dict{String,Any}("recoveryGroupName" => recoveryGroupName);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_recovery_group(
    recoveryGroupName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "POST",
        "/recoverygroups",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("recoveryGroupName" => recoveryGroupName), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_resource_set(resource_set_name, resource_set_type, resources)
    create_resource_set(resource_set_name, resource_set_type, resources, params::Dict{String,<:Any})

Creates a resource set. A resource set is a set of resources of one type that span multiple
cells. You can associate a resource set with a readiness check to monitor the resources for
failover readiness.

# Arguments
- `resource_set_name`: The name of the resource set to create.
- `resource_set_type`: The resource type of the resources in the resource set. Enter one of
  the following values for resource type: AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage,
  AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway,
  AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer,
  AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster,
  AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic,
  AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway,
  AWS::Route53RecoveryReadiness::DNSTargetResource
- `resources`: A list of resource objects in the resource set.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"tags"`: A tag to associate with the parameters for a resource set.
"""
create_resource_set(
    resourceSetName,
    resourceSetType,
    resources;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = route53_recovery_readiness(
    "POST",
    "/resourcesets",
    Dict{String,Any}(
        "resourceSetName" => resourceSetName,
        "resourceSetType" => resourceSetType,
        "resources" => resources,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_resource_set(
    resourceSetName,
    resourceSetType,
    resources,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "POST",
        "/resourcesets",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "resourceSetName" => resourceSetName,
                    "resourceSetType" => resourceSetType,
                    "resources" => resources,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_cell(cell_name)
    delete_cell(cell_name, params::Dict{String,<:Any})

Delete a cell. When successful, the response code is 204, with no response body.

# Arguments
- `cell_name`: The name of the cell.

"""
delete_cell(cellName; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "DELETE",
        "/cells/$(cellName)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function delete_cell(
    cellName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "DELETE",
        "/cells/$(cellName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_cross_account_authorization(cross_account_authorization)
    delete_cross_account_authorization(cross_account_authorization, params::Dict{String,<:Any})

Deletes cross account readiness authorization.

# Arguments
- `cross_account_authorization`: The cross-account authorization.

"""
delete_cross_account_authorization(
    crossAccountAuthorization; aws_config::AbstractAWSConfig=global_aws_config()
) = route53_recovery_readiness(
    "DELETE",
    "/crossaccountauthorizations/$(crossAccountAuthorization)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_cross_account_authorization(
    crossAccountAuthorization,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "DELETE",
        "/crossaccountauthorizations/$(crossAccountAuthorization)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_readiness_check(readiness_check_name)
    delete_readiness_check(readiness_check_name, params::Dict{String,<:Any})

Deletes a readiness check.

# Arguments
- `readiness_check_name`: Name of a readiness check.

"""
delete_readiness_check(
    readinessCheckName; aws_config::AbstractAWSConfig=global_aws_config()
) = route53_recovery_readiness(
    "DELETE",
    "/readinesschecks/$(readinessCheckName)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_readiness_check(
    readinessCheckName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "DELETE",
        "/readinesschecks/$(readinessCheckName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_recovery_group(recovery_group_name)
    delete_recovery_group(recovery_group_name, params::Dict{String,<:Any})

Deletes a recovery group.

# Arguments
- `recovery_group_name`: The name of a recovery group.

"""
delete_recovery_group(
    recoveryGroupName; aws_config::AbstractAWSConfig=global_aws_config()
) = route53_recovery_readiness(
    "DELETE",
    "/recoverygroups/$(recoveryGroupName)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_recovery_group(
    recoveryGroupName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "DELETE",
        "/recoverygroups/$(recoveryGroupName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_resource_set(resource_set_name)
    delete_resource_set(resource_set_name, params::Dict{String,<:Any})

Deletes a resource set.

# Arguments
- `resource_set_name`: Name of a resource set.

"""
delete_resource_set(resourceSetName; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "DELETE",
        "/resourcesets/$(resourceSetName)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function delete_resource_set(
    resourceSetName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "DELETE",
        "/resourcesets/$(resourceSetName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_architecture_recommendations(recovery_group_name)
    get_architecture_recommendations(recovery_group_name, params::Dict{String,<:Any})

Gets recommendations about architecture designs for improving resiliency for an
application, based on a recovery group.

# Arguments
- `recovery_group_name`: The name of a recovery group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The number of objects that you want to return with this call.
- `"nextToken"`: The token that identifies which batch of results you want to see.
"""
get_architecture_recommendations(
    recoveryGroupName; aws_config::AbstractAWSConfig=global_aws_config()
) = route53_recovery_readiness(
    "GET",
    "/recoverygroups/$(recoveryGroupName)/architectureRecommendations";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function get_architecture_recommendations(
    recoveryGroupName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "GET",
        "/recoverygroups/$(recoveryGroupName)/architectureRecommendations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_cell(cell_name)
    get_cell(cell_name, params::Dict{String,<:Any})

Gets information about a cell including cell name, cell Amazon Resource Name (ARN), ARNs of
nested cells for this cell, and a list of those cell ARNs with their associated recovery
group ARNs.

# Arguments
- `cell_name`: The name of the cell.

"""
get_cell(cellName; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "GET", "/cells/$(cellName)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function get_cell(
    cellName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "GET",
        "/cells/$(cellName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_cell_readiness_summary(cell_name)
    get_cell_readiness_summary(cell_name, params::Dict{String,<:Any})

Gets readiness for a cell. Aggregates the readiness of all the resources that are
associated with the cell into a single value.

# Arguments
- `cell_name`: The name of the cell.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The number of objects that you want to return with this call.
- `"nextToken"`: The token that identifies which batch of results you want to see.
"""
get_cell_readiness_summary(cellName; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "GET",
        "/cellreadiness/$(cellName)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function get_cell_readiness_summary(
    cellName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "GET",
        "/cellreadiness/$(cellName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_readiness_check(readiness_check_name)
    get_readiness_check(readiness_check_name, params::Dict{String,<:Any})

Gets details about a readiness check.

# Arguments
- `readiness_check_name`: Name of a readiness check.

"""
get_readiness_check(readinessCheckName; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "GET",
        "/readinesschecks/$(readinessCheckName)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function get_readiness_check(
    readinessCheckName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "GET",
        "/readinesschecks/$(readinessCheckName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_readiness_check_resource_status(readiness_check_name, resource_identifier)
    get_readiness_check_resource_status(readiness_check_name, resource_identifier, params::Dict{String,<:Any})

Gets individual readiness status for a readiness check. To see the overall readiness status
for a recovery group, that considers the readiness status for all the readiness checks in
the recovery group, use GetRecoveryGroupReadinessSummary.

# Arguments
- `readiness_check_name`: Name of a readiness check.
- `resource_identifier`: The resource identifier, which is the Amazon Resource Name (ARN)
  or the identifier generated for the resource by Application Recovery Controller (for
  example, for a DNS target resource).

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The number of objects that you want to return with this call.
- `"nextToken"`: The token that identifies which batch of results you want to see.
"""
get_readiness_check_resource_status(
    readinessCheckName,
    resourceIdentifier;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = route53_recovery_readiness(
    "GET",
    "/readinesschecks/$(readinessCheckName)/resource/$(resourceIdentifier)/status";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function get_readiness_check_resource_status(
    readinessCheckName,
    resourceIdentifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "GET",
        "/readinesschecks/$(readinessCheckName)/resource/$(resourceIdentifier)/status",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_readiness_check_status(readiness_check_name)
    get_readiness_check_status(readiness_check_name, params::Dict{String,<:Any})

Gets the readiness status for an individual readiness check. To see the overall readiness
status for a recovery group, that considers the readiness status for all the readiness
checks in a recovery group, use GetRecoveryGroupReadinessSummary.

# Arguments
- `readiness_check_name`: Name of a readiness check.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The number of objects that you want to return with this call.
- `"nextToken"`: The token that identifies which batch of results you want to see.
"""
get_readiness_check_status(
    readinessCheckName; aws_config::AbstractAWSConfig=global_aws_config()
) = route53_recovery_readiness(
    "GET",
    "/readinesschecks/$(readinessCheckName)/status";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function get_readiness_check_status(
    readinessCheckName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "GET",
        "/readinesschecks/$(readinessCheckName)/status",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_recovery_group(recovery_group_name)
    get_recovery_group(recovery_group_name, params::Dict{String,<:Any})

Gets details about a recovery group, including a list of the cells that are included in it.

# Arguments
- `recovery_group_name`: The name of a recovery group.

"""
get_recovery_group(recoveryGroupName; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "GET",
        "/recoverygroups/$(recoveryGroupName)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function get_recovery_group(
    recoveryGroupName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "GET",
        "/recoverygroups/$(recoveryGroupName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_recovery_group_readiness_summary(recovery_group_name)
    get_recovery_group_readiness_summary(recovery_group_name, params::Dict{String,<:Any})

Displays a summary of information about a recovery group's readiness status. Includes the
readiness checks for resources in the recovery group and the readiness status of each one.

# Arguments
- `recovery_group_name`: The name of a recovery group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The number of objects that you want to return with this call.
- `"nextToken"`: The token that identifies which batch of results you want to see.
"""
get_recovery_group_readiness_summary(
    recoveryGroupName; aws_config::AbstractAWSConfig=global_aws_config()
) = route53_recovery_readiness(
    "GET",
    "/recoverygroupreadiness/$(recoveryGroupName)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function get_recovery_group_readiness_summary(
    recoveryGroupName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "GET",
        "/recoverygroupreadiness/$(recoveryGroupName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_resource_set(resource_set_name)
    get_resource_set(resource_set_name, params::Dict{String,<:Any})

Displays the details about a resource set, including a list of the resources in the set.

# Arguments
- `resource_set_name`: Name of a resource set.

"""
get_resource_set(resourceSetName; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "GET",
        "/resourcesets/$(resourceSetName)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function get_resource_set(
    resourceSetName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "GET",
        "/resourcesets/$(resourceSetName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_cells()
    list_cells(params::Dict{String,<:Any})

Lists the cells for an account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The number of objects that you want to return with this call.
- `"nextToken"`: The token that identifies which batch of results you want to see.
"""
list_cells(; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "GET", "/cells"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function list_cells(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_readiness(
        "GET", "/cells", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_cross_account_authorizations()
    list_cross_account_authorizations(params::Dict{String,<:Any})

Lists the cross-account readiness authorizations that are in place for an account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The number of objects that you want to return with this call.
- `"nextToken"`: The token that identifies which batch of results you want to see.
"""
list_cross_account_authorizations(; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "GET",
        "/crossaccountauthorizations";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function list_cross_account_authorizations(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_readiness(
        "GET",
        "/crossaccountauthorizations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_readiness_checks()
    list_readiness_checks(params::Dict{String,<:Any})

Lists the readiness checks for an account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The number of objects that you want to return with this call.
- `"nextToken"`: The token that identifies which batch of results you want to see.
"""
list_readiness_checks(; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "GET", "/readinesschecks"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function list_readiness_checks(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_readiness(
        "GET",
        "/readinesschecks",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_recovery_groups()
    list_recovery_groups(params::Dict{String,<:Any})

Lists the recovery groups in an account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The number of objects that you want to return with this call.
- `"nextToken"`: The token that identifies which batch of results you want to see.
"""
list_recovery_groups(; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "GET", "/recoverygroups"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function list_recovery_groups(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_readiness(
        "GET",
        "/recoverygroups",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_resource_sets()
    list_resource_sets(params::Dict{String,<:Any})

Lists the resource sets in an account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The number of objects that you want to return with this call.
- `"nextToken"`: The token that identifies which batch of results you want to see.
"""
list_resource_sets(; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "GET", "/resourcesets"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function list_resource_sets(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_readiness(
        "GET",
        "/resourcesets",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_rules()
    list_rules(params::Dict{String,<:Any})

Lists all readiness rules, or lists the readiness rules for a specific resource type.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The number of objects that you want to return with this call.
- `"nextToken"`: The token that identifies which batch of results you want to see.
- `"resourceType"`: The resource type that a readiness rule applies to.
"""
list_rules(; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "GET", "/rules"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function list_rules(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return route53_recovery_readiness(
        "GET", "/rules", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_tags_for_resources(resource-arn)
    list_tags_for_resources(resource-arn, params::Dict{String,<:Any})

Lists the tags for a resource.

# Arguments
- `resource-arn`: The Amazon Resource Name (ARN) for a resource.

"""
list_tags_for_resources(resource_arn; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "GET",
        "/tags/$(resource-arn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function list_tags_for_resources(
    resource_arn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "GET",
        "/tags/$(resource-arn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource-arn, tags)
    tag_resource(resource-arn, tags, params::Dict{String,<:Any})

Adds a tag to a resource.

# Arguments
- `resource-arn`: The Amazon Resource Name (ARN) for a resource.
- `tags`:

"""
tag_resource(resource_arn, tags; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "POST",
        "/tags/$(resource-arn)",
        Dict{String,Any}("tags" => tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function tag_resource(
    resource_arn,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "POST",
        "/tags/$(resource-arn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tags" => tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource-arn, tag_keys)
    untag_resource(resource-arn, tag_keys, params::Dict{String,<:Any})

Removes a tag from a resource.

# Arguments
- `resource-arn`: The Amazon Resource Name (ARN) for a resource.
- `tag_keys`: The keys for tags you add to resources.

"""
untag_resource(resource_arn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "DELETE",
        "/tags/$(resource-arn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function untag_resource(
    resource_arn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "DELETE",
        "/tags/$(resource-arn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_cell(cell_name, cells)
    update_cell(cell_name, cells, params::Dict{String,<:Any})

Updates a cell to replace the list of nested cells with a new list of nested cells.

# Arguments
- `cell_name`: The name of the cell.
- `cells`: A list of cell Amazon Resource Names (ARNs), which completely replaces the
  previous list.

"""
update_cell(cellName, cells; aws_config::AbstractAWSConfig=global_aws_config()) =
    route53_recovery_readiness(
        "PUT",
        "/cells/$(cellName)",
        Dict{String,Any}("cells" => cells);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function update_cell(
    cellName,
    cells,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "PUT",
        "/cells/$(cellName)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("cells" => cells), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_readiness_check(readiness_check_name, resource_set_name)
    update_readiness_check(readiness_check_name, resource_set_name, params::Dict{String,<:Any})

Updates a readiness check.

# Arguments
- `readiness_check_name`: Name of a readiness check.
- `resource_set_name`: The name of the resource set to be checked.

"""
update_readiness_check(
    readinessCheckName, resourceSetName; aws_config::AbstractAWSConfig=global_aws_config()
) = route53_recovery_readiness(
    "PUT",
    "/readinesschecks/$(readinessCheckName)",
    Dict{String,Any}("resourceSetName" => resourceSetName);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_readiness_check(
    readinessCheckName,
    resourceSetName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "PUT",
        "/readinesschecks/$(readinessCheckName)",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("resourceSetName" => resourceSetName), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_recovery_group(cells, recovery_group_name)
    update_recovery_group(cells, recovery_group_name, params::Dict{String,<:Any})

Updates a recovery group.

# Arguments
- `cells`: A list of cell Amazon Resource Names (ARNs). This list completely replaces the
  previous list.
- `recovery_group_name`: The name of a recovery group.

"""
update_recovery_group(
    cells, recoveryGroupName; aws_config::AbstractAWSConfig=global_aws_config()
) = route53_recovery_readiness(
    "PUT",
    "/recoverygroups/$(recoveryGroupName)",
    Dict{String,Any}("cells" => cells);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_recovery_group(
    cells,
    recoveryGroupName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "PUT",
        "/recoverygroups/$(recoveryGroupName)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("cells" => cells), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_resource_set(resource_set_name, resource_set_type, resources)
    update_resource_set(resource_set_name, resource_set_type, resources, params::Dict{String,<:Any})

Updates a resource set.

# Arguments
- `resource_set_name`: Name of a resource set.
- `resource_set_type`: The resource type of the resources in the resource set. Enter one of
  the following values for resource type: AWS::ApiGateway::Stage, AWS::ApiGatewayV2::Stage,
  AWS::AutoScaling::AutoScalingGroup, AWS::CloudWatch::Alarm, AWS::EC2::CustomerGateway,
  AWS::DynamoDB::Table, AWS::EC2::Volume, AWS::ElasticLoadBalancing::LoadBalancer,
  AWS::ElasticLoadBalancingV2::LoadBalancer, AWS::Lambda::Function, AWS::MSK::Cluster,
  AWS::RDS::DBCluster, AWS::Route53::HealthCheck, AWS::SQS::Queue, AWS::SNS::Topic,
  AWS::SNS::Subscription, AWS::EC2::VPC, AWS::EC2::VPNConnection, AWS::EC2::VPNGateway,
  AWS::Route53RecoveryReadiness::DNSTargetResource
- `resources`: A list of resource objects.

"""
update_resource_set(
    resourceSetName,
    resourceSetType,
    resources;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = route53_recovery_readiness(
    "PUT",
    "/resourcesets/$(resourceSetName)",
    Dict{String,Any}("resourceSetType" => resourceSetType, "resources" => resources);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_resource_set(
    resourceSetName,
    resourceSetType,
    resources,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return route53_recovery_readiness(
        "PUT",
        "/resourcesets/$(resourceSetName)",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "resourceSetType" => resourceSetType, "resources" => resources
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
