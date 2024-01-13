# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: kendra_ranking
using AWS.Compat
using AWS.UUIDs

"""
    create_rescore_execution_plan(name)
    create_rescore_execution_plan(name, params::Dict{String,<:Any})

Creates a rescore execution plan. A rescore execution plan is an Amazon Kendra Intelligent
Ranking resource used for provisioning the Rescore API. You set the number of capacity
units that you require for Amazon Kendra Intelligent Ranking to rescore or re-rank a search
service's results. For an example of using the CreateRescoreExecutionPlan API, including
using the Python and Java SDKs, see Semantically ranking a search service's results.

# Arguments
- `name`: A name for the rescore execution plan.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CapacityUnits"`: You can set additional capacity units to meet the needs of your
  rescore execution plan. You are given a single capacity unit by default. If you want to use
  the default capacity, you don't set additional capacity units. For more information on the
  default capacity and additional capacity units, see Adjusting capacity.
- `"ClientToken"`: A token that you provide to identify the request to create a rescore
  execution plan. Multiple calls to the CreateRescoreExecutionPlanRequest API with the same
  client token will create only one rescore execution plan.
- `"Description"`: A description for the rescore execution plan.
- `"Tags"`: A list of key-value pairs that identify or categorize your rescore execution
  plan. You can also use tags to help control access to the rescore execution plan. Tag keys
  and values can consist of Unicode letters, digits, white space, and any of the following
  symbols: _ . : / = + - @.
"""
create_rescore_execution_plan(Name; aws_config::AbstractAWSConfig=global_aws_config()) =
    kendra_ranking(
        "CreateRescoreExecutionPlan",
        Dict{String,Any}("Name" => Name, "ClientToken" => string(uuid4()));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function create_rescore_execution_plan(
    Name, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return kendra_ranking(
        "CreateRescoreExecutionPlan",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("Name" => Name, "ClientToken" => string(uuid4())),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_rescore_execution_plan(id)
    delete_rescore_execution_plan(id, params::Dict{String,<:Any})

Deletes a rescore execution plan. A rescore execution plan is an Amazon Kendra Intelligent
Ranking resource used for provisioning the Rescore API.

# Arguments
- `id`: The identifier of the rescore execution plan that you want to delete.

"""
delete_rescore_execution_plan(Id; aws_config::AbstractAWSConfig=global_aws_config()) =
    kendra_ranking(
        "DeleteRescoreExecutionPlan",
        Dict{String,Any}("Id" => Id);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function delete_rescore_execution_plan(
    Id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return kendra_ranking(
        "DeleteRescoreExecutionPlan",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Id" => Id), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_rescore_execution_plan(id)
    describe_rescore_execution_plan(id, params::Dict{String,<:Any})

Gets information about a rescore execution plan. A rescore execution plan is an Amazon
Kendra Intelligent Ranking resource used for provisioning the Rescore API.

# Arguments
- `id`: The identifier of the rescore execution plan that you want to get information on.

"""
describe_rescore_execution_plan(Id; aws_config::AbstractAWSConfig=global_aws_config()) =
    kendra_ranking(
        "DescribeRescoreExecutionPlan",
        Dict{String,Any}("Id" => Id);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function describe_rescore_execution_plan(
    Id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return kendra_ranking(
        "DescribeRescoreExecutionPlan",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Id" => Id), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_rescore_execution_plans()
    list_rescore_execution_plans(params::Dict{String,<:Any})

Lists your rescore execution plans. A rescore execution plan is an Amazon Kendra
Intelligent Ranking resource used for provisioning the Rescore API.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of rescore execution plans to return.
- `"NextToken"`: If the response is truncated, Amazon Kendra Intelligent Ranking returns a
  pagination token in the response. You can use this pagination token to retrieve the next
  set of rescore execution plans.
"""
list_rescore_execution_plans(; aws_config::AbstractAWSConfig=global_aws_config()) =
    kendra_ranking(
        "ListRescoreExecutionPlans"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function list_rescore_execution_plans(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return kendra_ranking(
        "ListRescoreExecutionPlans",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Gets a list of tags associated with a specified resource. A rescore execution plan is an
example of a resource that can have tags associated with it.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the rescore execution plan to get a
  list of tags for.

"""
list_tags_for_resource(ResourceARN; aws_config::AbstractAWSConfig=global_aws_config()) =
    kendra_ranking(
        "ListTagsForResource",
        Dict{String,Any}("ResourceARN" => ResourceARN);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function list_tags_for_resource(
    ResourceARN,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return kendra_ranking(
        "ListTagsForResource",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("ResourceARN" => ResourceARN), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    rescore(documents, rescore_execution_plan_id, search_query)
    rescore(documents, rescore_execution_plan_id, search_query, params::Dict{String,<:Any})

Rescores or re-ranks search results from a search service such as OpenSearch (self
managed). You use the semantic search capabilities of Amazon Kendra Intelligent Ranking to
improve the search service's results.

# Arguments
- `documents`: The list of documents for Amazon Kendra Intelligent Ranking to rescore or
  rank on.
- `rescore_execution_plan_id`: The identifier of the rescore execution plan. A rescore
  execution plan is an Amazon Kendra Intelligent Ranking resource used for provisioning the
  Rescore API.
- `search_query`: The input query from the search service.

"""
rescore(
    Documents,
    RescoreExecutionPlanId,
    SearchQuery;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = kendra_ranking(
    "Rescore",
    Dict{String,Any}(
        "Documents" => Documents,
        "RescoreExecutionPlanId" => RescoreExecutionPlanId,
        "SearchQuery" => SearchQuery,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function rescore(
    Documents,
    RescoreExecutionPlanId,
    SearchQuery,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return kendra_ranking(
        "Rescore",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Documents" => Documents,
                    "RescoreExecutionPlanId" => RescoreExecutionPlanId,
                    "SearchQuery" => SearchQuery,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(resource_arn, tags)
    tag_resource(resource_arn, tags, params::Dict{String,<:Any})

Adds a specified tag to a specified rescore execution plan. A rescore execution plan is an
Amazon Kendra Intelligent Ranking resource used for provisioning the Rescore API. If the
tag already exists, the existing value is replaced with the new value.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the rescore execution plan to tag.
- `tags`: A list of tag keys to add to a rescore execution plan. If a tag already exists,
  the existing value is replaced with the new value.

"""
tag_resource(ResourceARN, Tags; aws_config::AbstractAWSConfig=global_aws_config()) =
    kendra_ranking(
        "TagResource",
        Dict{String,Any}("ResourceARN" => ResourceARN, "Tags" => Tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function tag_resource(
    ResourceARN,
    Tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return kendra_ranking(
        "TagResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("ResourceARN" => ResourceARN, "Tags" => Tags),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes a tag from a rescore execution plan. A rescore execution plan is an Amazon Kendra
Intelligent Ranking resource used for provisioning the Rescore operation.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the rescore execution plan to remove
  the tag.
- `tag_keys`: A list of tag keys to remove from the rescore execution plan. If a tag key
  does not exist on the resource, it is ignored.

"""
untag_resource(ResourceARN, TagKeys; aws_config::AbstractAWSConfig=global_aws_config()) =
    kendra_ranking(
        "UntagResource",
        Dict{String,Any}("ResourceARN" => ResourceARN, "TagKeys" => TagKeys);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function untag_resource(
    ResourceARN,
    TagKeys,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return kendra_ranking(
        "UntagResource",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("ResourceARN" => ResourceARN, "TagKeys" => TagKeys),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_rescore_execution_plan(id)
    update_rescore_execution_plan(id, params::Dict{String,<:Any})

Updates a rescore execution plan. A rescore execution plan is an Amazon Kendra Intelligent
Ranking resource used for provisioning the Rescore API. You can update the number of
capacity units you require for Amazon Kendra Intelligent Ranking to rescore or re-rank a
search service's results.

# Arguments
- `id`: The identifier of the rescore execution plan that you want to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"CapacityUnits"`: You can set additional capacity units to meet the needs of your
  rescore execution plan. You are given a single capacity unit by default. If you want to use
  the default capacity, you don't set additional capacity units. For more information on the
  default capacity and additional capacity units, see Adjusting capacity.
- `"Description"`: A new description for the rescore execution plan.
- `"Name"`: A new name for the rescore execution plan.
"""
update_rescore_execution_plan(Id; aws_config::AbstractAWSConfig=global_aws_config()) =
    kendra_ranking(
        "UpdateRescoreExecutionPlan",
        Dict{String,Any}("Id" => Id);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function update_rescore_execution_plan(
    Id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return kendra_ranking(
        "UpdateRescoreExecutionPlan",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Id" => Id), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
