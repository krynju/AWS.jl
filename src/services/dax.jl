# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: dax
using AWS.Compat
using AWS.UUIDs

"""
    create_cluster(cluster_name, iam_role_arn, node_type, replication_factor)
    create_cluster(cluster_name, iam_role_arn, node_type, replication_factor, params::Dict{String,<:Any})

Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.

# Arguments
- `cluster_name`: The cluster identifier. This parameter is stored as a lowercase string.
  Constraints:    A name must contain from 1 to 20 alphanumeric characters or hyphens.   The
  first character must be a letter.   A name cannot end with a hyphen or contain two
  consecutive hyphens.
- `iam_role_arn`: A valid Amazon Resource Name (ARN) that identifies an IAM role. At
  runtime, DAX will assume this role and use the role's permissions to access DynamoDB on
  your behalf.
- `node_type`: The compute and memory capacity of the nodes in the cluster.
- `replication_factor`: The number of nodes in the DAX cluster. A replication factor of 1
  will create a single-node cluster, without any read replicas. For additional fault
  tolerance, you can create a multiple node cluster with one or more read replicas. To do
  this, set ReplicationFactor to a number between 3 (one primary and two read replicas) and
  10 (one primary and nine read replicas). If the AvailabilityZones parameter is provided,
  its length must equal the ReplicationFactor.  AWS recommends that you have at least two
  read replicas per cluster.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AvailabilityZones"`: The Availability Zones (AZs) in which the cluster nodes will
  reside after the cluster has been created or updated. If provided, the length of this list
  must equal the ReplicationFactor parameter. If you omit this parameter, DAX will spread the
  nodes across Availability Zones for the highest availability.
- `"ClusterEndpointEncryptionType"`: The type of encryption the cluster's endpoint should
  support. Values are:    NONE for no encryption    TLS for Transport Layer Security
- `"Description"`: A description of the cluster.
- `"NotificationTopicArn"`: The Amazon Resource Name (ARN) of the Amazon SNS topic to which
  notifications will be sent.  The Amazon SNS topic owner must be same as the DAX cluster
  owner.
- `"ParameterGroupName"`: The parameter group to be associated with the DAX cluster.
- `"PreferredMaintenanceWindow"`: Specifies the weekly time range during which maintenance
  on the DAX cluster is performed. It is specified as a range in the format
  ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute
  period. Valid values for ddd are:    sun     mon     tue     wed     thu     fri     sat
  Example: sun:05:00-sun:09:00   If you don't specify a preferred maintenance window when you
  create or modify a cache cluster, DAX assigns a 60-minute maintenance window on a randomly
  selected day of the week.
- `"SSESpecification"`: Represents the settings used to enable server-side encryption on
  the cluster.
- `"SecurityGroupIds"`: A list of security group IDs to be assigned to each node in the DAX
  cluster. (Each of the security group ID is system-generated.) If this parameter is not
  specified, DAX assigns the default VPC security group to each node.
- `"SubnetGroupName"`: The name of the subnet group to be used for the replication group.
  DAX clusters can only run in an Amazon VPC environment. All of the subnets that you specify
  in a subnet group must exist in the same VPC.
- `"Tags"`: A set of tags to associate with the DAX cluster.
"""
create_cluster(
    ClusterName,
    IamRoleArn,
    NodeType,
    ReplicationFactor;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = dax(
    "CreateCluster",
    Dict{String,Any}(
        "ClusterName" => ClusterName,
        "IamRoleArn" => IamRoleArn,
        "NodeType" => NodeType,
        "ReplicationFactor" => ReplicationFactor,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_cluster(
    ClusterName,
    IamRoleArn,
    NodeType,
    ReplicationFactor,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "CreateCluster",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ClusterName" => ClusterName,
                    "IamRoleArn" => IamRoleArn,
                    "NodeType" => NodeType,
                    "ReplicationFactor" => ReplicationFactor,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_parameter_group(parameter_group_name)
    create_parameter_group(parameter_group_name, params::Dict{String,<:Any})

Creates a new parameter group. A parameter group is a collection of parameters that you
apply to all of the nodes in a DAX cluster.

# Arguments
- `parameter_group_name`: The name of the parameter group to apply to all of the clusters
  in this replication group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: A description of the parameter group.
"""
create_parameter_group(
    ParameterGroupName; aws_config::AbstractAWSConfig=global_aws_config()
) = dax(
    "CreateParameterGroup",
    Dict{String,Any}("ParameterGroupName" => ParameterGroupName);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_parameter_group(
    ParameterGroupName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "CreateParameterGroup",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("ParameterGroupName" => ParameterGroupName), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_subnet_group(subnet_group_name, subnet_ids)
    create_subnet_group(subnet_group_name, subnet_ids, params::Dict{String,<:Any})

Creates a new subnet group.

# Arguments
- `subnet_group_name`: A name for the subnet group. This value is stored as a lowercase
  string.
- `subnet_ids`: A list of VPC subnet IDs for the subnet group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: A description for the subnet group
"""
create_subnet_group(
    SubnetGroupName, SubnetIds; aws_config::AbstractAWSConfig=global_aws_config()
) = dax(
    "CreateSubnetGroup",
    Dict{String,Any}("SubnetGroupName" => SubnetGroupName, "SubnetIds" => SubnetIds);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_subnet_group(
    SubnetGroupName,
    SubnetIds,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "CreateSubnetGroup",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "SubnetGroupName" => SubnetGroupName, "SubnetIds" => SubnetIds
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    decrease_replication_factor(cluster_name, new_replication_factor)
    decrease_replication_factor(cluster_name, new_replication_factor, params::Dict{String,<:Any})

Removes one or more nodes from a DAX cluster.  You cannot use DecreaseReplicationFactor to
remove the last node in a DAX cluster. If you need to do this, use DeleteCluster instead.

# Arguments
- `cluster_name`: The name of the DAX cluster from which you want to remove nodes.
- `new_replication_factor`: The new number of nodes for the DAX cluster.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AvailabilityZones"`: The Availability Zone(s) from which to remove nodes.
- `"NodeIdsToRemove"`: The unique identifiers of the nodes to be removed from the cluster.
"""
decrease_replication_factor(
    ClusterName, NewReplicationFactor; aws_config::AbstractAWSConfig=global_aws_config()
) = dax(
    "DecreaseReplicationFactor",
    Dict{String,Any}(
        "ClusterName" => ClusterName, "NewReplicationFactor" => NewReplicationFactor
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function decrease_replication_factor(
    ClusterName,
    NewReplicationFactor,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "DecreaseReplicationFactor",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ClusterName" => ClusterName,
                    "NewReplicationFactor" => NewReplicationFactor,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_cluster(cluster_name)
    delete_cluster(cluster_name, params::Dict{String,<:Any})

Deletes a previously provisioned DAX cluster. DeleteCluster deletes all associated nodes,
node endpoints and the DAX cluster itself. When you receive a successful response from this
action, DAX immediately begins deleting the cluster; you cannot cancel or revert this
action.

# Arguments
- `cluster_name`: The name of the cluster to be deleted.

"""
delete_cluster(ClusterName; aws_config::AbstractAWSConfig=global_aws_config()) = dax(
    "DeleteCluster",
    Dict{String,Any}("ClusterName" => ClusterName);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_cluster(
    ClusterName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "DeleteCluster",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ClusterName" => ClusterName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_parameter_group(parameter_group_name)
    delete_parameter_group(parameter_group_name, params::Dict{String,<:Any})

Deletes the specified parameter group. You cannot delete a parameter group if it is
associated with any DAX clusters.

# Arguments
- `parameter_group_name`: The name of the parameter group to delete.

"""
delete_parameter_group(
    ParameterGroupName; aws_config::AbstractAWSConfig=global_aws_config()
) = dax(
    "DeleteParameterGroup",
    Dict{String,Any}("ParameterGroupName" => ParameterGroupName);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_parameter_group(
    ParameterGroupName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "DeleteParameterGroup",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("ParameterGroupName" => ParameterGroupName), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_subnet_group(subnet_group_name)
    delete_subnet_group(subnet_group_name, params::Dict{String,<:Any})

Deletes a subnet group.  You cannot delete a subnet group if it is associated with any DAX
clusters.

# Arguments
- `subnet_group_name`: The name of the subnet group to delete.

"""
delete_subnet_group(SubnetGroupName; aws_config::AbstractAWSConfig=global_aws_config()) =
    dax(
        "DeleteSubnetGroup",
        Dict{String,Any}("SubnetGroupName" => SubnetGroupName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function delete_subnet_group(
    SubnetGroupName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "DeleteSubnetGroup",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("SubnetGroupName" => SubnetGroupName), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_clusters()
    describe_clusters(params::Dict{String,<:Any})

Returns information about all provisioned DAX clusters if no cluster identifier is
specified, or about a specific DAX cluster if a cluster identifier is supplied. If the
cluster is in the CREATING state, only cluster level information will be displayed until
all of the nodes are successfully provisioned. If the cluster is in the DELETING state,
only cluster level information will be displayed. If nodes are currently being added to the
DAX cluster, node endpoint information and creation time for the additional nodes will not
be displayed until they are completely provisioned. When the DAX cluster state is
available, the cluster is ready for use. If nodes are currently being removed from the DAX
cluster, no endpoint information for the removed nodes is displayed.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClusterNames"`: The names of the DAX clusters being described.
- `"MaxResults"`: The maximum number of results to include in the response. If more results
  exist than the specified MaxResults value, a token is included in the response so that the
  remaining results can be retrieved. The value for MaxResults must be between 20 and 100.
- `"NextToken"`: An optional token returned from a prior request. Use this token for
  pagination of results from this action. If this parameter is specified, the response
  includes only results beyond the token, up to the value specified by MaxResults.
"""
describe_clusters(; aws_config::AbstractAWSConfig=global_aws_config()) =
    dax("DescribeClusters"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
function describe_clusters(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return dax(
        "DescribeClusters", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    describe_default_parameters()
    describe_default_parameters(params::Dict{String,<:Any})

Returns the default system parameter information for the DAX caching software.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to include in the response. If more results
  exist than the specified MaxResults value, a token is included in the response so that the
  remaining results can be retrieved. The value for MaxResults must be between 20 and 100.
- `"NextToken"`: An optional token returned from a prior request. Use this token for
  pagination of results from this action. If this parameter is specified, the response
  includes only results beyond the token, up to the value specified by MaxResults.
"""
describe_default_parameters(; aws_config::AbstractAWSConfig=global_aws_config()) =
    dax("DescribeDefaultParameters"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
function describe_default_parameters(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return dax(
        "DescribeDefaultParameters",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_events()
    describe_events(params::Dict{String,<:Any})

Returns events related to DAX clusters and parameter groups. You can obtain events specific
to a particular DAX cluster or parameter group by providing the name as a parameter. By
default, only the events occurring within the last 24 hours are returned; however, you can
retrieve up to 14 days' worth of events if necessary.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Duration"`: The number of minutes' worth of events to retrieve.
- `"EndTime"`: The end of the time interval for which to retrieve events, specified in ISO
  8601 format.
- `"MaxResults"`: The maximum number of results to include in the response. If more results
  exist than the specified MaxResults value, a token is included in the response so that the
  remaining results can be retrieved. The value for MaxResults must be between 20 and 100.
- `"NextToken"`: An optional token returned from a prior request. Use this token for
  pagination of results from this action. If this parameter is specified, the response
  includes only results beyond the token, up to the value specified by MaxResults.
- `"SourceName"`: The identifier of the event source for which events will be returned. If
  not specified, then all sources are included in the response.
- `"SourceType"`: The event source to retrieve events for. If no value is specified, all
  events are returned.
- `"StartTime"`: The beginning of the time interval to retrieve events for, specified in
  ISO 8601 format.
"""
describe_events(; aws_config::AbstractAWSConfig=global_aws_config()) =
    dax("DescribeEvents"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
function describe_events(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return dax(
        "DescribeEvents", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    describe_parameter_groups()
    describe_parameter_groups(params::Dict{String,<:Any})

Returns a list of parameter group descriptions. If a parameter group name is specified, the
list will contain only the descriptions for that group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to include in the response. If more results
  exist than the specified MaxResults value, a token is included in the response so that the
  remaining results can be retrieved. The value for MaxResults must be between 20 and 100.
- `"NextToken"`: An optional token returned from a prior request. Use this token for
  pagination of results from this action. If this parameter is specified, the response
  includes only results beyond the token, up to the value specified by MaxResults.
- `"ParameterGroupNames"`: The names of the parameter groups.
"""
describe_parameter_groups(; aws_config::AbstractAWSConfig=global_aws_config()) =
    dax("DescribeParameterGroups"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
function describe_parameter_groups(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return dax(
        "DescribeParameterGroups",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_parameters(parameter_group_name)
    describe_parameters(parameter_group_name, params::Dict{String,<:Any})

Returns the detailed parameter list for a particular parameter group.

# Arguments
- `parameter_group_name`: The name of the parameter group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to include in the response. If more results
  exist than the specified MaxResults value, a token is included in the response so that the
  remaining results can be retrieved. The value for MaxResults must be between 20 and 100.
- `"NextToken"`: An optional token returned from a prior request. Use this token for
  pagination of results from this action. If this parameter is specified, the response
  includes only results beyond the token, up to the value specified by MaxResults.
- `"Source"`: How the parameter is defined. For example, system denotes a system-defined
  parameter.
"""
describe_parameters(ParameterGroupName; aws_config::AbstractAWSConfig=global_aws_config()) =
    dax(
        "DescribeParameters",
        Dict{String,Any}("ParameterGroupName" => ParameterGroupName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function describe_parameters(
    ParameterGroupName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "DescribeParameters",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("ParameterGroupName" => ParameterGroupName), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_subnet_groups()
    describe_subnet_groups(params::Dict{String,<:Any})

Returns a list of subnet group descriptions. If a subnet group name is specified, the list
will contain only the description of that group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results to include in the response. If more results
  exist than the specified MaxResults value, a token is included in the response so that the
  remaining results can be retrieved. The value for MaxResults must be between 20 and 100.
- `"NextToken"`: An optional token returned from a prior request. Use this token for
  pagination of results from this action. If this parameter is specified, the response
  includes only results beyond the token, up to the value specified by MaxResults.
- `"SubnetGroupNames"`: The name of the subnet group.
"""
describe_subnet_groups(; aws_config::AbstractAWSConfig=global_aws_config()) =
    dax("DescribeSubnetGroups"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
function describe_subnet_groups(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return dax(
        "DescribeSubnetGroups",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    increase_replication_factor(cluster_name, new_replication_factor)
    increase_replication_factor(cluster_name, new_replication_factor, params::Dict{String,<:Any})

Adds one or more nodes to a DAX cluster.

# Arguments
- `cluster_name`: The name of the DAX cluster that will receive additional nodes.
- `new_replication_factor`: The new number of nodes for the DAX cluster.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AvailabilityZones"`: The Availability Zones (AZs) in which the cluster nodes will be
  created. All nodes belonging to the cluster are placed in these Availability Zones. Use
  this parameter if you want to distribute the nodes across multiple AZs.
"""
increase_replication_factor(
    ClusterName, NewReplicationFactor; aws_config::AbstractAWSConfig=global_aws_config()
) = dax(
    "IncreaseReplicationFactor",
    Dict{String,Any}(
        "ClusterName" => ClusterName, "NewReplicationFactor" => NewReplicationFactor
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function increase_replication_factor(
    ClusterName,
    NewReplicationFactor,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "IncreaseReplicationFactor",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ClusterName" => ClusterName,
                    "NewReplicationFactor" => NewReplicationFactor,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags(resource_name)
    list_tags(resource_name, params::Dict{String,<:Any})

List all of the tags for a DAX cluster. You can call ListTags up to 10 times per second,
per account.

# Arguments
- `resource_name`: The name of the DAX resource to which the tags belong.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"NextToken"`: An optional token returned from a prior request. Use this token for
  pagination of results from this action. If this parameter is specified, the response
  includes only results beyond the token.
"""
list_tags(ResourceName; aws_config::AbstractAWSConfig=global_aws_config()) = dax(
    "ListTags",
    Dict{String,Any}("ResourceName" => ResourceName);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function list_tags(
    ResourceName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "ListTags",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ResourceName" => ResourceName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    reboot_node(cluster_name, node_id)
    reboot_node(cluster_name, node_id, params::Dict{String,<:Any})

Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible.
During the reboot, the node status is set to REBOOTING.   RebootNode restarts the DAX
engine process and does not remove the contents of the cache.

# Arguments
- `cluster_name`: The name of the DAX cluster containing the node to be rebooted.
- `node_id`: The system-assigned ID of the node to be rebooted.

"""
reboot_node(ClusterName, NodeId; aws_config::AbstractAWSConfig=global_aws_config()) = dax(
    "RebootNode",
    Dict{String,Any}("ClusterName" => ClusterName, "NodeId" => NodeId);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function reboot_node(
    ClusterName,
    NodeId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "RebootNode",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("ClusterName" => ClusterName, "NodeId" => NodeId),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_name, tags)
    tag_resource(resource_name, tags, params::Dict{String,<:Any})

Associates a set of tags with a DAX resource. You can call TagResource up to 5 times per
second, per account.

# Arguments
- `resource_name`: The name of the DAX resource to which tags should be added.
- `tags`: The tags to be assigned to the DAX resource.

"""
tag_resource(ResourceName, Tags; aws_config::AbstractAWSConfig=global_aws_config()) = dax(
    "TagResource",
    Dict{String,Any}("ResourceName" => ResourceName, "Tags" => Tags);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function tag_resource(
    ResourceName,
    Tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "TagResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("ResourceName" => ResourceName, "Tags" => Tags),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_name, tag_keys)
    untag_resource(resource_name, tag_keys, params::Dict{String,<:Any})

Removes the association of tags from a DAX resource. You can call UntagResource up to 5
times per second, per account.

# Arguments
- `resource_name`: The name of the DAX resource from which the tags should be removed.
- `tag_keys`: A list of tag keys. If the DAX cluster has any tags with these keys, then the
  tags are removed from the cluster.

"""
untag_resource(ResourceName, TagKeys; aws_config::AbstractAWSConfig=global_aws_config()) =
    dax(
        "UntagResource",
        Dict{String,Any}("ResourceName" => ResourceName, "TagKeys" => TagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function untag_resource(
    ResourceName,
    TagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "UntagResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("ResourceName" => ResourceName, "TagKeys" => TagKeys),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_cluster(cluster_name)
    update_cluster(cluster_name, params::Dict{String,<:Any})

Modifies the settings for a DAX cluster. You can use this action to change one or more
cluster configuration parameters by specifying the parameters and the new values.

# Arguments
- `cluster_name`: The name of the DAX cluster to be modified.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: A description of the changes being made to the cluster.
- `"NotificationTopicArn"`: The Amazon Resource Name (ARN) that identifies the topic.
- `"NotificationTopicStatus"`: The current state of the topic. A value of “active”
  means that notifications will be sent to the topic. A value of “inactive” means that
  notifications will not be sent to the topic.
- `"ParameterGroupName"`: The name of a parameter group for this cluster.
- `"PreferredMaintenanceWindow"`: A range of time when maintenance of DAX cluster software
  will be performed. For example: sun:01:00-sun:09:00. Cluster maintenance normally takes
  less than 30 minutes, and is performed automatically within the maintenance window.
- `"SecurityGroupIds"`: A list of user-specified security group IDs to be assigned to each
  node in the DAX cluster. If this parameter is not specified, DAX assigns the default VPC
  security group to each node.
"""
update_cluster(ClusterName; aws_config::AbstractAWSConfig=global_aws_config()) = dax(
    "UpdateCluster",
    Dict{String,Any}("ClusterName" => ClusterName);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_cluster(
    ClusterName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "UpdateCluster",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ClusterName" => ClusterName), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_parameter_group(parameter_group_name, parameter_name_values)
    update_parameter_group(parameter_group_name, parameter_name_values, params::Dict{String,<:Any})

Modifies the parameters of a parameter group. You can modify up to 20 parameters in a
single request by submitting a list parameter name and value pairs.

# Arguments
- `parameter_group_name`: The name of the parameter group.
- `parameter_name_values`: An array of name-value pairs for the parameters in the group.
  Each element in the array represents a single parameter.   record-ttl-millis and
  query-ttl-millis are the only supported parameter names. For more details, see Configuring
  TTL Settings.

"""
update_parameter_group(
    ParameterGroupName,
    ParameterNameValues;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = dax(
    "UpdateParameterGroup",
    Dict{String,Any}(
        "ParameterGroupName" => ParameterGroupName,
        "ParameterNameValues" => ParameterNameValues,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_parameter_group(
    ParameterGroupName,
    ParameterNameValues,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "UpdateParameterGroup",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "ParameterGroupName" => ParameterGroupName,
                    "ParameterNameValues" => ParameterNameValues,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_subnet_group(subnet_group_name)
    update_subnet_group(subnet_group_name, params::Dict{String,<:Any})

Modifies an existing subnet group.

# Arguments
- `subnet_group_name`: The name of the subnet group.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Description"`: A description of the subnet group.
- `"SubnetIds"`: A list of subnet IDs in the subnet group.
"""
update_subnet_group(SubnetGroupName; aws_config::AbstractAWSConfig=global_aws_config()) =
    dax(
        "UpdateSubnetGroup",
        Dict{String,Any}("SubnetGroupName" => SubnetGroupName);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function update_subnet_group(
    SubnetGroupName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return dax(
        "UpdateSubnetGroup",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("SubnetGroupName" => SubnetGroupName), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
