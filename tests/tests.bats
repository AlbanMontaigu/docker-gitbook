#!/usr/bin/env bats

# =======================================================================
#
# Testing the project
#
# @see https://github.com/sstephenson/bats
# @see https://blog.engineyard.com/2014/bats-test-command-line-tools
#
# =======================================================================

# Test gitbook version
@test "Gitbook version is ${GITBOOK_VERSION}" {
	result="$(docker run ${DOCKER_APP_IMAGE_NAME} gitbook -V)"
	[[ "$result" == *"GitBook version: ${GITBOOK_VERSION}"* ]]
}
