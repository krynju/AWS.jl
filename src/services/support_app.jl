# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: support_app
using AWS.Compat
using AWS.UUIDs

"""
    create_slack_channel_configuration(channel_id, channel_role_arn, notify_on_case_severity, team_id)
    create_slack_channel_configuration(channel_id, channel_role_arn, notify_on_case_severity, team_id, params::Dict{String,<:Any})

Creates a Slack channel configuration for your Amazon Web Services account.    You can add
up to 5 Slack workspaces for your account.   You can add up to 20 Slack channels for your
account.    A Slack channel can have up to 100 Amazon Web Services accounts. This means
that only 100 accounts can add the same Slack channel to the Amazon Web Services Support
App. We recommend that you only add the accounts that you need to manage support cases for
your organization. This can reduce the notifications about case updates that you receive in
the Slack channel.  We recommend that you choose a private Slack channel so that only
members in that channel have read and write access to your support cases. Anyone in your
Slack channel can create, update, or resolve support cases for your account. Users require
an invitation to join private channels.

# Arguments
- `channel_id`: The channel ID in Slack. This ID identifies a channel within a Slack
  workspace.
- `channel_role_arn`: The Amazon Resource Name (ARN) of an IAM role that you want to use to
  perform operations on Amazon Web Services. For more information, see Managing access to the
  Amazon Web Services Support App in the Amazon Web Services Support User Guide.
- `notify_on_case_severity`: The case severity for a support case that you want to receive
  notifications. If you specify high or all, you must specify true for at least one of the
  following parameters:    notifyOnAddCorrespondenceToCase     notifyOnCreateOrReopenCase
  notifyOnResolveCase    If you specify none, the following parameters must be null or false:
     notifyOnAddCorrespondenceToCase     notifyOnCreateOrReopenCase     notifyOnResolveCase
    If you don't specify these parameters in your request, they default to false.
- `team_id`: The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
  T012ABCDEFG.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"channelName"`: The name of the Slack channel that you configure for the Amazon Web
  Services Support App.
- `"notifyOnAddCorrespondenceToCase"`: Whether you want to get notified when a support case
  has a new correspondence.
- `"notifyOnCreateOrReopenCase"`: Whether you want to get notified when a support case is
  created or reopened.
- `"notifyOnResolveCase"`: Whether you want to get notified when a support case is resolved.
"""
create_slack_channel_configuration(
    channelId,
    channelRoleArn,
    notifyOnCaseSeverity,
    teamId;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = support_app(
    "POST",
    "/control/create-slack-channel-configuration",
    Dict{String,Any}(
        "channelId" => channelId,
        "channelRoleArn" => channelRoleArn,
        "notifyOnCaseSeverity" => notifyOnCaseSeverity,
        "teamId" => teamId,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function create_slack_channel_configuration(
    channelId,
    channelRoleArn,
    notifyOnCaseSeverity,
    teamId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return support_app(
        "POST",
        "/control/create-slack-channel-configuration",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "channelId" => channelId,
                    "channelRoleArn" => channelRoleArn,
                    "notifyOnCaseSeverity" => notifyOnCaseSeverity,
                    "teamId" => teamId,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_account_alias()
    delete_account_alias(params::Dict{String,<:Any})

Deletes an alias for an Amazon Web Services account ID. The alias appears in the Amazon Web
Services Support App page of the Amazon Web Services Support Center. The alias also appears
in Slack messages from the Amazon Web Services Support App.

"""
delete_account_alias(; aws_config::AbstractAWSConfig=global_aws_config()) = support_app(
    "POST",
    "/control/delete-account-alias";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_account_alias(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return support_app(
        "POST",
        "/control/delete-account-alias",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_slack_channel_configuration(channel_id, team_id)
    delete_slack_channel_configuration(channel_id, team_id, params::Dict{String,<:Any})

Deletes a Slack channel configuration from your Amazon Web Services account. This operation
doesn't delete your Slack channel.

# Arguments
- `channel_id`: The channel ID in Slack. This ID identifies a channel within a Slack
  workspace.
- `team_id`: The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
  T012ABCDEFG.

"""
delete_slack_channel_configuration(
    channelId, teamId; aws_config::AbstractAWSConfig=global_aws_config()
) = support_app(
    "POST",
    "/control/delete-slack-channel-configuration",
    Dict{String,Any}("channelId" => channelId, "teamId" => teamId);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_slack_channel_configuration(
    channelId,
    teamId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return support_app(
        "POST",
        "/control/delete-slack-channel-configuration",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("channelId" => channelId, "teamId" => teamId),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    delete_slack_workspace_configuration(team_id)
    delete_slack_workspace_configuration(team_id, params::Dict{String,<:Any})

Deletes a Slack workspace configuration from your Amazon Web Services account. This
operation doesn't delete your Slack workspace.

# Arguments
- `team_id`: The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
  T012ABCDEFG.

"""
delete_slack_workspace_configuration(
    teamId; aws_config::AbstractAWSConfig=global_aws_config()
) = support_app(
    "POST",
    "/control/delete-slack-workspace-configuration",
    Dict{String,Any}("teamId" => teamId);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function delete_slack_workspace_configuration(
    teamId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return support_app(
        "POST",
        "/control/delete-slack-workspace-configuration",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("teamId" => teamId), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    get_account_alias()
    get_account_alias(params::Dict{String,<:Any})

Retrieves the alias from an Amazon Web Services account ID. The alias appears in the Amazon
Web Services Support App page of the Amazon Web Services Support Center. The alias also
appears in Slack messages from the Amazon Web Services Support App.

"""
get_account_alias(; aws_config::AbstractAWSConfig=global_aws_config()) = support_app(
    "POST",
    "/control/get-account-alias";
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function get_account_alias(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return support_app(
        "POST",
        "/control/get-account-alias",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_slack_channel_configurations()
    list_slack_channel_configurations(params::Dict{String,<:Any})

Lists the Slack channel configurations for an Amazon Web Services account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"nextToken"`: If the results of a search are large, the API only returns a portion of
  the results and includes a nextToken pagination token in the response. To retrieve the next
  batch of results, reissue the search request and include the returned token. When the API
  returns the last set of results, the response doesn't include a pagination token value.
"""
list_slack_channel_configurations(; aws_config::AbstractAWSConfig=global_aws_config()) =
    support_app(
        "POST",
        "/control/list-slack-channel-configurations";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function list_slack_channel_configurations(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return support_app(
        "POST",
        "/control/list-slack-channel-configurations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    list_slack_workspace_configurations()
    list_slack_workspace_configurations(params::Dict{String,<:Any})

Lists the Slack workspace configurations for an Amazon Web Services account.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"nextToken"`: If the results of a search are large, the API only returns a portion of
  the results and includes a nextToken pagination token in the response. To retrieve the next
  batch of results, reissue the search request and include the returned token. When the API
  returns the last set of results, the response doesn't include a pagination token value.
"""
list_slack_workspace_configurations(; aws_config::AbstractAWSConfig=global_aws_config()) =
    support_app(
        "POST",
        "/control/list-slack-workspace-configurations";
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function list_slack_workspace_configurations(
    params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return support_app(
        "POST",
        "/control/list-slack-workspace-configurations",
        params;
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    put_account_alias(account_alias)
    put_account_alias(account_alias, params::Dict{String,<:Any})

Creates or updates an individual alias for each Amazon Web Services account ID. The alias
appears in the Amazon Web Services Support App page of the Amazon Web Services Support
Center. The alias also appears in Slack messages from the Amazon Web Services Support App.

# Arguments
- `account_alias`: An alias or short name for an Amazon Web Services account.

"""
put_account_alias(accountAlias; aws_config::AbstractAWSConfig=global_aws_config()) =
    support_app(
        "POST",
        "/control/put-account-alias",
        Dict{String,Any}("accountAlias" => accountAlias);
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
function put_account_alias(
    accountAlias,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return support_app(
        "POST",
        "/control/put-account-alias",
        Dict{String,Any}(
            mergewith(_merge, Dict{String,Any}("accountAlias" => accountAlias), params)
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    register_slack_workspace_for_organization(team_id)
    register_slack_workspace_for_organization(team_id, params::Dict{String,<:Any})

Registers a Slack workspace for your Amazon Web Services account. To call this API, your
account must be part of an organization in Organizations. If you're the management account
and you want to register Slack workspaces for your organization, you must complete the
following tasks:   Sign in to the Amazon Web Services Support Center and authorize the
Slack workspaces where you want your organization to have access to. See Authorize a Slack
workspace in the Amazon Web Services Support User Guide.   Call the
RegisterSlackWorkspaceForOrganization API to authorize each Slack workspace for the
organization.   After the management account authorizes the Slack workspace, member
accounts can call this API to authorize the same Slack workspace for their individual
accounts. Member accounts don't need to authorize the Slack workspace manually through the
Amazon Web Services Support Center. To use the Amazon Web Services Support App, each
account must then complete the following tasks:   Create an Identity and Access Management
(IAM) role with the required permission. For more information, see Managing access to the
Amazon Web Services Support App.   Configure a Slack channel to use the Amazon Web Services
Support App for support cases for that account. For more information, see Configuring a
Slack channel.

# Arguments
- `team_id`: The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
  T012ABCDEFG. Specify the Slack workspace that you want to use for your organization.

"""
register_slack_workspace_for_organization(
    teamId; aws_config::AbstractAWSConfig=global_aws_config()
) = support_app(
    "POST",
    "/control/register-slack-workspace-for-organization",
    Dict{String,Any}("teamId" => teamId);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function register_slack_workspace_for_organization(
    teamId, params::AbstractDict{String}; aws_config::AbstractAWSConfig=global_aws_config()
)
    return support_app(
        "POST",
        "/control/register-slack-workspace-for-organization",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("teamId" => teamId), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    update_slack_channel_configuration(channel_id, team_id)
    update_slack_channel_configuration(channel_id, team_id, params::Dict{String,<:Any})

Updates the configuration for a Slack channel, such as case update notifications.

# Arguments
- `channel_id`: The channel ID in Slack. This ID identifies a channel within a Slack
  workspace.
- `team_id`: The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
  T012ABCDEFG.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"channelName"`: The Slack channel name that you want to update.
- `"channelRoleArn"`: The Amazon Resource Name (ARN) of an IAM role that you want to use to
  perform operations on Amazon Web Services. For more information, see Managing access to the
  Amazon Web Services Support App in the Amazon Web Services Support User Guide.
- `"notifyOnAddCorrespondenceToCase"`: Whether you want to get notified when a support case
  has a new correspondence.
- `"notifyOnCaseSeverity"`: The case severity for a support case that you want to receive
  notifications. If you specify high or all, at least one of the following parameters must be
  true:    notifyOnAddCorrespondenceToCase     notifyOnCreateOrReopenCase
  notifyOnResolveCase    If you specify none, any of the following parameters that you
  specify in your request must be false:    notifyOnAddCorrespondenceToCase
  notifyOnCreateOrReopenCase     notifyOnResolveCase     If you don't specify these
  parameters in your request, the Amazon Web Services Support App uses the current values by
  default.
- `"notifyOnCreateOrReopenCase"`: Whether you want to get notified when a support case is
  created or reopened.
- `"notifyOnResolveCase"`: Whether you want to get notified when a support case is resolved.
"""
update_slack_channel_configuration(
    channelId, teamId; aws_config::AbstractAWSConfig=global_aws_config()
) = support_app(
    "POST",
    "/control/update-slack-channel-configuration",
    Dict{String,Any}("channelId" => channelId, "teamId" => teamId);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function update_slack_channel_configuration(
    channelId,
    teamId,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return support_app(
        "POST",
        "/control/update-slack-channel-configuration",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}("channelId" => channelId, "teamId" => teamId),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
