# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: bedrock_runtime
using AWS.Compat
using AWS.UUIDs

"""
    invoke_model(body, model_id)
    invoke_model(body, model_id, params::Dict{String,<:Any})

Invokes the specified Bedrock model to run inference using the input provided in the
request body. You use InvokeModel to run inference for text models, image models, and
embedding models. For more information, see Run inference in the Bedrock User Guide. For
example requests, see Examples (after the Errors section).

# Arguments
- `body`: Input data in the format specified in the content-type request header. To see the
  format and content of this field for different models, refer to Inference parameters.
- `model_id`: Identifier of the model.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Accept"`: The desired MIME type of the inference body in the response. The default
  value is application/json.
- `"Content-Type"`: The MIME type of the input data in the request. The default value is
  application/json.
"""
invoke_model(body, modelId; aws_config::AbstractAWSConfig=global_aws_config()) =
    bedrock_runtime(
        "POST",
        "/model/$(modelId)/invoke",
        Dict{String,Any}("body" => body);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function invoke_model(
    body,
    modelId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return bedrock_runtime(
        "POST",
        "/model/$(modelId)/invoke",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("body" => body), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    invoke_model_with_response_stream(body, model_id)
    invoke_model_with_response_stream(body, model_id, params::Dict{String,<:Any})

Invoke the specified Bedrock model to run inference using the input provided. Return the
response in a stream. For more information, see Run inference in the Bedrock User Guide.
For an example request and response, see Examples (after the Errors section).

# Arguments
- `body`: Inference input in the format specified by the content-type. To see the format
  and content of this field for different models, refer to Inference parameters.
- `model_id`: Id of the model to invoke using the streaming request.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"Content-Type"`: The MIME type of the input data in the request. The default value is
  application/json.
- `"X-Amzn-Bedrock-Accept"`: The desired MIME type of the inference body in the response.
  The default value is application/json.
"""
invoke_model_with_response_stream(
    body, modelId; aws_config::AbstractAWSConfig=global_aws_config()
) = bedrock_runtime(
    "POST",
    "/model/$(modelId)/invoke-with-response-stream",
    Dict{String,Any}("body" => body);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function invoke_model_with_response_stream(
    body,
    modelId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return bedrock_runtime(
        "POST",
        "/model/$(modelId)/invoke-with-response-stream",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("body" => body), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
