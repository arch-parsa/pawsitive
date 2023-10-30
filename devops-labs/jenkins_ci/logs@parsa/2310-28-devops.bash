W1028 19:32:04.090779    8594 warnings.go:70] autopilot-default-resources-mutator:Autopilot updated StatefulSet default/devops-tools-jenkins: defaulted unspecified resources for containers [config-reload-init, config-reload] (see http://g.co/gke/autopilot-defaults), and adjusted resources to meet requirements for containers [init, jenkins] (see http://g.co/gke/autopilot-resources)
NAME: devops-tools
LAST DEPLOYED: Sat Oct 28 19:31:37 2023
NAMESPACE: default
STATUS: deployed
REVISION: 1
NOTES:
1. Get your 'admin' user password by running:
  kubectl exec --namespace default -it svc/devops-tools-jenkins -c jenkins -- /bin/cat /run/secrets/additional/chart-admin-password && echo
2. Get the Jenkins URL to visit by running these commands in the same shell:
  echo http://127.0.0.1:8080
  kubectl --namespace default port-forward svc/devops-tools-jenkins 8080:8080

3. Login with the password from step 1 and the username: admin
4. Configure security realm and authorization strategy
5. Use Jenkins Configuration as Code by specifying configScripts in your values.yaml file, see documentation: http://127.0.0.1:8080/configuration-as-code and examples: https://github.com/jenkinsci/configuration-as-code-plugin/tree/master/demos

For more information on running Jenkins on Kubernetes, visit:
https://cloud.google.com/solutions/jenkins-on-container-engine

For more information about Jenkins Configuration as Code, visit:
https://jenkins.io/projects/jcasc/


NOTE: Consider using a custom image with pre-installed plugins
