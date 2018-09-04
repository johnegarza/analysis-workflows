#a helper docker image, used to pre-populate a shared volume with data necessary to run cromwell in a portable environment
#minimal unix utilities- https://hub.docker.com/r/library/busybox/
FROM busybox
MAINTAINER John Garza <johnegarza@wustl.edu>
#copy the contents of the workflow's source repository into the container
COPY . /repo_data
WORKDIR /repo_data
#make the folder where cromwell data will be stored
RUN mkdir cromwell-executions
#Instructions for use:
# docker run -v $data_volume_name:/repo_data $name_of_this_image
# $data_volume_name now contains all repo contents and a directory for cromwell to write to
