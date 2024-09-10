bash
#!/bin/bash
# Fail on any error
set -e

# Check if the build is successful before release
BUILD_STATUS=$(aws codebuild batch-get-builds --ids my-build-id --query 'builds[0].buildStatus' --output text)

if [ "$BUILD_STATUS" == "SUCCEEDED" ]; then
  echo "Build succeeded, proceeding with Lambda deployment."

  # Deploy Lambda using AWS CloudFormation or directly using AWS CLI
  echo "Deploying Lambda function..."
  aws lambda update-function-code \
    --function-name myLambdaFunction \
    --zip-file fileb://lambda.zip

  echo "Lambda function deployed successfully."

else
  echo "Build failed, stopping deployment."
  exit 1
fi