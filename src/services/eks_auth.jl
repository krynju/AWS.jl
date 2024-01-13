# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: eks_auth
using AWS.Compat
using AWS.UUIDs

"""
    assume_role_for_pod_identity(cluster_name, token)
    assume_role_for_pod_identity(cluster_name, token, params::Dict{String,<:Any})

The Amazon EKS Auth API and the AssumeRoleForPodIdentity action are only used by the EKS
Pod Identity Agent. We recommend that applications use the Amazon Web Services SDKs to
connect to Amazon Web Services services; if credentials from an EKS Pod Identity
association are available in the pod, the latest versions of the SDKs use them
automatically.

# Arguments
- `cluster_name`: The name of the cluster for the request.
- `token`: The token of the Kubernetes service account for the pod.

"""
assume_role_for_pod_identity(
    clusterName, token; aws_config::AbstractAWSConfig=global_aws_config()
) = eks_auth(
    "POST",
    "/clusters/$(clusterName)/assume-role-for-pod-identity",
    Dict{String,Any}("token" => token);
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function assume_role_for_pod_identity(
    clusterName,
    token,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return eks_auth(
        "POST",
        "/clusters/$(clusterName)/assume-role-for-pod-identity",
        Dict{String,Any}(mergewith(_merge, Dict{String,Any}("token" => token), params));
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
