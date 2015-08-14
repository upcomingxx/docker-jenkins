if [ -z "$1" ]; then
    echo "Container id was not specified."
    exit 1
fi

RUNNING=$(docker inspect --format="{{.State.Running}}" $1)

if [ $? -ne 0 ]; then
  echo "The container $1 does not exist."
  exit 1
fi

if [ "$RUNNING" = "false" ]; then
  echo "The container $1 is not running."
  exit 2
fi

if [ "$RUNNING" = "true" ]; then
  echo "The container $1 is running."
  exit 3
fi
