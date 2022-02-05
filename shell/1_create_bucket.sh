CF_STACK_NAME="cognito-api-gateway"
ACCOUNT_ID=$(aws sts get-caller-identity --query 'Account' --output text)
STACK_REGION=$(aws configure get region)
S3_BUCKET_NAME="${CF_STACK_NAME}-${ACCOUNT_ID}-${STACK_REGION}-lambdas"
aws s3api create-bucket \
      --bucket ${S3_BUCKET_NAME}