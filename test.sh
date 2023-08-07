#!/bin/bash

# BUCKET_NAME=app-artifact-wfwefew

# app_url=$(aws s3 presign s3://${BUCKET_NAME}/test.sh --expires-in 300)

# echo $app_url


# CURRENT_PROJECT_VERSION="0.1.0-beta.5"
# RELEASE_VERSION="0.1.0"

# if [[ $CURRENT_PROJECT_VERSION == *"${RELEASE_VERSION##v}"* ]]; then
#     echo "Current project version includes the release version."
# else
#     echo "Current project version does not include the release version."
# fi


# ! ct-156-v0.1.0



RELEASE_VERSION="0.1.0" # in the branch name

# if [$CURRENT_PROJECT_VERSION == RELEASE_VERSION ] &&


# if [[ $CURRENT_PROJECT_VERSION == *"${RELEASE_VERSION##v}"* ]   ]; then
#   echo "Current project version includes the release version."
# fi




# RELEASE_TAG="ct-156-v0.1.0"



# TAG_PREFIX="ct-156-v"

# # echo $TAG_PREFIX

# # tag_name=$RELEASE_TAG

# if git rev-parse "$TAG_PREFIX$RELEASE_VERSION" >/dev/null 2>&1; then
#   echo "Error: Some condition failed." >&2
#   exit 1
# fi

CURRENT_PROJECT_VERSION="0.1.0-rc.2"
IS_BETA_RC_BUILD=false

# if [[ $CURRENT_PROJECT_VERSION == *"beta"* && "$IS_BETA_RC_BUILD" == false ]] && [[ $CURRENT_PROJECT_VERSION == *"beta"* || $CURRENT_PROJECT_VERSION == *"rc"* ]] ; then
#     echo "+ 1"
# else
#     echo "start from one"
# fi

if [[ $CURRENT_PROJECT_VERSION == *"rc"* ]] && [ $IS_BETA_RC_BUILD == false ] ; then
  echo "Error"
  exit 1
fi


if [[ $CURRENT_PROJECT_VERSION == *"rc"* ]] || ( [[ $CURRENT_PROJECT_VERSION == *"beta"* ]]  &&  [ $IS_BETA_RC_BUILD == false ] ) ; then
  echo "+1"
else
  echo "start from one"
fi

# if [ $IS_BETA_RC_BUILD == false ]; then
#   echo "start from one"
# fi