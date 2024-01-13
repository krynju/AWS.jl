# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: codestar
using AWS.Compat
using AWS.UUIDs

"""
    associate_team_member(project_id, project_role, user_arn)
    associate_team_member(project_id, project_role, user_arn, params::Dict{String,<:Any})

Adds an IAM user to the team for an AWS CodeStar project.

# Arguments
- `project_id`: The ID of the project to which you will add the IAM user.
- `project_role`: The AWS CodeStar project role that will apply to this user. This role
  determines what actions a user can take in an AWS CodeStar project.
- `user_arn`: The Amazon Resource Name (ARN) for the IAM user you want to add to the AWS
  CodeStar project.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientRequestToken"`: A user- or system-generated token that identifies the entity that
  requested the team member association to the project. This token can be used to repeat the
  request.
- `"remoteAccessAllowed"`: Whether the team member is allowed to use an SSH public/private
  key pair to remotely access project resources, for example Amazon EC2 instances.
"""
associate_team_member(
    projectId, projectRole, userArn; aws_config::AbstractAWSConfig=global_aws_config()
) = codestar(
    "AssociateTeamMember",
    Dict{String,Any}(
        "projectId" => projectId, "projectRole" => projectRole, "userArn" => userArn
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function associate_team_member(
    projectId,
    projectRole,
    userArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codestar(
        "AssociateTeamMember",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "projectId" => projectId,
                    "projectRole" => projectRole,
                    "userArn" => userArn,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_project(id, name)
    create_project(id, name, params::Dict{String,<:Any})

Creates a project, including project resources. This action creates a project based on a
submitted project request. A set of source code files and a toolchain template file can be
included with the project request. If these are not provided, an empty project is created.

# Arguments
- `id`: The ID of the project to be created in AWS CodeStar.
- `name`: The display name for the project to be created in AWS CodeStar.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientRequestToken"`: A user- or system-generated token that identifies the entity that
  requested project creation. This token can be used to repeat the request.
- `"description"`: The description of the project, if any.
- `"sourceCode"`: A list of the Code objects submitted with the project request. If this
  parameter is specified, the request must also include the toolchain parameter.
- `"tags"`: The tags created for the project.
- `"toolchain"`: The name of the toolchain template file submitted with the project
  request. If this parameter is specified, the request must also include the sourceCode
  parameter.
"""
create_project(id, name; aws_config::AbstractAWSConfig=global_aws_config()) = codestar(
    "CreateProject",
    Dict{String,Any}("id" => id, "name" => name);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_project(
    id,
    name,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codestar(
        "CreateProject",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("id" => id, "name" => name), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    create_user_profile(display_name, email_address, user_arn)
    create_user_profile(display_name, email_address, user_arn, params::Dict{String,<:Any})

Creates a profile for a user that includes user preferences, such as the display name and
email address assocciated with the user, in AWS CodeStar. The user profile is not
project-specific. Information in the user profile is displayed wherever the user's
information appears to other users in AWS CodeStar.

# Arguments
- `display_name`: The name that will be displayed as the friendly name for the user in AWS
  CodeStar.
- `email_address`: The email address that will be displayed as part of the user's profile
  in AWS CodeStar.
- `user_arn`: The Amazon Resource Name (ARN) of the user in IAM.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"sshPublicKey"`: The SSH public key associated with the user in AWS CodeStar. If a
  project owner allows the user remote access to project resources, this public key will be
  used along with the user's private key for SSH access.
"""
create_user_profile(
    displayName, emailAddress, userArn; aws_config::AbstractAWSConfig=global_aws_config()
) = codestar(
    "CreateUserProfile",
    Dict{String,Any}(
        "displayName" => displayName,
        "emailAddress" => emailAddress,
        "userArn" => userArn,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_user_profile(
    displayName,
    emailAddress,
    userArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codestar(
        "CreateUserProfile",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "displayName" => displayName,
                    "emailAddress" => emailAddress,
                    "userArn" => userArn,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_project(id)
    delete_project(id, params::Dict{String,<:Any})

Deletes a project, including project resources. Does not delete users associated with the
project, but does delete the IAM roles that allowed access to the project.

# Arguments
- `id`: The ID of the project to be deleted in AWS CodeStar.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"clientRequestToken"`: A user- or system-generated token that identifies the entity that
  requested project deletion. This token can be used to repeat the request.
- `"deleteStack"`: Whether to send a delete request for the primary stack in AWS
  CloudFormation originally used to generate the project and its resources. This option will
  delete all AWS resources for the project (except for any buckets in Amazon S3) as well as
  deleting the project itself. Recommended for most use cases.
"""
delete_project(id; aws_config::AbstractAWSConfig=global_aws_config()) = codestar(
    "DeleteProject",
    Dict{String,Any}("id" => id);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_project(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codestar(
        "DeleteProject",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("id" => id), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_user_profile(user_arn)
    delete_user_profile(user_arn, params::Dict{String,<:Any})

Deletes a user profile in AWS CodeStar, including all personal preference data associated
with that profile, such as display name and email address. It does not delete the history
of that user, for example the history of commits made by that user.

# Arguments
- `user_arn`: The Amazon Resource Name (ARN) of the user to delete from AWS CodeStar.

"""
delete_user_profile(userArn; aws_config::AbstractAWSConfig=global_aws_config()) = codestar(
    "DeleteUserProfile",
    Dict{String,Any}("userArn" => userArn);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_user_profile(
    userArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codestar(
        "DeleteUserProfile",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("userArn" => userArn), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_project(id)
    describe_project(id, params::Dict{String,<:Any})

Describes a project and its resources.

# Arguments
- `id`: The ID of the project.

"""
describe_project(id; aws_config::AbstractAWSConfig=global_aws_config()) = codestar(
    "DescribeProject",
    Dict{String,Any}("id" => id);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function describe_project(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codestar(
        "DescribeProject",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("id" => id), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    describe_user_profile(user_arn)
    describe_user_profile(user_arn, params::Dict{String,<:Any})

Describes a user in AWS CodeStar and the user attributes across all projects.

# Arguments
- `user_arn`: The Amazon Resource Name (ARN) of the user.

"""
describe_user_profile(userArn; aws_config::AbstractAWSConfig=global_aws_config()) =
    codestar(
        "DescribeUserProfile",
        Dict{String,Any}("userArn" => userArn);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function describe_user_profile(
    userArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codestar(
        "DescribeUserProfile",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("userArn" => userArn), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    disassociate_team_member(project_id, user_arn)
    disassociate_team_member(project_id, user_arn, params::Dict{String,<:Any})

Removes a user from a project. Removing a user from a project also removes the IAM policies
from that user that allowed access to the project and its resources. Disassociating a team
member does not remove that user's profile from AWS CodeStar. It does not remove the user
from IAM.

# Arguments
- `project_id`: The ID of the AWS CodeStar project from which you want to remove a team
  member.
- `user_arn`: The Amazon Resource Name (ARN) of the IAM user or group whom you want to
  remove from the project.

"""
disassociate_team_member(
    projectId, userArn; aws_config::AbstractAWSConfig=global_aws_config()
) = codestar(
    "DisassociateTeamMember",
    Dict{String,Any}("projectId" => projectId, "userArn" => userArn);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function disassociate_team_member(
    projectId,
    userArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codestar(
        "DisassociateTeamMember",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("projectId" => projectId, "userArn" => userArn),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_projects()
    list_projects(params::Dict{String,<:Any})

Lists all projects in AWS CodeStar associated with your AWS account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum amount of data that can be contained in a single set of
  results.
- `"nextToken"`: The continuation token to be used to return the next set of results, if
  the results cannot be returned in one response.
"""
list_projects(; aws_config::AbstractAWSConfig=global_aws_config()) =
    codestar("ListProjects"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
function list_projects(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codestar(
        "ListProjects", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    list_resources(project_id)
    list_resources(project_id, params::Dict{String,<:Any})

Lists resources associated with a project in AWS CodeStar.

# Arguments
- `project_id`: The ID of the project.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum amount of data that can be contained in a single set of
  results.
- `"nextToken"`: The continuation token for the next set of results, if the results cannot
  be returned in one response.
"""
list_resources(projectId; aws_config::AbstractAWSConfig=global_aws_config()) = codestar(
    "ListResources",
    Dict{String,Any}("projectId" => projectId);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function list_resources(
    projectId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codestar(
        "ListResources",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("projectId" => projectId), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_tags_for_project(id)
    list_tags_for_project(id, params::Dict{String,<:Any})

Gets the tags for a project.

# Arguments
- `id`: The ID of the project to get tags for.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: Reserved for future use.
- `"nextToken"`: Reserved for future use.
"""
list_tags_for_project(id; aws_config::AbstractAWSConfig=global_aws_config()) = codestar(
    "ListTagsForProject",
    Dict{String,Any}("id" => id);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function list_tags_for_project(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codestar(
        "ListTagsForProject",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("id" => id), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_team_members(project_id)
    list_team_members(project_id, params::Dict{String,<:Any})

Lists all team members associated with a project.

# Arguments
- `project_id`: The ID of the project for which you want to list team members.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of team members you want returned in a response.
- `"nextToken"`: The continuation token for the next set of results, if the results cannot
  be returned in one response.
"""
list_team_members(projectId; aws_config::AbstractAWSConfig=global_aws_config()) = codestar(
    "ListTeamMembers",
    Dict{String,Any}("projectId" => projectId);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function list_team_members(
    projectId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codestar(
        "ListTeamMembers",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("projectId" => projectId), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_user_profiles()
    list_user_profiles(params::Dict{String,<:Any})

Lists all the user profiles configured for your AWS account in AWS CodeStar.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"maxResults"`: The maximum number of results to return in a response.
- `"nextToken"`: The continuation token for the next set of results, if the results cannot
  be returned in one response.
"""
list_user_profiles(; aws_config::AbstractAWSConfig=global_aws_config()) =
    codestar("ListUserProfiles"; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET)
function list_user_profiles(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codestar(
        "ListUserProfiles", params; aws_config=aws_config, feature_set=SERVICE_FEATURE_SET
    )
end

"""
    tag_project(id, tags)
    tag_project(id, tags, params::Dict{String,<:Any})

Adds tags to a project.

# Arguments
- `id`: The ID of the project you want to add a tag to.
- `tags`: The tags you want to add to the project.

"""
tag_project(id, tags; aws_config::AbstractAWSConfig=global_aws_config()) = codestar(
    "TagProject",
    Dict{String,Any}("id" => id, "tags" => tags);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function tag_project(
    id,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codestar(
        "TagProject",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("id" => id, "tags" => tags), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    untag_project(id, tags)
    untag_project(id, tags, params::Dict{String,<:Any})

Removes tags from a project.

# Arguments
- `id`: The ID of the project to remove tags from.
- `tags`: The tags to remove from the project.

"""
untag_project(id, tags; aws_config::AbstractAWSConfig=global_aws_config()) = codestar(
    "UntagProject",
    Dict{String,Any}("id" => id, "tags" => tags);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function untag_project(
    id,
    tags,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codestar(
        "UntagProject",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("id" => id, "tags" => tags), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_project(id)
    update_project(id, params::Dict{String,<:Any})

Updates a project in AWS CodeStar.

# Arguments
- `id`: The ID of the project you want to update.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"description"`: The description of the project, if any.
- `"name"`: The name of the project you want to update.
"""
update_project(id; aws_config::AbstractAWSConfig=global_aws_config()) = codestar(
    "UpdateProject",
    Dict{String,Any}("id" => id);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_project(
    id, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codestar(
        "UpdateProject",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("id" => id), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_team_member(project_id, user_arn)
    update_team_member(project_id, user_arn, params::Dict{String,<:Any})

Updates a team member's attributes in an AWS CodeStar project. For example, you can change
a team member's role in the project, or change whether they have remote access to project
resources.

# Arguments
- `project_id`: The ID of the project.
- `user_arn`: The Amazon Resource Name (ARN) of the user for whom you want to change team
  membership attributes.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"projectRole"`: The role assigned to the user in the project. Project roles have
  different levels of access. For more information, see Working with Teams in the AWS
  CodeStar User Guide.
- `"remoteAccessAllowed"`: Whether a team member is allowed to remotely access project
  resources using the SSH public key associated with the user's profile. Even if this is set
  to True, the user must associate a public key with their profile before the user can access
  resources.
"""
update_team_member(projectId, userArn; aws_config::AbstractAWSConfig=global_aws_config()) =
    codestar(
        "UpdateTeamMember",
        Dict{String,Any}("projectId" => projectId, "userArn" => userArn);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function update_team_member(
    projectId,
    userArn,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return codestar(
        "UpdateTeamMember",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("projectId" => projectId, "userArn" => userArn),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_user_profile(user_arn)
    update_user_profile(user_arn, params::Dict{String,<:Any})

Updates a user's profile in AWS CodeStar. The user profile is not project-specific.
Information in the user profile is displayed wherever the user's information appears to
other users in AWS CodeStar.

# Arguments
- `user_arn`: The name that will be displayed as the friendly name for the user in AWS
  CodeStar.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"displayName"`: The name that is displayed as the friendly name for the user in AWS
  CodeStar.
- `"emailAddress"`: The email address that is displayed as part of the user's profile in
  AWS CodeStar.
- `"sshPublicKey"`: The SSH public key associated with the user in AWS CodeStar. If a
  project owner allows the user remote access to project resources, this public key will be
  used along with the user's private key for SSH access.
"""
update_user_profile(userArn; aws_config::AbstractAWSConfig=global_aws_config()) = codestar(
    "UpdateUserProfile",
    Dict{String,Any}("userArn" => userArn);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_user_profile(
    userArn, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return codestar(
        "UpdateUserProfile",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("userArn" => userArn), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
