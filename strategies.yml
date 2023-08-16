# <YOUR ACCOUNT NAME>
schemaVersion: vCurrent
clusters:
  - name: mybuilds
    region: <YOUR REGION>
    queueName: <YOUR-QUEUE-NAME>:cicd
    gitRepositories:
      - <THE SSH ADDRESS OF YOUR REPO>
    network:
      managedNetworkName: <THE MANAGED NETWORK YOUR ACCOUNT IS ENROLLED IN>
    instance:
      instanceSize: small
    managedPolicyArns:
      - <YOUR POLICY ARN>
    autoScaling:
      maxInstanceCount: 2
