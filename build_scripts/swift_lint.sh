if [ "${CONFIGURATION}" = "Debug" ]; then
  echo "Swift Lint started"
  Pods/SwiftLint/swiftlint --quiet --path "${1:-.}"
  if [ $? -ne 0 ];
  then
    echo "Swift Lint check failed"
    exit 1
  else
    echo "Swift Lint finished"
    exit 0
  fi
fi
