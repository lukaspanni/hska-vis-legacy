# k8s

To run using kubernetes, local images have to be built first.
To do that run the script `build-images.sh`.
This script will build all needed containers for running the application using `kubectl apply -f microservices.yaml`

After startup, the application is available at http://localhost/.
The category-service will be available at `/categories/` and the products service at `/products/`

# istio

For using istio, a second config file `istio-gateway.yaml` has to be applied using kubectl apply.
This creates a ingress gateway and a virtual service that forwards traffic based on the url to the categories and products services.
