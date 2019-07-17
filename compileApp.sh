
sed $'s/\r$//' ./gradlew > ./gradlew.Unix
./gradlew.Unix build