# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: iot_data_plane
using AWS.Compat
using AWS.UUIDs

"""
    delete_thing_shadow(thing_name)
    delete_thing_shadow(thing_name, params::Dict{String,<:Any})

Deletes the shadow for the specified thing. Requires permission to access the
DeleteThingShadow action. For more information, see DeleteThingShadow in the IoT Developer
Guide.

# Arguments
- `thing_name`: The name of the thing.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"name"`: The name of the shadow.
"""
delete_thing_shadow(thingName; aws_config::AbstractAWSConfig=global_aws_config()) =
    iot_data_plane(
        "DELETE",
        "/things/$(thingName)/shadow";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function delete_thing_shadow(
    thingName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return iot_data_plane(
        "DELETE",
        "/things/$(thingName)/shadow",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_retained_message(topic)
    get_retained_message(topic, params::Dict{String,<:Any})

Gets the details of a single retained message for the specified topic. This action returns
the message payload of the retained message, which can incur messaging costs. To list only
the topic names of the retained messages, call ListRetainedMessages. Requires permission to
access the GetRetainedMessage action. For more information about messaging costs, see
Amazon Web Services IoT Core pricing - Messaging.

# Arguments
- `topic`: The topic name of the retained message to retrieve.

"""
get_retained_message(topic; aws_config::AbstractAWSConfig=global_aws_config()) =
    iot_data_plane(
        "GET",
        "/retainedMessage/$(topic)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function get_retained_message(
    topic, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return iot_data_plane(
        "GET",
        "/retainedMessage/$(topic)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_thing_shadow(thing_name)
    get_thing_shadow(thing_name, params::Dict{String,<:Any})

Gets the shadow for the specified thing. Requires permission to access the GetThingShadow
action. For more information, see GetThingShadow in the IoT Developer Guide.

# Arguments
- `thing_name`: The name of the thing.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"name"`: The name of the shadow.
"""
get_thing_shadow(thingName; aws_config::AbstractAWSConfig=global_aws_config()) =
    iot_data_plane(
        "GET",
        "/things/$(thingName)/shadow";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function get_thing_shadow(
    thingName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return iot_data_plane(
        "GET",
        "/things/$(thingName)/shadow",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_named_shadows_for_thing(thing_name)
    list_named_shadows_for_thing(thing_name, params::Dict{String,<:Any})

Lists the shadows for the specified thing. Requires permission to access the
ListNamedShadowsForThing action.

# Arguments
- `thing_name`: The name of the thing.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"nextToken"`: The token to retrieve the next set of results.
- `"pageSize"`: The result page size.
"""
list_named_shadows_for_thing(thingName; aws_config::AbstractAWSConfig=global_aws_config()) =
    iot_data_plane(
        "GET",
        "/api/things/shadow/ListNamedShadowsForThing/$(thingName)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function list_named_shadows_for_thing(
    thingName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return iot_data_plane(
        "GET",
        "/api/things/shadow/ListNamedShadowsForThing/$(thingName)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_retained_messages()
    list_retained_messages(params::Dict{String,<:Any})

Lists summary information about the retained messages stored for the account. This action
returns only the topic names of the retained messages. It doesn't return any message
payloads. Although this action doesn't return a message payload, it can still incur
messaging costs. To get the message payload of a retained message, call GetRetainedMessage
with the topic name of the retained message. Requires permission to access the
ListRetainedMessages action. For more information about messaging costs, see Amazon Web
Services IoT Core pricing - Messaging.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return at one time.
- `"nextToken"`: To retrieve the next set of results, the nextToken value from a previous
  response; otherwise null to receive the first set of results.
"""
list_retained_messages(; aws_config::AbstractAWSConfig=global_aws_config()) =
    iot_data_plane(
        "GET", "/retainedMessage"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function list_retained_messages(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return iot_data_plane(
        "GET",
        "/retainedMessage",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    publish(topic)
    publish(topic, params::Dict{String,<:Any})

Publishes an MQTT message. Requires permission to access the Publish action. For more
information about MQTT messages, see MQTT Protocol in the IoT Developer Guide. For more
information about messaging costs, see Amazon Web Services IoT Core pricing - Messaging.

# Arguments
- `topic`: The name of the MQTT topic.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"contentType"`: A UTF-8 encoded string that describes the content of the publishing
  message.
- `"messageExpiry"`: A user-defined integer value that represents the message expiry
  interval in seconds. If absent, the message doesn't expire. For more information about the
  limits of messageExpiry, see Amazon Web Services IoT Core message broker and protocol
  limits and quotas  from the Amazon Web Services Reference Guide.
- `"payload"`: The message body. MQTT accepts text, binary, and empty (null) message
  payloads. Publishing an empty (null) payload with retain = true deletes the retained
  message identified by topic from Amazon Web Services IoT Core.
- `"qos"`: The Quality of Service (QoS) level. The default QoS level is 0.
- `"responseTopic"`: A UTF-8 encoded string that's used as the topic name for a response
  message. The response topic is used to describe the topic which the receiver should publish
  to as part of the request-response flow. The topic must not contain wildcard characters.
- `"retain"`: A Boolean value that determines whether to set the RETAIN flag when the
  message is published. Setting the RETAIN flag causes the message to be retained and sent to
  new subscribers to the topic. Valid values: true | false  Default value: false
- `"x-amz-mqtt5-correlation-data"`: The base64-encoded binary data used by the sender of
  the request message to identify which request the response message is for when it's
  received. correlationData is an HTTP header value in the API.
- `"x-amz-mqtt5-payload-format-indicator"`: An Enum string value that indicates whether the
  payload is formatted as UTF-8. payloadFormatIndicator is an HTTP header value in the API.
- `"x-amz-mqtt5-user-properties"`: A JSON string that contains an array of JSON objects. If
  you don’t use Amazon Web Services SDK or CLI, you must encode the JSON string to base64
  format before adding it to the HTTP header. userProperties is an HTTP header value in the
  API. The following example userProperties parameter is a JSON string which represents two
  User Properties. Note that it needs to be base64-encoded:  [{\"deviceName\": \"alpha\"},
  {\"deviceCnt\": \"45\"}]
"""
publish(topic; aws_config::AbstractAWSConfig=global_aws_config()) = iot_data_plane(
    "POST", "/topics/$(topic)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
)
function publish(
    topic, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return iot_data_plane(
        "POST",
        "/topics/$(topic)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_thing_shadow(payload, thing_name)
    update_thing_shadow(payload, thing_name, params::Dict{String,<:Any})

Updates the shadow for the specified thing. Requires permission to access the
UpdateThingShadow action. For more information, see UpdateThingShadow in the IoT Developer
Guide.

# Arguments
- `payload`: The state information, in JSON format.
- `thing_name`: The name of the thing.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"name"`: The name of the shadow.
"""
update_thing_shadow(payload, thingName; aws_config::AbstractAWSConfig=global_aws_config()) =
    iot_data_plane(
        "POST",
        "/things/$(thingName)/shadow",
        Dict{String,Any}("payload" => payload);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function update_thing_shadow(
    payload,
    thingName,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return iot_data_plane(
        "POST",
        "/things/$(thingName)/shadow",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("payload" => payload), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
