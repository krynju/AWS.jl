# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: codeguru_reviewer
using AWS.Compat
using AWS.UUIDs

"""
    associate_repository(repository)
    associate_repository(repository, params::Dict{String,<:Any})

Use to associate an Amazon Web Services CodeCommit repository or a repository managed by
Amazon Web Services CodeStar Connections with Amazon CodeGuru Reviewer. When you associate
a repository, CodeGuru Reviewer reviews source code changes in the repository's pull
requests and provides automatic recommendations. You can view recommendations using the
CodeGuru Reviewer console. For more information, see Recommendations in Amazon CodeGuru
Reviewer in the Amazon CodeGuru Reviewer User Guide.  If you associate a CodeCommit or S3
repository, it must be in the same Amazon Web Services Region and Amazon Web Services
account where its CodeGuru Reviewer code reviews are configured. Bitbucket and GitHub
Enterprise Server repositories are managed by Amazon Web Services CodeStar Connections to
connect to CodeGuru Reviewer. For more information, see Associate a repository in the
Amazon CodeGuru Reviewer User Guide.   You cannot use the CodeGuru Reviewer SDK or the
Amazon Web Services CLI to associate a GitHub repository with Amazon CodeGuru Reviewer. To
associate a GitHub repository, use the console. For more information, see Getting started
with CodeGuru Reviewer in the CodeGuru Reviewer User Guide.

# Arguments
- `repository`: The repository to associate.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientRequestToken"`: Amazon CodeGuru Reviewer uses this value to prevent the
  accidental creation of duplicate repository associations if there are failures and retries.
- `"KMSKeyDetails"`: A KMSKeyDetails object that contains:   The encryption option for this
  repository association. It is either owned by Amazon Web Services Key Management Service
  (KMS) (AWS_OWNED_CMK) or customer managed (CUSTOMER_MANAGED_CMK).   The ID of the Amazon
  Web Services KMS key that is associated with this repository association.
- `"Tags"`: An array of key-value pairs used to tag an associated repository. A tag is a
  custom attribute label with two parts:   A tag key (for example, CostCenter, Environment,
  Project, or Secret). Tag keys are case sensitive.   An optional field known as a tag value
  (for example, 111122223333, Production, or a team name). Omitting the tag value is the same
  as using an empty string. Like tag keys, tag values are case sensitive.
"""
associate_repository(Repository; aws_config::AbstractAWSConfig=global_aws_config()) =
    codeguru_reviewer(
        "POST",
        "/associations",
        Dict{String,Any}(
            "Repository" => Repository, "ClientRequestToken" => string(uuid4())
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function associate_repository(
    Repository,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codeguru_reviewer(
        "POST",
        "/associations",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Repository" => Repository, "ClientRequestToken" => string(uuid4())
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_code_review(name, repository_association_arn, type)
    create_code_review(name, repository_association_arn, type, params::Dict{String,<:Any})

Use to create a code review with a CodeReviewType of RepositoryAnalysis. This type of code
review analyzes all code under a specified branch in an associated repository. PullRequest
code reviews are automatically triggered by a pull request.

# Arguments
- `name`: The name of the code review. The name of each code review in your Amazon Web
  Services account must be unique.
- `repository_association_arn`: The Amazon Resource Name (ARN) of the RepositoryAssociation
  object. You can retrieve this ARN by calling ListRepositoryAssociations. A code review can
  only be created on an associated repository. This is the ARN of the associated repository.
- `type`: The type of code review to create. This is specified using a CodeReviewType
  object. You can create a code review only of type RepositoryAnalysis.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ClientRequestToken"`: Amazon CodeGuru Reviewer uses this value to prevent the
  accidental creation of duplicate code reviews if there are failures and retries.
"""
create_code_review(
    Name, RepositoryAssociationArn, Type; aws_config::AbstractAWSConfig=global_aws_config()
) = codeguru_reviewer(
    "POST",
    "/codereviews",
    Dict{String,Any}(
        "Name" => Name,
        "RepositoryAssociationArn" => RepositoryAssociationArn,
        "Type" => Type,
        "ClientRequestToken" => string(uuid4()),
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_code_review(
    Name,
    RepositoryAssociationArn,
    Type,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codeguru_reviewer(
        "POST",
        "/codereviews",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "Name" => Name,
                    "RepositoryAssociationArn" => RepositoryAssociationArn,
                    "Type" => Type,
                    "ClientRequestToken" => string(uuid4()),
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_code_review(code_review_arn)
    describe_code_review(code_review_arn, params::Dict{String,<:Any})

Returns the metadata associated with the code review along with its status.

# Arguments
- `code_review_arn`: The Amazon Resource Name (ARN) of the CodeReview object.

"""
describe_code_review(CodeReviewArn; aws_config::AbstractAWSConfig=global_aws_config()) =
    codeguru_reviewer(
        "GET",
        "/codereviews/$(CodeReviewArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function describe_code_review(
    CodeReviewArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codeguru_reviewer(
        "GET",
        "/codereviews/$(CodeReviewArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_recommendation_feedback(code_review_arn, recommendation_id)
    describe_recommendation_feedback(code_review_arn, recommendation_id, params::Dict{String,<:Any})

Describes the customer feedback for a CodeGuru Reviewer recommendation.

# Arguments
- `code_review_arn`: The Amazon Resource Name (ARN) of the CodeReview object.
- `recommendation_id`: The recommendation ID that can be used to track the provided
  recommendations and then to collect the feedback.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"UserId"`: Optional parameter to describe the feedback for a given user. If this is not
  supplied, it defaults to the user making the request.  The UserId is an IAM principal that
  can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For
  more information, see  Specifying a Principal in the Amazon Web Services Identity and
  Access Management User Guide.
"""
describe_recommendation_feedback(
    CodeReviewArn, RecommendationId; aws_config::AbstractAWSConfig=global_aws_config()
) = codeguru_reviewer(
    "GET",
    "/feedback/$(CodeReviewArn)",
    Dict{String,Any}("RecommendationId" => RecommendationId);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function describe_recommendation_feedback(
    CodeReviewArn,
    RecommendationId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codeguru_reviewer(
        "GET",
        "/feedback/$(CodeReviewArn)",
        Dict{String,Any}(
            mergewith(
                _merge, Dict{String,Any}("RecommendationId" => RecommendationId), params
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_repository_association(association_arn)
    describe_repository_association(association_arn, params::Dict{String,<:Any})

Returns a RepositoryAssociation object that contains information about the requested
repository association.

# Arguments
- `association_arn`: The Amazon Resource Name (ARN) of the RepositoryAssociation object.
  You can retrieve this ARN by calling ListRepositoryAssociations.

"""
describe_repository_association(
    AssociationArn; aws_config::AbstractAWSConfig=global_aws_config()
) = codeguru_reviewer(
    "GET",
    "/associations/$(AssociationArn)";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function describe_repository_association(
    AssociationArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codeguru_reviewer(
        "GET",
        "/associations/$(AssociationArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    disassociate_repository(association_arn)
    disassociate_repository(association_arn, params::Dict{String,<:Any})

Removes the association between Amazon CodeGuru Reviewer and a repository.

# Arguments
- `association_arn`: The Amazon Resource Name (ARN) of the RepositoryAssociation object.
  You can retrieve this ARN by calling ListRepositoryAssociations.

"""
disassociate_repository(AssociationArn; aws_config::AbstractAWSConfig=global_aws_config()) =
    codeguru_reviewer(
        "DELETE",
        "/associations/$(AssociationArn)";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function disassociate_repository(
    AssociationArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codeguru_reviewer(
        "DELETE",
        "/associations/$(AssociationArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_code_reviews(type)
    list_code_reviews(type, params::Dict{String,<:Any})

Lists all the code reviews that the customer has created in the past 90 days.

# Arguments
- `type`: The type of code reviews to list in the response.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results that are returned per call. The default is
  100.
- `"NextToken"`: If nextToken is returned, there are more results available. The value of
  nextToken is a unique pagination token for each page. Make the call again using the
  returned token to retrieve the next page. Keep all other arguments unchanged.
- `"ProviderTypes"`: List of provider types for filtering that needs to be applied before
  displaying the result. For example, providerTypes=[GitHub] lists code reviews from GitHub.
- `"RepositoryNames"`: List of repository names for filtering that needs to be applied
  before displaying the result.
- `"States"`: List of states for filtering that needs to be applied before displaying the
  result. For example, states=[Pending] lists code reviews in the Pending state. The valid
  code review states are:    Completed: The code review is complete.    Pending: The code
  review started and has not completed or failed.    Failed: The code review failed.
  Deleting: The code review is being deleted.
"""
list_code_reviews(Type; aws_config::AbstractAWSConfig=global_aws_config()) =
    codeguru_reviewer(
        "GET",
        "/codereviews",
        Dict{String,Any}("Type" => Type);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function list_code_reviews(
    Type, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codeguru_reviewer(
        "GET",
        "/codereviews",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Type" => Type), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_recommendation_feedback(code_review_arn)
    list_recommendation_feedback(code_review_arn, params::Dict{String,<:Any})

Returns a list of RecommendationFeedbackSummary objects that contain customer
recommendation feedback for all CodeGuru Reviewer users.

# Arguments
- `code_review_arn`: The Amazon Resource Name (ARN) of the CodeReview object.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results that are returned per call. The default is
  100.
- `"NextToken"`: If nextToken is returned, there are more results available. The value of
  nextToken is a unique pagination token for each page. Make the call again using the
  returned token to retrieve the next page. Keep all other arguments unchanged.
- `"RecommendationIds"`: Used to query the recommendation feedback for a given
  recommendation.
- `"UserIds"`: An Amazon Web Services user's account ID or Amazon Resource Name (ARN). Use
  this ID to query the recommendation feedback for a code review from that user.  The UserId
  is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon
  Resource Name (ARN). For more information, see  Specifying a Principal in the Amazon Web
  Services Identity and Access Management User Guide.
"""
list_recommendation_feedback(
    CodeReviewArn; aws_config::AbstractAWSConfig=global_aws_config()
) = codeguru_reviewer(
    "GET",
    "/feedback/$(CodeReviewArn)/RecommendationFeedback";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function list_recommendation_feedback(
    CodeReviewArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codeguru_reviewer(
        "GET",
        "/feedback/$(CodeReviewArn)/RecommendationFeedback",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_recommendations(code_review_arn)
    list_recommendations(code_review_arn, params::Dict{String,<:Any})

Returns the list of all recommendations for a completed code review.

# Arguments
- `code_review_arn`: The Amazon Resource Name (ARN) of the CodeReview object.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of results that are returned per call. The default is
  100.
- `"NextToken"`: Pagination token.
"""
list_recommendations(CodeReviewArn; aws_config::AbstractAWSConfig=global_aws_config()) =
    codeguru_reviewer(
        "GET",
        "/codereviews/$(CodeReviewArn)/Recommendations";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function list_recommendations(
    CodeReviewArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codeguru_reviewer(
        "GET",
        "/codereviews/$(CodeReviewArn)/Recommendations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_repository_associations()
    list_repository_associations(params::Dict{String,<:Any})

Returns a list of RepositoryAssociationSummary objects that contain summary information
about a repository association. You can filter the returned list by ProviderType, Name,
State, and Owner.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MaxResults"`: The maximum number of repository association results returned by
  ListRepositoryAssociations in paginated output. When this parameter is used,
  ListRepositoryAssociations only returns maxResults results in a single page with a
  nextToken response element. The remaining results of the initial request can be seen by
  sending another ListRepositoryAssociations request with the returned nextToken value. This
  value can be between 1 and 100. If this parameter is not used, ListRepositoryAssociations
  returns up to 100 results and a nextToken value if applicable.
- `"Name"`: List of repository names to use as a filter.
- `"NextToken"`: The nextToken value returned from a previous paginated
  ListRepositoryAssociations request where maxResults was used and the results exceeded the
  value of that parameter. Pagination continues from the end of the previous results that
  returned the nextToken value.   Treat this token as an opaque identifier that is only used
  to retrieve the next items in a list and not for other programmatic purposes.
- `"Owner"`: List of owners to use as a filter. For Amazon Web Services CodeCommit, it is
  the name of the CodeCommit account that was used to associate the repository. For other
  repository source providers, such as Bitbucket and GitHub Enterprise Server, this is name
  of the account that was used to associate the repository.
- `"ProviderType"`: List of provider types to use as a filter.
- `"State"`: List of repository association states to use as a filter. The valid repository
  association states are:    Associated: The repository association is complete.
  Associating: CodeGuru Reviewer is:   Setting up pull request notifications. This is
  required for pull requests to trigger a CodeGuru Reviewer review.  If your repository
  ProviderType is GitHub, GitHub Enterprise Server, or Bitbucket, CodeGuru Reviewer creates
  webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these
  webhooks, reviews of code in your repository cannot be triggered.    Setting up source code
  access. This is required for CodeGuru Reviewer to securely clone code in your repository.
     Failed: The repository failed to associate or disassociate.    Disassociating: CodeGuru
  Reviewer is removing the repository's pull request notifications and source code access.
  Disassociated: CodeGuru Reviewer successfully disassociated the repository. You can create
  a new association with this repository if you want to review source code in it later. You
  can control access to code reviews created in anassociated repository with tags after it
  has been disassociated. For more information, see Using tags to control access to
  associated repositories in the Amazon CodeGuru Reviewer User Guide.
"""
list_repository_associations(; aws_config::AbstractAWSConfig=global_aws_config()) =
    codeguru_reviewer(
        "GET", "/associations"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
function list_repository_associations(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codeguru_reviewer(
        "GET",
        "/associations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_resource(resource_arn)
    list_tags_for_resource(resource_arn, params::Dict{String,<:Any})

Returns the list of tags associated with an associated repository resource.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the RepositoryAssociation object. You
  can retrieve this ARN by calling ListRepositoryAssociations.

"""
list_tags_for_resource(resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) =
    codeguru_reviewer(
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
    return codeguru_reviewer(
        "GET",
        "/tags/$(resourceArn)",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    put_recommendation_feedback(code_review_arn, reactions, recommendation_id)
    put_recommendation_feedback(code_review_arn, reactions, recommendation_id, params::Dict{String,<:Any})

Stores customer feedback for a CodeGuru Reviewer recommendation. When this API is called
again with different reactions the previous feedback is overwritten.

# Arguments
- `code_review_arn`: The Amazon Resource Name (ARN) of the CodeReview object.
- `reactions`: List for storing reactions. Reactions are utf-8 text code for emojis. If you
  send an empty list it clears all your feedback.
- `recommendation_id`: The recommendation ID that can be used to track the provided
  recommendations and then to collect the feedback.

"""
put_recommendation_feedback(
    CodeReviewArn,
    Reactions,
    RecommendationId;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = codeguru_reviewer(
    "PUT",
    "/feedback",
    Dict{String,Any}(
        "CodeReviewArn" => CodeReviewArn,
        "Reactions" => Reactions,
        "RecommendationId" => RecommendationId,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function put_recommendation_feedback(
    CodeReviewArn,
    Reactions,
    RecommendationId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codeguru_reviewer(
        "PUT",
        "/feedback",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "CodeReviewArn" => CodeReviewArn,
                    "Reactions" => Reactions,
                    "RecommendationId" => RecommendationId,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    tag_resource(tags, resource_arn)
    tag_resource(tags, resource_arn, params::Dict{String,<:Any})

Adds one or more tags to an associated repository.

# Arguments
- `tags`: An array of key-value pairs used to tag an associated repository. A tag is a
  custom attribute label with two parts:   A tag key (for example, CostCenter, Environment,
  Project, or Secret). Tag keys are case sensitive.   An optional field known as a tag value
  (for example, 111122223333, Production, or a team name). Omitting the tag value is the same
  as using an empty string. Like tag keys, tag values are case sensitive.
- `resource_arn`: The Amazon Resource Name (ARN) of the RepositoryAssociation object. You
  can retrieve this ARN by calling ListRepositoryAssociations.

"""
tag_resource(Tags, resourceArn; aws_config::AbstractAWSConfig=global_aws_config()) =
    codeguru_reviewer(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}("Tags" => Tags);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function tag_resource(
    Tags,
    resourceArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codeguru_reviewer(
        "POST",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("Tags" => Tags), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_resource(resource_arn, tag_keys)
    untag_resource(resource_arn, tag_keys, params::Dict{String,<:Any})

Removes a tag from an associated repository.

# Arguments
- `resource_arn`: The Amazon Resource Name (ARN) of the RepositoryAssociation object. You
  can retrieve this ARN by calling ListRepositoryAssociations.
- `tag_keys`: A list of the keys for each tag you want to remove from an associated
  repository.

"""
untag_resource(resourceArn, tagKeys; aws_config::AbstractAWSConfig=global_aws_config()) =
    codeguru_reviewer(
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
    return codeguru_reviewer(
        "DELETE",
        "/tags/$(resourceArn)",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("tagKeys" => tagKeys), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
