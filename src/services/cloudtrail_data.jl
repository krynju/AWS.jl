# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: cloudtrail_data
using AWS.Compat
using AWS.UUIDs

"""
    put_audit_events(audit_events, channel_arn)
    put_audit_events(audit_events, channel_arn, params::Dict{String,<:Any})

Ingests your application events into CloudTrail Lake. A required parameter, auditEvents,
accepts the JSON records (also called payload) of events that you want CloudTrail to
ingest. You can add up to 100 of these events (or up to 1 MB) per PutAuditEvents request.

# Arguments
- `audit_events`: The JSON payload of events that you want to ingest. You can also point to
  the JSON event payload in a file.
- `channel_arn`: The ARN or ID (the ARN suffix) of a channel.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"externalId"`: A unique identifier that is conditionally required when the channel's
  resource policy includes an external ID. This value can be any string, such as a passphrase
  or account number.
"""
put_audit_events(
    auditEvents, channelArn; aws_config::AbstractAWSConfig=global_aws_config()
) = cloudtrail_data(
    "POST",
    "/PutAuditEvents",
    Dict{String,Any}("auditEvents" => auditEvents, "channelArn" => channelArn);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function put_audit_events(
    auditEvents,
    channelArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return cloudtrail_data(
        "POST",
        "/PutAuditEvents",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("auditEvents" => auditEvents, "channelArn" => channelArn),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
