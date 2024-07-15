variable "tools" {
  default = {

    vault = {
      name          = "vault"
      instance_type = "t3.small"
      port_no = {
        vault = 8200
      }
      policy_actions = []
    }

    prometheus = {
      name          = "prometheus"
      instance_type = "t3.small"
      port_no = {
        prometheus   = 9090
        alertmanager = 9093
      }
      policy_actions = [
        "ec2:DescribeInstances",
        "ec2:DescribeAvailabilityZones"
      ]
    }

    grafana = {
      name          = "grafana"
      instance_type = "t3.small"
      port_no = {
        grafana = 3000
      }
      policy_actions = []
    }

    elk = {
      name          = "elk"
      instance_type = "r7a.large"
      port_no = {
        kibana = 80
        logstash = 5044
      }
      policy_actions = []
    }

    ci-server = {
      name          = "ci-server"
      instance_type = "t3.small"
      port_no = {}
      policy_actions = [
        "ecr:*",
        "eks:DescribeCluster",
        "inspector2:ListCoverage",
        "inspector2:ListFindings"
      ]
    }

    sonarqube = {
      name          = "sonarqube"
      instance_type = "r7a.large"
      port_no = {
        sonarqube = 9000
      }
      policy_actions = [

      ]
    }

  }
}

