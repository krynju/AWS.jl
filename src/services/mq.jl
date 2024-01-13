# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: mq
using AWS.Compat
using AWS.UUIDs

"""
    create_broker(auto_minor_version_upgrade, broker_name, deployment_mode, engine_type, engine_version, host_instance_type, publicly_accessible, users)
    create_broker(auto_minor_version_upgrade, broker_name, deployment_mode, engine_type, engine_version, host_instance_type, publicly_accessible, users, params::Dict{String,<:Any})

Creates a broker. Note: This API is asynchronous. To create a broker, you must either use
the AmazonMQFullAccess IAM policy or include the following EC2 permissions in your IAM
policy. ec2:CreateNetworkInterface This permission is required to allow Amazon MQ to create
an elastic network interface (ENI) on behalf of your account.
ec2:CreateNetworkInterfacePermission This permission is required to attach the ENI to the
broker instance. ec2:DeleteNetworkInterface ec2:DeleteNetworkInterfacePermission
ec2:DetachNetworkInterface ec2:DescribeInternetGateways ec2:DescribeNetworkInterfaces
ec2:DescribeNetworkInterfacePermissions ec2:DescribeRouteTables ec2:DescribeSecurityGroups
ec2:DescribeSubnets ec2:DescribeVpcs For more information, see Create an IAM User and Get
Your Amazon Web Services Credentials and Never Modify or Delete the Amazon MQ Elastic
Network Interface in the Amazon MQ Developer Guide.

# Arguments
- `auto_minor_version_upgrade`: Enables automatic upgrades to new minor versions for
  brokers, as new versions are released and supported by Amazon MQ. Automatic upgrades occur
  during the scheduled maintenance window of the broker or after a manual broker reboot. Set
  to true by default, if no value is specified.
- `broker_name`: Required. The broker's name. This value must be unique in your Amazon Web
  Services account, 1-50 characters long, must contain only letters, numbers, dashes, and
  underscores, and must not contain white spaces, brackets, wildcard characters, or special
  characters. Do not add personally identifiable information (PII) or other confidential or
  sensitive information in broker names. Broker names are accessible to other Amazon Web
  Services services, including CloudWatch Logs. Broker names are not intended to be used for
  private or sensitive data.
- `deployment_mode`: Required. The broker's deployment mode.
- `engine_type`: Required. The type of broker engine. Currently, Amazon MQ supports
  ACTIVEMQ and RABBITMQ.
- `engine_version`: Required. The broker engine's version. For a list of supported engine
  versions, see Supported engines.
- `host_instance_type`: Required. The broker's instance type.
- `publicly_accessible`: Enables connections from applications outside of the VPC that
  hosts the broker's subnets. Set to false by default, if no value is provided.
- `users`: The list of broker users (persons or applications) who can access queues and
  topics. For Amazon MQ for RabbitMQ brokers, one and only one administrative user is
  accepted and created when a broker is first provisioned. All subsequent broker users are
  created by making RabbitMQ API calls directly to brokers or via the RabbitMQ web console.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"authenticationStrategy"`: Optional. The authentication strategy used to secure the
  broker. The default is SIMPLE.
- `"configuration"`: A list of information about the configuration.
- `"creatorRequestId"`: The unique ID that the requester receives for the created broker.
  Amazon MQ passes your ID with the API action. We recommend using a Universally Unique
  Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your
  application doesn't require idempotency.
- `"dataReplicationMode"`: Defines whether this broker is a part of a data replication pair.
- `"dataReplicationPrimaryBrokerArn"`: The Amazon Resource Name (ARN) of the primary broker
  that is used to replicate data from in a data replication pair, and is applied to the
  replica broker. Must be set when dataReplicationMode is set to CRDR.
- `"encryptionOptions"`: Encryption options for the broker.
- `"ldapServerMetadata"`: Optional. The metadata of the LDAP server used to authenticate
  and authorize connections to the broker. Does not apply to RabbitMQ brokers.
- `"logs"`: Enables Amazon CloudWatch logging for brokers.
- `"maintenanceWindowStartTime"`: The parameters that determine the WeeklyStartTime.
- `"securityGroups"`: The list of rules (1 minimum, 125 maximum) that authorize connections
  to brokers.
- `"storageType"`: The broker's storage type.
- `"subnetIds"`: The list of groups that define which subnets and IP ranges the broker can
  use from different Availability Zones. If you specify more than one subnet, the subnets
  must be in different Availability Zones. Amazon MQ will not be able to create VPC endpoints
  for your broker with multiple subnets in the same Availability Zone. A SINGLE_INSTANCE
  deployment requires one subnet (for example, the default subnet). An
  ACTIVE_STANDBY_MULTI_AZ Amazon MQ for ActiveMQ deployment requires two subnets. A
  CLUSTER_MULTI_AZ Amazon MQ for RabbitMQ deployment has no subnet requirements when deployed
  with public accessibility. Deployment without public accessibility requires at least one
  subnet. If you specify subnets in a shared VPC for a RabbitMQ broker, the associated VPC to
  which the specified subnets belong must be owned by your Amazon Web Services account.
  Amazon MQ will not be able to create VPC endpoints in VPCs that are not owned by your
  Amazon Web Services account.
- `"tags"`: Create tags when creating the broker.
"""
create_broker(
    autoMinorVersionUpgrade,
    brokerName,
    deploymentMode,
    engineType,
    engineVersion,
    hostInstanceType,
    publiclyAccessible,
    users;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = mq(
    "POST",
    "/v1/brokers",
    Dict{String,Any}(
        "autoMinorVersionUpgrade" => autoMinorVersionUpgrade,
        "brokerName" => brokerName,
        "deploymentMode" => deploymentMode,
        "engineType" => engineType,
        "engineVersion" => engineVersion,
        "hostInstanceType" => hostInstanceType,
        "publiclyAccessible" => publiclyAccessible,
        "users" => users,
        "creatorRequestId" => string(uuid4()),
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_broker(
    autoMinorVersionUpgrade,
    brokerName,
    deploymentMode,
    engineType,
    engineVersion,
    hostInstanceType,
    publiclyAccessible,
    users,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "POST",
        "/v1/brokers",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "autoMinorVersionUpgrade" => autoMinorVersionUpgrade,
                    "brokerName" => brokerName,
                    "deploymentMode" => deploymentMode,
                    "engineType" => engineType,
                    "engineVersion" => engineVersion,
                    "hostInstanceType" => hostInstanceType,
                    "publiclyAccessible" => publiclyAccessible,
                    "users" => users,
                    "creatorRequestId" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_configuration(engine_type, engine_version, name)
    create_configuration(engine_type, engine_version, name, params::Dict{String,<:Any})

Creates a new configuration for the specified configuration name. Amazon MQ uses the
default configuration (the engine type and version).

# Arguments
- `engine_type`: Required. The type of broker engine. Currently, Amazon MQ supports
  ACTIVEMQ and RABBITMQ.
- `engine_version`: Required. The broker engine's version. For a list of supported engine
  versions, see Supported engines.
- `name`: Required. The name of the configuration. This value can contain only alphanumeric
  characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150
  characters long.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"authenticationStrategy"`: Optional. The authentication strategy associated with the
  configuration. The default is SIMPLE.
- `"tags"`: Create tags when creating the configuration.
"""
create_configuration(
    engineType, engineVersion, name; aws_config::AbstractAWSConfig=global_aws_config()
) = mq(
    "POST",
    "/v1/configurations",
    Dict{String,Any}(
        "engineType" => engineType, "engineVersion" => engineVersion, "name" => name
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_configuration(
    engineType,
    engineVersion,
    name,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "POST",
        "/v1/configurations",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "engineType" => engineType,
                    "engineVersion" => engineVersion,
                    "name" => name,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_tags(resource-arn)
    create_tags(resource-arn, params::Dict{String,<:Any})

Add a tag to a resource.

# Arguments
- `resource-arn`: The Amazon Resource Name (ARN) of the resource tag.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"tags"`: The key-value pair for the resource tag.
"""
create_tags(resource_arn; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "POST",
    "/v1/tags/$(resource-arn)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_tags(
    resource_arn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "POST",
        "/v1/tags/$(resource-arn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_user(broker-id, password, username)
    create_user(broker-id, password, username, params::Dict{String,<:Any})

Creates an ActiveMQ user. Do not add personally identifiable information (PII) or other
confidential or sensitive information in broker usernames. Broker usernames are accessible
to other Amazon Web Services services, including CloudWatch Logs. Broker usernames are not
intended to be used for private or sensitive data.

# Arguments
- `broker-id`: The unique ID that Amazon MQ generates for the broker.
- `password`: Required. The password of the user. This value must be at least 12 characters
  long, must contain at least 4 unique characters, and must not contain commas, colons, or
  equal signs (,:=).
- `username`: The username of the ActiveMQ user. This value can contain only alphanumeric
  characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100
  characters long.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"consoleAccess"`: Enables access to the ActiveMQ Web Console for the ActiveMQ user.
- `"groups"`: The list of groups (20 maximum) to which the ActiveMQ user belongs. This
  value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (-
  . _ ~). This value must be 2-100 characters long.
- `"replicationUser"`: Defines if this user is intended for CRDR replication purposes.
"""
create_user(
    broker_id, password, username; aws_config::AbstractAWSConfig=global_aws_config()
) = mq(
    "POST",
    "/v1/brokers/$(broker-id)/users/$(username)",
    Dict{String,Any}("password" => password);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_user(
    broker_id,
    password,
    username,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "POST",
        "/v1/brokers/$(broker-id)/users/$(username)",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("password" => password), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_broker(broker-id)
    delete_broker(broker-id, params::Dict{String,<:Any})

Deletes a broker. Note: This API is asynchronous.

# Arguments
- `broker-id`: The unique ID that Amazon MQ generates for the broker.

"""
delete_broker(broker_id; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "DELETE",
    "/v1/brokers/$(broker-id)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_broker(
    broker_id,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "DELETE",
        "/v1/brokers/$(broker-id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_tags(resource-arn, tag_keys)
    delete_tags(resource-arn, tag_keys, params::Dict{String,<:Any})

Removes a tag from a resource.

# Arguments
- `resource-arn`: The Amazon Resource Name (ARN) of the resource tag.
- `tag_keys`: An array of tag keys to delete

"""
delete_tags(resource_arn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "DELETE",
    "/v1/tags/$(resource-arn)",
    Dict{String,Any}("tagKeys" => tagKeys);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_tags(
    resource_arn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "DELETE",
        "/v1/tags/$(resource-arn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_user(broker-id, username)
    delete_user(broker-id, username, params::Dict{String,<:Any})

Deletes an ActiveMQ user.

# Arguments
- `broker-id`: The unique ID that Amazon MQ generates for the broker.
- `username`: The username of the ActiveMQ user. This value can contain only alphanumeric
  characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100
  characters long.

"""
delete_user(broker_id, username; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "DELETE",
    "/v1/brokers/$(broker-id)/users/$(username)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_user(
    broker_id,
    username,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "DELETE",
        "/v1/brokers/$(broker-id)/users/$(username)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_broker(broker-id)
    describe_broker(broker-id, params::Dict{String,<:Any})

Returns information about the specified broker.

# Arguments
- `broker-id`: The unique ID that Amazon MQ generates for the broker.

"""
describe_broker(broker_id; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "GET",
    "/v1/brokers/$(broker-id)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function describe_broker(
    broker_id,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "GET",
        "/v1/brokers/$(broker-id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_broker_engine_types()
    describe_broker_engine_types(params::Dict{String,<:Any})

Describe available engine types and versions.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"engineType"`: Filter response by engine type.
- `"maxResults"`: The maximum number of brokers that Amazon MQ can return per page (20 by
  default). This value must be an integer from 5 to 100.
- `"nextToken"`: The token that specifies the next page of results Amazon MQ should return.
  To request the first page, leave nextToken empty.
"""
describe_broker_engine_types(; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "GET",
    "/v1/broker-engine-types";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function describe_broker_engine_types(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mq(
        "GET",
        "/v1/broker-engine-types",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_broker_instance_options()
    describe_broker_instance_options(params::Dict{String,<:Any})

Describe available broker instance options.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"engineType"`: Filter response by engine type.
- `"hostInstanceType"`: Filter response by host instance type.
- `"maxResults"`: The maximum number of brokers that Amazon MQ can return per page (20 by
  default). This value must be an integer from 5 to 100.
- `"nextToken"`: The token that specifies the next page of results Amazon MQ should return.
  To request the first page, leave nextToken empty.
- `"storageType"`: Filter response by storage type.
"""
describe_broker_instance_options(; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "GET",
    "/v1/broker-instance-options";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function describe_broker_instance_options(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mq(
        "GET",
        "/v1/broker-instance-options",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_configuration(configuration-id)
    describe_configuration(configuration-id, params::Dict{String,<:Any})

Returns information about the specified configuration.

# Arguments
- `configuration-id`: The unique ID that Amazon MQ generates for the configuration.

"""
describe_configuration(
    configuration_id; aws_config::AbstractAWSConfig=global_aws_config()
) = mq(
    "GET",
    "/v1/configurations/$(configuration-id)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function describe_configuration(
    configuration_id,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "GET",
        "/v1/configurations/$(configuration-id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_configuration_revision(configuration-id, configuration-revision)
    describe_configuration_revision(configuration-id, configuration-revision, params::Dict{String,<:Any})

Returns the specified configuration revision for the specified configuration.

# Arguments
- `configuration-id`: The unique ID that Amazon MQ generates for the configuration.
- `configuration-revision`: The revision of the configuration.

"""
describe_configuration_revision(
    configuration_id,
    configuration_revision;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = mq(
    "GET",
    "/v1/configurations/$(configuration-id)/revisions/$(configuration-revision)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function describe_configuration_revision(
    configuration_id,
    configuration_revision,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "GET",
        "/v1/configurations/$(configuration-id)/revisions/$(configuration-revision)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_user(broker-id, username)
    describe_user(broker-id, username, params::Dict{String,<:Any})

Returns information about an ActiveMQ user.

# Arguments
- `broker-id`: The unique ID that Amazon MQ generates for the broker.
- `username`: The username of the ActiveMQ user. This value can contain only alphanumeric
  characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100
  characters long.

"""
describe_user(broker_id, username; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "GET",
    "/v1/brokers/$(broker-id)/users/$(username)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function describe_user(
    broker_id,
    username,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "GET",
        "/v1/brokers/$(broker-id)/users/$(username)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_brokers()
    list_brokers(params::Dict{String,<:Any})

Returns a list of all brokers.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of brokers that Amazon MQ can return per page (20 by
  default). This value must be an integer from 5 to 100.
- `"nextToken"`: The token that specifies the next page of results Amazon MQ should return.
  To request the first page, leave nextToken empty.
"""
list_brokers(; aws_config::AbstractAWSConfig=global_aws_config()) =
    mq("GET", "/v1/brokers"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
function list_brokers(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mq(
        "GET", "/v1/brokers", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_configuration_revisions(configuration-id)
    list_configuration_revisions(configuration-id, params::Dict{String,<:Any})

Returns a list of all revisions for the specified configuration.

# Arguments
- `configuration-id`: The unique ID that Amazon MQ generates for the configuration.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of brokers that Amazon MQ can return per page (20 by
  default). This value must be an integer from 5 to 100.
- `"nextToken"`: The token that specifies the next page of results Amazon MQ should return.
  To request the first page, leave nextToken empty.
"""
list_configuration_revisions(
    configuration_id; aws_config::AbstractAWSConfig=global_aws_config()
) = mq(
    "GET",
    "/v1/configurations/$(configuration-id)/revisions";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function list_configuration_revisions(
    configuration_id,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "GET",
        "/v1/configurations/$(configuration-id)/revisions",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_configurations()
    list_configurations(params::Dict{String,<:Any})

Returns a list of all configurations.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of brokers that Amazon MQ can return per page (20 by
  default). This value must be an integer from 5 to 100.
- `"nextToken"`: The token that specifies the next page of results Amazon MQ should return.
  To request the first page, leave nextToken empty.
"""
list_configurations(; aws_config::AbstractAWSConfig=global_aws_config()) =
    mq("GET", "/v1/configurations"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
function list_configurations(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return mq(
        "GET",
        "/v1/configurations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags(resource-arn)
    list_tags(resource-arn, params::Dict{String,<:Any})

Lists tags for a resource.

# Arguments
- `resource-arn`: The Amazon Resource Name (ARN) of the resource tag.

"""
list_tags(resource_arn; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "GET",
    "/v1/tags/$(resource-arn)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function list_tags(
    resource_arn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "GET",
        "/v1/tags/$(resource-arn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_users(broker-id)
    list_users(broker-id, params::Dict{String,<:Any})

Returns a list of all ActiveMQ users.

# Arguments
- `broker-id`: The unique ID that Amazon MQ generates for the broker.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of brokers that Amazon MQ can return per page (20 by
  default). This value must be an integer from 5 to 100.
- `"nextToken"`: The token that specifies the next page of results Amazon MQ should return.
  To request the first page, leave nextToken empty.
"""
list_users(broker_id; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "GET",
    "/v1/brokers/$(broker-id)/users";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function list_users(
    broker_id,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "GET",
        "/v1/brokers/$(broker-id)/users",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    promote(broker-id, mode)
    promote(broker-id, mode, params::Dict{String,<:Any})

Promotes a data replication replica broker to the primary broker role.

# Arguments
- `broker-id`: The unique ID that Amazon MQ generates for the broker.
- `mode`: The Promote mode requested. Note: Valid values for the parameter are SWITCHOVER,
  FAILOVER.

"""
promote(broker_id, mode; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "POST",
    "/v1/brokers/$(broker-id)/promote",
    Dict{String,Any}("mode" => mode);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function promote(
    broker_id,
    mode,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "POST",
        "/v1/brokers/$(broker-id)/promote",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("mode" => mode), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    reboot_broker(broker-id)
    reboot_broker(broker-id, params::Dict{String,<:Any})

Reboots a broker. Note: This API is asynchronous.

# Arguments
- `broker-id`: The unique ID that Amazon MQ generates for the broker.

"""
reboot_broker(broker_id; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "POST",
    "/v1/brokers/$(broker-id)/reboot";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function reboot_broker(
    broker_id,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "POST",
        "/v1/brokers/$(broker-id)/reboot",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_broker(broker-id)
    update_broker(broker-id, params::Dict{String,<:Any})

Adds a pending configuration change to a broker.

# Arguments
- `broker-id`: The unique ID that Amazon MQ generates for the broker.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"authenticationStrategy"`: Optional. The authentication strategy used to secure the
  broker. The default is SIMPLE.
- `"autoMinorVersionUpgrade"`: Enables automatic upgrades to new minor versions for
  brokers, as new versions are released and supported by Amazon MQ. Automatic upgrades occur
  during the scheduled maintenance window of the broker or after a manual broker reboot.
- `"configuration"`: A list of information about the configuration.
- `"dataReplicationMode"`: Defines whether this broker is a part of a data replication pair.
- `"engineVersion"`: The broker engine version. For a list of supported engine versions,
  see Supported engines.
- `"hostInstanceType"`: The broker's host instance type to upgrade to. For a list of
  supported instance types, see Broker instance types.
- `"ldapServerMetadata"`: Optional. The metadata of the LDAP server used to authenticate
  and authorize connections to the broker. Does not apply to RabbitMQ brokers.
- `"logs"`: Enables Amazon CloudWatch logging for brokers.
- `"maintenanceWindowStartTime"`: The parameters that determine the WeeklyStartTime.
- `"securityGroups"`: The list of security groups (1 minimum, 5 maximum) that authorizes
  connections to brokers.
"""
update_broker(broker_id; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "PUT",
    "/v1/brokers/$(broker-id)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_broker(
    broker_id,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "PUT",
        "/v1/brokers/$(broker-id)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_configuration(configuration-id, data)
    update_configuration(configuration-id, data, params::Dict{String,<:Any})

Updates the specified configuration.

# Arguments
- `configuration-id`: The unique ID that Amazon MQ generates for the configuration.
- `data`: Amazon MQ for Active MQ: The base64-encoded XML configuration. Amazon MQ for
  RabbitMQ: the base64-encoded Cuttlefish configuration.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: The description of the configuration.
"""
update_configuration(
    configuration_id, data; aws_config::AbstractAWSConfig=global_aws_config()
) = mq(
    "PUT",
    "/v1/configurations/$(configuration-id)",
    Dict{String,Any}("data" => data);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_configuration(
    configuration_id,
    data,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "PUT",
        "/v1/configurations/$(configuration-id)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("data" => data), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_user(broker-id, username)
    update_user(broker-id, username, params::Dict{String,<:Any})

Updates the information for an ActiveMQ user.

# Arguments
- `broker-id`: The unique ID that Amazon MQ generates for the broker.
- `username`: The username of the ActiveMQ user. This value can contain only alphanumeric
  characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100
  characters long.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"consoleAccess"`: Enables access to the the ActiveMQ Web Console for the ActiveMQ user.
- `"groups"`: The list of groups (20 maximum) to which the ActiveMQ user belongs. This
  value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (-
  . _ ~). This value must be 2-100 characters long.
- `"password"`: The password of the user. This value must be at least 12 characters long,
  must contain at least 4 unique characters, and must not contain commas, colons, or equal
  signs (,:=).
- `"replicationUser"`: Defines whether the user is intended for data replication.
"""
update_user(broker_id, username; aws_config::AbstractAWSConfig=global_aws_config()) = mq(
    "PUT",
    "/v1/brokers/$(broker-id)/users/$(username)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_user(
    broker_id,
    username,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return mq(
        "PUT",
        "/v1/brokers/$(broker-id)/users/$(username)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
