#!/bin/sh

# Start WireMock in the background
java -jar wiremock-standalone-3.5.3.jar --port 8080 &
wiremock_pid=$!

# Wait for WireMock to become available
while ! curl -s http://localhost:8080 >/dev/null; do
    sleep 1
done

# Run scripts from the stub folders
# Example scripts (replace these with actual scripts you need to run)
sh /wiremock/stubs_folder1/script.sh
sh /wiremock/stubs_folder2/script.sh

# Keep the script running to keep the container alive unless WireMock exits
wait $wiremock_pid