[x] Added **Vagrantfile** for start application in predefined environment (with automation and port-forwarding)
[x] Added **Dockerfile** for hosting application
[x] Implement **Chef recipe** [integration/vagrant-chef] and **Ansible playbook** [integration/vagrant-ansible] to automate host before start application
[x] Implement **CI/CD github pipeline** to verify, build and deploy application into docker [.github/workflows/docker-image.yml]
[x] Fixed [karma.conf.js](karma.conf.js) and [e2e/protractor.conf.js](e2e/protractor.conf.js) to use Chrome in headless mode
[x] Added to [src/app/app.component.html](src/app/app.component.html) word `<span>hello-spa app is running!</span>` to fixed one of Test Case in [src/app/app.component.spec.ts](src/app/app.component.spec.ts)