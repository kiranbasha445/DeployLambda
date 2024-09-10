bash
#!/bin/bash
# Fail on any error
set -e

# Navigate to the Lambda directory
cd HelloLambda/

# Install dependencies
echo "Installing dependencies..."
npm install

# Run tests
echo "Running tests..."
npm run test

# Build the TypeScript code
echo "Building the Lambda function..."
npm run build

# Package the Lambda function into a zip file
echo "Packaging Lambda function..."
zip -r lambda.zip dist/ index.test.ts

# Move zip to the root directory for deployment
mv lambda.zip ..

echo "Build and packaging complete. Lambda.zip is ready for deployment."