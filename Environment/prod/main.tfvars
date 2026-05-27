dns_domain = "mohdshuja.com."
env        = "prof"
vpc_id     = "vpc-05f40aba9acea42ad"
subnets    = ["subnet-0242f46eea951417e", "subnet-09bb41f51cb89a526"]

databases = {
  postgresql = {
    allocated_storage = 10
  }
}

apps = {

  frontend = {
    instance_type = "t3.small"
    ports = {
      frontend = 80
    }
    lb = {
      port        = 80
      lb_internal = false
    }
    asg = {
      min_size = 2
      max_size = 10
    }
  }

  auth-service = {
    instance_type = "t3.small"
    ports = {
      auth-service = 8081
    }
    lb = {
      port        = 8081
      lb_internal = true
    }
    asg = {
      min_size = 2
      max_size = 10
    }
  }

  portfolio-service = {
    instance_type = "t3.small"
    ports = {
      portfolio-service = 8080
    }
    lb = {
      port        = 8080
      lb_internal = true
    }
    asg = {
      min_size = 2
      max_size = 10
    }
  }

  analytics-service = {
    instance_type = "t3.small"
    ports = {
      analytics-service = 8000
    }
    lb = {
      port        = 8000
      lb_internal = true
    }
    asg = {
      min_size = 2
      max_size = 10
    }
  }

}