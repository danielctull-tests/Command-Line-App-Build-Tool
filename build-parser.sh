CONFIG="Debug"
OUTPUT="${BUILD_DIR}/$CONFIG-parser"
TEMP_OUTPUT="${PROJECT_TEMP_DIR}/$CONFIG-parser"
PARSER_NAME="Parser"
PARSER="${OUTPUT}/${PARSER_NAME}"

xcodebuild -project App.xcodeproj -scheme "$PARSER_NAME" -destination "platform=OS X,arch=x86_64" -configuration "$CONFIG" CONFIGURATION_BUILD_DIR="$OUTPUT" CONFIGURATION_TEMP_DIR="$TEMP_OUTPUT" -showBuildSettings
xcodebuild -project App.xcodeproj -scheme "$PARSER_NAME" -configuration "$CONFIG" CONFIGURATION_BUILD_DIR="$OUTPUT" CONFIGURATION_TEMP_DIR="$TEMP_OUTPUT"

"${PARSER}"
