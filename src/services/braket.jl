# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: braket
using AWS.Compat
using AWS.UUIDs

"""
    cancel_job(job_arn)
    cancel_job(job_arn, params::Dict{String,<:Any})

Cancels an Amazon Braket job.

# Arguments
- `job_arn`: The ARN of the Amazon Braket job to cancel.

"""
function cancel_job(jobArn; aws_config::AbstractAWSConfig=global_aws_config())
    return braket(
        "PUT",
        "/job/$(jobArn)/cancel";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function cancel_job(
    jobArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return braket(
        "PUT",
        "/job/$(jobArn)/cancel",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    cancel_quantum_task(client_token, quantum_task_arn)
    cancel_quantum_task(client_token, quantum_task_arn, params::Dict{String,<:Any})

Cancels the specified task.

# Arguments
- `client_token`: The client token associated with the request.
- `quantum_task_arn`: The ARN of the task to cancel.

"""
function cancel_quantum_task(
    clientToken, quantumTaskArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return braket(
        "PUT",
        "/quantum-task/$(quantumTaskArn)/cancel",
        Dict{String,Any}("clientToken" => clientToken);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function cancel_quantum_task(
    clientToken,
    quantumTaskArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return braket(
        "PUT",
        "/quantum-task/$(quantumTaskArn)/cancel",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("clientToken" => clientToken), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_job(algorithm_specification, client_token, device_config, instance_config, job_name, output_data_config, role_arn)
    create_job(algorithm_specification, client_token, device_config, instance_config, job_name, output_data_config, role_arn, params::Dict{String,<:Any})

Creates an Amazon Braket job.

# Arguments
- `algorithm_specification`: Definition of the Amazon Braket job to be created. Specifies
  the container image the job uses and information about the Python scripts used for entry
  and training.
- `client_token`: A unique token that guarantees that the call to this API is idempotent.
- `device_config`: The quantum processing unit (QPU) or simulator used to create an Amazon
  Braket job.
- `instance_config`: Configuration of the resource instances to use while running the
  hybrid job on Amazon Braket.
- `job_name`: The name of the Amazon Braket job.
- `output_data_config`: The path to the S3 location where you want to store job artifacts
  and the encryption key used to store them.
- `role_arn`: The Amazon Resource Name (ARN) of an IAM role that Amazon Braket can assume
  to perform tasks on behalf of a user. It can access user resources, run an Amazon Braket
  job container on behalf of user, and output resources to the users' s3 buckets.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"checkpointConfig"`: Information about the output locations for job checkpoint data.
- `"hyperParameters"`: Algorithm-specific parameters used by an Amazon Braket job that
  influence the quality of the training job. The values are set with a string of JSON
  key:value pairs, where the key is the name of the hyperparameter and the value is the value
  of th hyperparameter.
- `"inputDataConfig"`: A list of parameters that specify the name and type of input data
  and where it is located.
- `"stoppingCondition"`:  The user-defined criteria that specifies when a job stops running.
- `"tags"`: A tag object that consists of a key and an optional value, used to manage
  metadata for Amazon Braket resources.
"""
function create_job(
    algorithmSpecification,
    clientToken,
    deviceConfig,
    instanceConfig,
    jobName,
    outputDataConfig,
    roleArn;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return braket(
        "POST",
        "/job",
        Dict{String,Any}(
            "algorithmSpecification" => algorithmSpecification,
            "clientToken" => clientToken,
            "deviceConfig" => deviceConfig,
            "instanceConfig" => instanceConfig,
            "jobName" => jobName,
            "outputDataConfig" => outputDataConfig,
            "roleArn" => roleArn,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_job(
    algorithmSpecification,
    clientToken,
    deviceConfig,
    instanceConfig,
    jobName,
    outputDataConfig,
    roleArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return braket(
        "POST",
        "/job",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "algorithmSpecification" => algorithmSpecification,
                    "clientToken" => clientToken,
                    "deviceConfig" => deviceConfig,
                    "instanceConfig" => instanceConfig,
                    "jobName" => jobName,
                    "outputDataConfig" => outputDataConfig,
                    "roleArn" => roleArn,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_quantum_task(action, client_token, device_arn, output_s3_bucket, output_s3_key_prefix, shots)
    create_quantum_task(action, client_token, device_arn, output_s3_bucket, output_s3_key_prefix, shots, params::Dict{String,<:Any})

Creates a quantum task.

# Arguments
- `action`: The action associated with the task.
- `client_token`: The client token associated with the request.
- `device_arn`: The ARN of the device to run the task on.
- `output_s3_bucket`: The S3 bucket to store task result files in.
- `output_s3_key_prefix`: The key prefix for the location in the S3 bucket to store task
  results in.
- `shots`: The number of shots to use for the task.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"deviceParameters"`: The parameters for the device to run the task on.
- `"jobToken"`: The token for an Amazon Braket job that associates it with the quantum task.
- `"tags"`: Tags to be added to the quantum task you're creating.
"""
function create_quantum_task(
    action,
    clientToken,
    deviceArn,
    outputS3Bucket,
    outputS3KeyPrefix,
    shots;
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return braket(
        "POST",
        "/quantum-task",
        Dict{String,Any}(
            "action" => action,
            "clientToken" => clientToken,
            "deviceArn" => deviceArn,
            "outputS3Bucket" => outputS3Bucket,
            "outputS3KeyPrefix" => outputS3KeyPrefix,
            "shots" => shots,
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function create_quantum_task(
    action,
    clientToken,
    deviceArn,
    outputS3Bucket,
    outputS3KeyPrefix,
    shots,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return braket(
        "POST",
        "/quantum-task",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "action" => action,
                    "clientToken" => clientToken,
                    "deviceArn" => deviceArn,
                    "outputS3Bucket" => outputS3Bucket,
                    "outputS3KeyPrefix" => outputS3KeyPrefix,
                    "shots" => shots,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_device(device_arn)
    get_device(device_arn, params::Dict{String,<:Any})

Retrieves the devices available in Amazon Braket.

# Arguments
- `device_arn`: The ARN of the device to retrieve.

"""
function get_device(deviceArn; aws_config::AbstractAWSConfig=global_aws_config())
    return braket(
        "GET",
        "/device/$(deviceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_device(
    deviceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return braket(
        "GET",
        "/device/$(deviceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_job(job_arn)
    get_job(job_arn, params::Dict{String,<:Any})

Retrieves the specified Amazon Braket job.

# Arguments
- `job_arn`: The ARN of the job to retrieve.

"""
function get_job(jobArn; aws_config::AbstractAWSConfig=global_aws_config())
    return braket(
        "GET", "/job/$(jobArn)"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end
function get_job(
    jobArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return braket(
        "GET",
        "/job/$(jobArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_quantum_task(quantum_task_arn)
    get_quantum_task(quantum_task_arn, params::Dict{String,<:Any})

Retrieves the specified quantum task.

# Arguments
- `quantum_task_arn`: the ARN of the task to retrieve.

"""
function get_quantum_task(quantumTaskArn; aws_config::AbstractAWSConfig=global_aws_config())
    return braket(
        "GET",
        "/quantum-task/$(quantumTaskArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function get_quantum_task(
    quantumTaskArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return braket(
        "GET",
        "/quantum-task/$(quantumTaskArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Shows the tags associated with this resource.

# Arguments
- `resource_arn`: Specify the resourceArn for the resource whose tags to display.

"""
function list_tags_for_resource(
    resourceArn; aws_config::AbstractAWSConfig=global_aws_config()
)
    return braket(
        "GET",
        "/tags/$(resourceArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function list_tags_for_resource(
    resourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return braket(
        "GET",
        "/tags/$(resourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    search_devices(filters)
    search_devices(filters, params::Dict{String,<:Any})

Searches for devices using the specified filters.

# Arguments
- `filters`: The filter values to use to search for a device.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return in the response.
- `"nextToken"`: A token used for pagination of results returned in the response. Use the
  token returned from the previous request continue results where the previous request ended.
"""
function search_devices(filters; aws_config::AbstractAWSConfig=global_aws_config())
    return braket(
        "POST",
        "/devices",
        Dict{String,Any}("filters" => filters);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function search_devices(
    filters, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return braket(
        "POST",
        "/devices",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("filters" => filters), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    search_jobs(filters)
    search_jobs(filters, params::Dict{String,<:Any})

Searches for Amazon Braket jobs that match the specified filter values.

# Arguments
- `filters`: The filter values to use when searching for a job.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return in the response.
- `"nextToken"`: A token used for pagination of results returned in the response. Use the
  token returned from the previous request to continue results where the previous request
  ended.
"""
function search_jobs(filters; aws_config::AbstractAWSConfig=global_aws_config())
    return braket(
        "POST",
        "/jobs",
        Dict{String,Any}("filters" => filters);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function search_jobs(
    filters, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return braket(
        "POST",
        "/jobs",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("filters" => filters), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    search_quantum_tasks(filters)
    search_quantum_tasks(filters, params::Dict{String,<:Any})

Searches for tasks that match the specified filter values.

# Arguments
- `filters`: Array of SearchQuantumTasksFilter objects.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Maximum number of results to return in the response.
- `"nextToken"`: A token used for pagination of results returned in the response. Use the
  token returned from the previous request continue results where the previous request ended.
"""
function search_quantum_tasks(filters; aws_config::AbstractAWSConfig=global_aws_config())
    return braket(
        "POST",
        "/quantum-tasks",
        Dict{String,Any}("filters" => filters);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function search_quantum_tasks(
    filters, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return braket(
        "POST",
        "/quantum-tasks",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("filters" => filters), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Add a tag to the specified resource.

# Arguments
- `resource_arn`: Specify the resourceArn of the resource to which a tag will be added.
- `tags`: Specify the tags to add to the resource.

"""
function tag_resource(resourceArn, tags; aws_config::AbstractAWSConfig=global_aws_config())
    return braket(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tags" => tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function tag_resource(
    resourceArn,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return braket(
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

Remove tags from a resource.

# Arguments
- `resource_arn`: Specify the resourceArn for the resource from which to remove the tags.
- `tag_keys`: Specify the keys for the tags to remove from the resource.

"""
function untag_resource(
    resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()
)
    return braket(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}("tagKeys" => tagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
function untag_resource(
    resourceArn,
    tagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return braket(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
