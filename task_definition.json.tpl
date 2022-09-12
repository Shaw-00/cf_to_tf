[
  {
    "Name": "rengo-dev-docker",
    "Image": {
      "Ref": "DockerImageURL"
    },
    "Memory": 300,
    "Cpu": 256,
    "Essential": true,
    "PortMappings": [
      {
        "ContainerPort": 3000,
        "HostPort": 80,
        "Protocol": "tcp"
      }
    ],
    "Environment": [
      {
        "Name": "PORT",
        "Value": "3000"
      },
      {
        "Name": "DB_PORT",
        "Value": "{{resolve:ssm:/rengo-dev/db_port:1}}"
      },
      {
        "Name": "DB_HOST",
        "Value": "{{resolve:ssm:/rengo-dev/db_host:1}}"
      },
      {
        "Name": "DB_NAME",
        "Value": "{{resolve:ssm:/rengo-dev/db_name:1}}"
      },
      {
        "Name": "DB_USER",
        "Value": "{{resolve:ssm:/rengo-dev/db_user:1}}" },
      {
        "Name": "DB_PASS",
        "Value": "{{resolve:ssm:/rengo-dev/db_pass:1}}"
      },
      {
        "Name": "AWS_ACCESS_KEY_SECRET",
        "Value": "{{resolve:ssm:/rengo-dev/aws_access_key_secret:1}}"
      },
      {
        "Name": "AWS_ACCESS_KEY",
        "Value": "{{resolve:ssm:/rengo-dev/aws_access_key:1}}"
      },
      {
        "Name": "AWS_BUCKET",
        "Value": "{{resolve:ssm:/rengo-dev/aws_bucket:1}}"
      },
      {
        "Name": "CURRENT_ENV",
        "Value": "{{resolve:ssm:/rengo-dev/current_env:1}}"
      }
    ],
    "LogConfiguration": {
      "LogDriver": "awslogs",
      "Options": {
        "awslogs-group": "rengo-dev-logs",
        "awslogs-region": "eu-west-3",
        "awslogs-stream-prefix": "rengo-dev-"
      }
    }
  }
]



