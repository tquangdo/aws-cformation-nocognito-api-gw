CF_STACK_NAME="cognito-api-gateway"
API_URL=$(aws cloudformation describe-stacks \
    --stack-name ${CF_STACK_NAME} \
    --query 'Stacks[0].Outputs[0].OutputValue' --output text)
echo "${API_URL}"
API_URL=$(aws cloudformation describe-stacks \
    --stack-name ${CF_STACK_NAME} \
    --query 'Stacks[0].Outputs[1].OutputValue' --output text)
echo "${API_URL}"