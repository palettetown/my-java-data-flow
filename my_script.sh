gcloud dataflow flex-template build gs://bkt-tf-chrisyue3/df-tmpl-java.json \
 --image-gcr-path "us-central1-docker.pkg.dev/my-second-project-418213/my-docker-repo/df-tmpl-image:latest" \
 --sdk-language "JAVA" \
 --flex-template-base-image JAVA17 \
 --metadata-file "metadata.json" \
 --env FLEX_TEMPLATE_JAVA_MAIN_CLASS="com.example.dataflow.FlexTemplateGettingStarted"