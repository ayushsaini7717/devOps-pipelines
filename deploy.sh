#!/bin/bash

# --- Deployment Script (Simulated) ---

# Check if the artifact folder (dist) exists, which verifies the download action
if [ ! -d "dist" ]; then
  echo "ERROR: The built artifact (dist folder) was not successfully downloaded."
  exit 1
fi

echo "--- DEPLOYMENT REPORT ---"
echo "Deployment triggered by user: $GITHUB_ACTOR"
echo "Commit SHA: $GITHUB_SHA"
echo "Deploying the built artifact from the 'dist/' folder to STAGING server..."
cat dist/app-version.txt # Prove we deployed the file from the artifact
echo "Deployment to STAGING environment simulated successfully! ✅"
