CF_STACK_NAME="cognito-api-gateway"
ACCOUNT_ID=$(aws sts get-caller-identity --query 'Account' --output text)
STACK_REGION=$(aws configure get region)
S3_BUCKET_NAME="${CF_STACK_NAME}-${ACCOUNT_ID}-${STACK_REGION}-lambdas"
aws cloudformation deploy --template-file ./infrastructure/api-resource.yaml \
     --stack-name $CF_STACK_NAME \
     --s3-bucket $S3_BUCKET_NAME \
     --s3-prefix cfn \
     --capabilities CAPABILITY_NAMED_IAM