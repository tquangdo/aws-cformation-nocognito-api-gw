CF_STACK_NAME="cognito-api-gateway"
ACCOUNT_ID=$(aws sts get-caller-identity --query 'Account' --output text)
STACK_REGION=$(aws configure get region)
S3_BUCKET_NAME="${CF_STACK_NAME}-${ACCOUNT_ID}-${STACK_REGION}-lambdas"
aws s3 cp ./cf-lambdas/pets-api.zip s3://$S3_BUCKET_NAME