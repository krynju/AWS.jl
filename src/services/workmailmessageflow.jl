# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: workmailmessageflow
using AWS.Compat
using AWS.UUIDs

"""
    get_raw_message_content(message_id)
    get_raw_message_content(message_id, params::Dict{String,<:Any})

Retrieves the raw content of an in-transit email message, in MIME format.

# Arguments
- `message_id`: The identifier of the email message to retrieve.

"""
get_raw_message_content(messageId; aws_config::AbstractAWSConfig=global_aws_config()) =
    workmailmessageflow(
        "GET",
        "/messages/$(messageId)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function get_raw_message_content(
    messageId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return workmailmessageflow(
        "GET",
        "/messages/$(messageId)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    put_raw_message_content(content, message_id)
    put_raw_message_content(content, message_id, params::Dict{String,<:Any})

Updates the raw content of an in-transit email message, in MIME format. This example
describes how to update in-transit email message. For more information and examples for
using this API, see  Updating message content with AWS Lambda.  Updates to an in-transit
message only appear when you call PutRawMessageContent from an AWS Lambda function
configured with a synchronous  Run Lambda rule. If you call PutRawMessageContent on a
delivered or sent message, the message remains unchanged, even though GetRawMessageContent
returns an updated message.

# Arguments
- `content`: Describes the raw message content of the updated email message.
- `message_id`: The identifier of the email message being updated.

"""
put_raw_message_content(
    content, messageId; aws_config::AbstractAWSConfig=global_aws_config()
) = workmailmessageflow(
    "POST",
    "/messages/$(messageId)",
    Dict{String,Any}("content" => content);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function put_raw_message_content(
    content,
    messageId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return workmailmessageflow(
        "POST",
        "/messages/$(messageId)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("content" => content), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
