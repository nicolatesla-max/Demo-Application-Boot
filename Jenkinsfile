node {

    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {

        def customImage = docker.build("ravindranallamothu/docker-welcome-app")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
