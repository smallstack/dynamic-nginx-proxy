FROM nginx

ENV WORKING_DIRECTORY /opt/work 
ADD nginx.conf $WORKING_DIRECTORY
ADD replace_env_and_run.sh $WORKING_DIRECTORY

ENTRYPOINT bash $WORKING_DIRECTORY/replace_env_and_run.sh