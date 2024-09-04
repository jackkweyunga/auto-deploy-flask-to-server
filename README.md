## Articles covered

- [Upload Docker Images to GitHub: A Simple Guide with GitHub Actions](https://jackkweyunga.hashnode.dev/upload-docker-images-to-github-a-simple-guide-with-github-actions)
- [How to Automate Deployment with Ansible and GitHub Actions](https://jackkweyunga.hashnode.dev/upload-docker-images-to-github-a-simple-guide-with-github-actions)


## Required Github Secrets.

* *SUDO_PASSWORD*: The password of the remote user
* *SSH_DEVOPS_KEY_PRIVATE*: The SSH private key with access to the remote server


## Operation

Whenever a new image is published, Watchtower will automatically pull the image into the server and continuously update the containers running the image.

