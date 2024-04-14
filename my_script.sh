cp /usr/src/app/target/flex-template-getting-started-1.0.jar .

gcloud dataflow flex-template build gs://bkt-tf-chrisyue3/df-tmpl-java.json \
 --image-gcr-path "us-central1-docker.pkg.dev/august-water-417802/my-docker-repo/df-tmpl-image:latest" \
 --sdk-language "JAVA" \
 --flex-template-base-image JAVA17 \
 --metadata-file "metadata.json" \
 --jar "./flex-template-getting-started-1.0.jar" \
 --env FLEX_TEMPLATE_JAVA_MAIN_CLASS="com.example.dataflow.FlexTemplateGettingStarted"