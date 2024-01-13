# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: networkmonitor
using AWS.Compat
using AWS.UUIDs

"""
    create_monitor(monitor_name)
    create_monitor(monitor_name, params::Dict{String,<:Any})

Creates a monitor between a source subnet and destination IP address. Within a monitor
you'll create one or more probes that monitor network traffic between your source Amazon
Web Services VPC subnets and your destination IP addresses. Each probe then aggregates and
sends metrics to Amazon CloudWatch.

# Arguments
- `monitor_name`: The name identifying the monitor. It can contain only letters,
  underscores (_), or dashes (-), and can be up to 255 characters.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"aggregationPeriod"`: The time, in seconds, that metrics are aggregated and sent to
  Amazon CloudWatch. Valid values are either 30 or 60.
- `"clientToken"`: Unique, case-sensitive identifier to ensure the idempotency of the
  request. Only returned if a client token was provided in the request.
- `"probes"`: Displays a list of all of the probes created for a monitor.
- `"tags"`: The list of key-value pairs created and assigned to the monitor.
"""
create_monitor(monitorName; aws_config::AbstractAWSConfig=global_aws_config()) =
    networkmonitor(
        "POST",
        "/monitors",
        Dict{String,Any}("monitorName" => monitorName, "clientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function create_monitor(
    monitorName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return networkmonitor(
        "POST",
        "/monitors",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "monitorName" => monitorName, "clientToken" => string(uuid4())
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_probe(monitor_name, probe)
    create_probe(monitor_name, probe, params::Dict{String,<:Any})

Create a probe within a monitor. Once you create a probe, and it begins monitoring your
network traffic, you'll incur billing charges for that probe.

# Arguments
- `monitor_name`: The name of the monitor to associated with the probe. To get a list of
  available monitors, use ListMonitors.
- `probe`: Describes the details of an individual probe for a monitor.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientToken"`: Unique, case-sensitive identifier to ensure the idempotency of the
  request. Only returned if a client token was provided in the request.
- `"tags"`: The list of key-value pairs created and assigned to the probe.
"""
create_probe(monitorName, probe; aws_config::AbstractAWSConfig=global_aws_config()) =
    networkmonitor(
        "POST",
        "/monitors/$(monitorName)/probes",
        Dict{String,Any}("probe" => probe, "clientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function create_probe(
    monitorName,
    probe,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return networkmonitor(
        "POST",
        "/monitors/$(monitorName)/probes",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("probe" => probe, "clientToken" => string(uuid4())),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_monitor(monitor_name)
    delete_monitor(monitor_name, params::Dict{String,<:Any})

Deletes a specified monitor.

# Arguments
- `monitor_name`: The name of the monitor to delete. Use the ListMonitors action to get a
  list of your current monitors.

"""
delete_monitor(monitorName; aws_config::AbstractAWSConfig=global_aws_config()) =
    networkmonitor(
        "DELETE",
        "/monitors/$(monitorName)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function delete_monitor(
    monitorName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return networkmonitor(
        "DELETE",
        "/monitors/$(monitorName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_probe(monitor_name, probe_id)
    delete_probe(monitor_name, probe_id, params::Dict{String,<:Any})

Deletes the specified monitor. Once a probe is deleted you'll no longer incur any billing
fees for that probe.

# Arguments
- `monitor_name`: The name of the monitor to delete. For a list of the available monitors,
  use the ListMonitors action.
- `probe_id`: The ID of the probe to delete. Run GetMonitor to get a lst of all probes and
  probe IDs associated with the monitor.

"""
delete_probe(monitorName, probeId; aws_config::AbstractAWSConfig=global_aws_config()) =
    networkmonitor(
        "DELETE",
        "/monitors/$(monitorName)/probes/$(probeId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function delete_probe(
    monitorName,
    probeId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return networkmonitor(
        "DELETE",
        "/monitors/$(monitorName)/probes/$(probeId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_monitor(monitor_name)
    get_monitor(monitor_name, params::Dict{String,<:Any})

Returns details about a specific monitor.

# Arguments
- `monitor_name`: The name of the monitor that details are returned for.

"""
get_monitor(monitorName; aws_config::AbstractAWSConfig=global_aws_config()) =
    networkmonitor(
        "GET",
        "/monitors/$(monitorName)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function get_monitor(
    monitorName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return networkmonitor(
        "GET",
        "/monitors/$(monitorName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_probe(monitor_name, probe_id)
    get_probe(monitor_name, probe_id, params::Dict{String,<:Any})

Returns the details about a probe. You'll need both the monitorName and probeId.

# Arguments
- `monitor_name`: The name of the monitor associated with the probe. Run ListMonitors to
  get a list of monitor names.
- `probe_id`: The ID of the probe to get information about. Run GetMonitor action to get a
  list of probes and probe IDs for the monitor.

"""
get_probe(monitorName, probeId; aws_config::AbstractAWSConfig=global_aws_config()) =
    networkmonitor(
        "GET",
        "/monitors/$(monitorName)/probes/$(probeId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function get_probe(
    monitorName,
    probeId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return networkmonitor(
        "GET",
        "/monitors/$(monitorName)/probes/$(probeId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_monitors()
    list_monitors(params::Dict{String,<:Any})

Returns a list of all of your monitors.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return with a single call. To retrieve
  the remaining results, make another call with the returned nextToken value. If MaxResults
  is given a value larger than 100, only 100 results are returned.
- `"nextToken"`: The token for the next page of results.
- `"state"`: The list of all monitors and their states.
"""
list_monitors(; aws_config::AbstractAWSConfig=global_aws_config()) = networkmonitor(
    "GET", "/monitors"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
)
function list_monitors(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return networkmonitor(
        "GET", "/monitors", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Lists the tags assigned to this resource.

# Arguments
- `resource_arn`: The

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) =
    networkmonitor(
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
    return networkmonitor(
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

Adds key-value pairs to a monitor or probe.

# Arguments
- `resource_arn`: The ARN of the monitor or probe to tag.
- `tags`: The list of key-value pairs assigned to the monitor or probe.

"""
tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config()) =
    networkmonitor(
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
    return networkmonitor(
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

Removes a key-value pair from a monitor or probe.

# Arguments
- `resource_arn`: The ARN of the monitor or probe that the tag should be removed from.
- `tag_keys`: The key-value pa

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) =
    networkmonitor(
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
    return networkmonitor(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_monitor(aggregation_period, monitor_name)
    update_monitor(aggregation_period, monitor_name, params::Dict{String,<:Any})

Updates the aggregationPeriod for a monitor. Monitors support an aggregationPeriod of
either 30 or 60 seconds.

# Arguments
- `aggregation_period`: The aggregation time, in seconds, to change to. This must be either
  30 or 60.
- `monitor_name`: The name of the monitor to update. Run ListMonitors to get a list of
  monitor names.

"""
update_monitor(
    aggregationPeriod, monitorName; aws_config::AbstractAWSConfig=global_aws_config()
) = networkmonitor(
    "PATCH",
    "/monitors/$(monitorName)",
    Dict{String,Any}("aggregationPeriod" => aggregationPeriod);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_monitor(
    aggregationPeriod,
    monitorName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return networkmonitor(
        "PATCH",
        "/monitors/$(monitorName)",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("aggregationPeriod" => aggregationPeriod), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_probe(monitor_name, probe_id)
    update_probe(monitor_name, probe_id, params::Dict{String,<:Any})

Updates a monitor probe. This action requires both the monitorName and probeId parameters.
Run ListMonitors to get a list of monitor names. Run GetMonitor to get a list of probes and
probe IDs.

# Arguments
- `monitor_name`: The name of the monitor that the probe was updated for.
- `probe_id`: Run GetMonitor to get a list of probes and probe IDs.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"destination"`: The updated IP address for the probe destination. This must be either an
  IPv4 or IPv6 address.
- `"destinationPort"`: The updated port for the probe destination. This is required only if
  the protocol is TCP and must be a number between 1 and 65536.
- `"packetSize"`: he updated packets size for network traffic between the source and
  destination. This must be a number between 56 and 8500.
- `"protocol"`: The updated network protocol for the destination. This can be either TCP or
  ICMP. If the protocol is TCP, then port is also required.
- `"state"`: The state of the probe update.
"""
update_probe(monitorName, probeId; aws_config::AbstractAWSConfig=global_aws_config()) =
    networkmonitor(
        "PATCH",
        "/monitors/$(monitorName)/probes/$(probeId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function update_probe(
    monitorName,
    probeId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return networkmonitor(
        "PATCH",
        "/monitors/$(monitorName)/probes/$(probeId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
