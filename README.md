# Gitlab CI pipeline for sonar scanner and docker vulnerability scan using trivy.

- SONAR_HOST and SONARQUBE_TOKEN should configure on GITLAB CI Environment variables

Following line setup for Fail CI pipeline on severe vulnerabilities 

```
./trivy -d --cache-dir .trivycache/ image --exit-code 1 --no-progress --severity CRITICAL $IMAGE_NAME
```

if you need to bypass it , modify "exit-code" to 0 for continue pipeline

```
./trivy -d --cache-dir .trivycache/ image --exit-code 0 --no-progress --severity CRITICAL $IMAGE_NAME
```

- Docker file is created for Nodejs application (container/danlix_devapp.Dockerfile)
